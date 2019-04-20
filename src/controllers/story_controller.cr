class StoryController < ApplicationController
  getter story = Story.new

  before_action do
    only [:show, :edit, :update, :destroy] { set_story }
  end

  def index
    stories = Story.where(user_id: current_user!.id)
    render "index.slang"
  end

  def show
    render "show.slang"
  end

  def new
    render "new.slang"
  end

  def edit
    render "edit.slang"
  end

  def create
    story = Story.new story_params.validate!.merge({ "user_id" => current_user!.id })
    if story.save
      redirect_to action: :index, flash: {"success" => "Created story successfully."}
    else
      flash[:danger] = "Could not create Story!"
      render "new.slang"
    end
  end

  def update
    story.set_attributes story_params.validate!
    if story.save
      redirect_to action: :index, flash: {"success" => "Updated story successfully."}
    else
      flash[:danger] = "Could not update Story!"
      render "edit.slang"
    end
  end

  def destroy
    story.destroy
    redirect_to action: :index, flash: {"success" => "Deleted story successfully."}
  end

  private def story_params
    params.validation do
      required :title
      required :resume
    end
  end

  private def set_story
    @story = Story.find! params[:id]
    redirect_to "/" unless @story.user_id == current_user!.id
  end
end
