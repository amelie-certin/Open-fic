class Story < Granite::Base
  adapter pg
  table_name stories

  primary id : Int64
  field title : String
  field resume : String
  timestamps

  belongs_to :user, foreign_key: user_id : Int32
end
