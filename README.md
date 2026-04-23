# CTO Framework: Building and Scaling Engineering Organizations

A comprehensive framework for Chief Technology Officers and engineering leaders to navigate the complexities of people, process, product, and technology.

## Prerequisites

- **TeX Live:** A full installation is recommended (specifically `lualatex`, `bibtex`, `makeindex`, and `makeglossaries`).
- **IBM Plex Sans:** The book uses the IBM Plex Sans font family.
- **Git:** Required for generating version information.

## Project Structure

The project is organized into modular directories for clarity and flexibility:

- `intro/`: Preface, author info, dedication, and versioning.
- `people/`: Focuses on organizational design, talent strategy, and culture.
- `process/`: Covers Agile/DevOps, roadmaps, finance, and governance.
- `product/`: Bridges the gap between technology and product strategy.
- `technology/`: Technical leadership, reliability, and incident management.
- `boardroom/`: Strategic alignment and executive communication.
- `conclusion/`: Final thoughts and future outlook.
- `setup/`: LaTeX configuration files (colors, boxes, glossaries, etc.).
- `images/`: High-resolution diagrams and assets.

## Build Instructions

The project uses a `Makefile` to automate the complex LaTeX build sequence.

```bash
# To build the complete PDF with bibliography, index, and glossaries
make pdf

# To remove auxiliary build files
make clean

# To open the generated PDF (Linux)
make open
```

## Versioning

Version information is automatically injected into the book using Git tags. Ensure you have at least one tag or commit in your repository for the `git-info.tex` generation to succeed.

## License

This work is licensed under the **Creative Commons Attribution 4.0 International (CC BY 4.0)**.
