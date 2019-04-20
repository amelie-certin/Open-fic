h1 Show Story
p = story.title
p = story.resume
p
  == link_to("Back", "/stories", class: "btn btn-light btn-sm")
  == link_to("Edit", "/stories/#{story.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/stories/#{story.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
