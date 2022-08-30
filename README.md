# Template repository for creating and hosting AsciiDoc documents

## Hosting HTML on GitHub
- Create a new repository from this template
- Edit `index.adoc`
- Whenever you push to main, GH Actions will create an HTML file from your `index.adoc` file and host it in the repository's pages under `https://<account>.github.io/<repo-name>/`

## Building locally
The `Makefile` includes two targets - `pdf` and `html` - to generate the corresponding output under the `out` directory

### Prerequisites
Install `asciidoctor` and `asciidoctor-pdf` by following the instructions [here](https://docs.asciidoctor.org/asciidoctor/latest/install/)

## Advanced Settings
Both the `Makefile` and the `GH Actions` run a simple `asciidoctor` command.

You may adjust the command according to your document's requirements.

For example, you may want to add diagram processing by adding `-r asciidoctor-diagram` to the command
