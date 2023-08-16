[![pdf](https://img.shields.io/badge/pdf-note-green)](https://github.com/pbelmans/latex-template/blob/build/note.pdf)

Add badges as one sees fit:

* to change the name of the badge, just change the URL for the image
* they must link to the orphan branch called `build`

## GitHub Actions

In `Settings > Actions > Workflow permissions` you must activate `Read and write permissions`,
so that GitHub Actions can create and deploy the pdf.

To configure the pdf's to be built, change the `FILES` variable in `.github/workflows/pdf.yml`

* multiple files are possible, put each on its own line
* it is possible to build files in subdirectories, just include the path
* the files must have unique names to avoid collisions in the output

## Git hooks

In order to activate the hooks, you can run

`git config --local core.hooksPath .githooks/`

to add the `.githooks/` directory to the path.
This makes it possible to display the commit from which a file is built,
using the `gitinfo2` package.
