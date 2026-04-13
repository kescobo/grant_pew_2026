# Grant Template

[![full|release](https://img.shields.io/badge/full-release-blue?logo=adobeacrobatreader)](https://github.com/YOUR-USERNAME/YOUR-REPO/releases/latest/download/grant.pdf)
[![full|dev](https://img.shields.io/badge/full-dev-orange?logo=adobeacrobatreader)](https://nightly.link/YOUR-USERNAME/YOUR-REPO/workflows/preview/main/grant-preview.zip)
[![aims|release](https://img.shields.io/badge/aims-release-blue?logo=adobeacrobatreader)](https://github.com/YOUR-USERNAME/YOUR-REPO/releases/latest/download/aims.pdf)
[![aims|dev](https://img.shields.io/badge/aims-dev-orange?logo=adobeacrobatreader)](https://nightly.link/YOUR-USERNAME/YOUR-REPO/workflows/preview/main/aims-preview.zip)

![Specific Aims preview](https://raw.githubusercontent.com/YOUR-USERNAME/YOUR-REPO/preview/aims-preview.png)

Typst template for NIH-style grant documents. Uses [Liberation Serif](https://github.com/liberationfonts/liberation-fonts) and enforces NIH formatting rules (US Letter, 0.5″ margins, 11 pt, justified text, heading styles).

## Using this template

1. Click **Use this template → Create a new repository** on GitHub.
2. Clone your new repo and initialize the formatting submodule:

   ```bash
   git clone --recurse-submodules git@github.com:YOUR-USERNAME/YOUR-REPO
   ```

   Or if already cloned:

   ```bash
   git submodule update --init --recursive
   ```

3. Update the badge URLs and image URL at the top of this README to use your username and repo name.
4. Copy the CI workflow into place:

   ```bash
   mkdir -p .github/workflows
   cp assets/grants_common/github_workflows/release.yml .github/workflows/release.yml
   ```

## Writing the grant

Edit the `.typ` files directly. Each section is a separate file:

| File | Section |
|---|---|
| `main.typ` | Entry point — imports sections and applies NIH formatting |
| `aims-standalone.typ` | Additional entry point — preview of Aims only with formatting |
| `aims.typ` | Specific Aims |
| `approach.typ` | Research Strategy / Approach |
| `facillities.typ` | Facilities & Resources |

`main.typ` should import the NIH template and each section file:

```typst
#import "/assets/grants_common/lib.typ": *
#show: nih-format

== Specific Aimes
#include "aims.typ"

== Approach
#include "approach.typ"

== Facilities
#include "facilities.typ"
```

Within a section file, use standard Typst markup:

```typst

Paragraph text goes here. *Bold*, _italic_, and @citation are supported.

== Aim 1: Short title

Description of the aim.

- Hypothesis: ...
- Approach: ...
```

Heading levels follow NIH rules automatically: `=` → bold, `==` → bold italic, `===` → italic.

## Exporting individual sections

For exporting individual sections (eg Specific Aims)
as standalone documents, create a `section-standalone.typ`
that imports the formatting components and just `include`s
the relevant section, eg

```typst
// aims-standalone.typ
#import "/assets/grants_common/lib.typ": *
#show: nih-format

= Specific Aims

#include "aims.typ"

#bibliography("refs.bib", title: none, style: "apa")
```


If you need a different page limit or margin for a specific section, override just that file:

```typst
#show: nih-format.with(page-overrides: (margin: 0.75in))
```

## Building locally

Requires [Typst](https://typst.app/) 0.14 and Liberation Serif (`sudo apt-get install fonts-liberation` or equivalent).

```fish
# Compile once
typst compile main.typ grant.pdf

# Watch for changes
typst watch main.typ grant.pdf

# export with current commit hash
# fish shell
typst compile main.typ ~/Downloads/(basename $PWD)-(git rev-parse --short HEAD).pdf

# bash/zsh
typst compile main.typ ~/Downloads/$(basename $PWD)-$(git rev-parse --short HEAD).pdf

```

## Releases and PDF builds

Creating a GitHub release triggers the CI workflow to compile `main.typ` and `aims-standalone.typ`, attaching `grant.pdf` and `aims.pdf` to the release.

To create a release:

```bash
gh release create v1.0 --title "submission draft" --notes "Initial submission draft"
```

