# quill



<p align="center">
  <a href="https://github.com/reesehatfield/quill">
    <img src="./img/quill.png" alt="Quill Logo" width="220" height="330">
  </a>
</p>

<h3 align="center"><strong>Quill</strong></h3>

<p align="center">
    A batteries-included typst validation workflow
    <br>
</p>

- Ensures all typst in a repository compiles
- Optional ignore directive: `// quill: ignore`
- Drop into any project with typst files
- Not intended for release PDFs, just a code validator

## Usage

Add Quill to your GitHub Actions workflow (e.g., `.github/workflows/validate.yml`):

```yaml
name: Validate Typst Files

on:
  push:
    branches: [ main ]
  pull_request:

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Typst
        uses: typst-community/setup-typst@v3

      - name: Validate Typst files from Quill
        uses: ReeseHatfield/quill@v1
```

You can set a file to be ignored by Quill by add the following to the first line of the `.typ` file
```bash
// quill: ignore
```