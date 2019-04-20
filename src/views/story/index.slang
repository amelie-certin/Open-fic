.row
  .col-sm-11
    h2 Stories
  .col-sm-1
    a.btn.btn-success.btn-sm href="/stories/new" New
.table-responsive
  table.table.table-striped
    thead
      tr
        th Title
        th Resume
        th Actions
    tbody
      - stories.each do |story|
        tr
          td = story.title
          td = story.resume
          td
            span
              == link_to("Show", "/stories/#{story.id}", class: "btn btn-info btn-sm")
              == link_to("Edit", "/stories/#{story.id}/edit", class: "btn btn-success btn-sm")
              == link_to("Delete", "/stories/#{ story.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
