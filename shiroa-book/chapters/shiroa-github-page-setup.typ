#import "../book.typ": book-page

#show: book-page

= How to create a github page like this using Shiroa

== Short answer: 

See https://myriad-dreamin.github.io/shiroa/guide/faq.html.

== Long answer:

Basic knowledges:
- #link("https://myriad-dreamin.github.io/shiroa/introduction.html")[Shiroa]: an online book framework which allows you to write pages like this in Typst.
- #link("https://typst.app/")[Typst]: a markup language to easily format your pages with tables, images and more.  
- #link("https://docs.github.com/en/pages")[Github Pages]: allow you to publish your own site on github.
- #link("https://github.com/features/actions")[Github Actions]: allow you to customize and automate the process of building the book.

Some notes:
- The "build book" command in `.github/workflows/your_action_script.yml` is:
  ```sh
  shiroa build \
    --font-path path_to_font_dir \
    --path-to-root /your_repo_name/ \
    -w path_to_typst_workspace_root_dir \
    path_to_shiroa_book_root_dir
  ```
  - `--path-to-root /your_repo_name/` is needed for project sites. It is not needed for user sites.
    (#link("https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages#types-of-github-pages-sites")[project sites vs user sites])
  - `-w path_to_typst_workspace_root_dir` sets the root folder of all typst files.
    It is the root folder when you import in typst using `#import "/some/path/to/file.typ"`
  - `path_to_shiroa_book_root_dir` is the folder where your `book.typ` is in. The built shiroa book will be put in `path_to_shiroa_book_root_dir/dist`
- Remember to put
  ```typ
  #import "../book.typ": book-page
  #show: book-page
  ```
  at the start of each chapter.
