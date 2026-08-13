# quill
A batteries-included typst validation workflow

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