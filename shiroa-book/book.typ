
#import "@preview/shiroa:0.2.0": *

#show: book

#book-meta(
  title: "stchenry's blog",
  summary: [
    #prefix-chapter("chapters/sample-page.typ")[Hello, typst]
    #chapter("chapters/random-thoughts.typ")[Random thoughts]
  ]
)



// re-export page template
#import "./templates/page.typ": project
#let book-page = project
