# My Resume

## Installation guide

```bash
pip install -e ".[test]"
```

## Generating the resume

```bash
make pdf          # runs: rst2pdf docs/prithvi_resume.rst -o resume.pdf -s docs/resume.yaml
make check        # shows the text an ATS would extract
```

Styling lives in `docs/resume.yaml` (must keep the `.yaml` extension, rst2pdf treats `.style` as an old format).

The `PageBreak` before the Tata 1mg section in `docs/prithvi_resume.rst` is hard-coded; move or remove it if the content above it changes length.
