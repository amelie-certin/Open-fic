- if story.errors
  ul.errors
    - story.errors.each do |error|
      li = error.to_s

== form(action: "/stories/#{story.id.to_s}", method: story.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == text_field(name: "title", value: story.title, placeholder: "Title", class: "form-control")
  .form-group
    == text_area(name: "resume", content: story.resume, placeholder: "Resume", class: "form-control", maxlength: 255)
  == submit("Submit", class: "btn btn-success btn-sm")
  == link_to("Back", "/stories", class: "btn btn-light btn-sm")
