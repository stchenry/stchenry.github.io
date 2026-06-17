
#import "@preview/shiroa:0.2.0": *

#show: book

#book-meta(
  title: "stchenry's blog",
  summary: [
    #chapter("chapters/shiroa-github-page-setup.typ")[How to create a github page like this using Shiroa]
    #chapter("chapters/random-thoughts.typ")[Random thoughts]
  ]
)



// re-export page template
#import "./templates/page.typ": project
#let book-page = project
