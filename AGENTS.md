# AI Agent Instructions for CTO Framework Book

This document provides context and rules for AI agents (LLMs, CLI agents) assisting with this LaTeX project.

## Technical Stack

- **Engine:** `lualatex` (required for `fontspec` and modern font handling).
- **Fonts:** IBM Plex Sans.
- **Build System:** `GNU Make`.
- **Glossaries:** `glossaries-extra` with the `abbreviations` option.
- **Typography:** `microtype` is enabled for high-quality justification.

## Structural Conventions

1. **Modular Folders:** Each chapter is a directory (e.g., `people/`).
2. **Entry Files:** Each chapter directory has an entry file named after the directory (e.g., `people/people.tex`).
3. **Paths:** All paths in `\include` or `\input` should be relative to the project root.
4. **Setup:** Configuration is split into `setup/*.tex`. Do not put package configurations in the main `.tex` file unless they are temporary.

## Maintenance Rules

- **Renaming Chapter Folders:** Do not use sequential numbers in directory names (e.g., use `people/` not `section1-people/`).
- **Build Verification:** Always run `make pdf` after structural changes to ensure the bibliography, index, and glossaries still compile.
- **Glossaries:** Use `\gls{key}` for terms and `\gls{key}` for abbreviations. Ensure `makeglossaries` is run during the build.
- **Git Info:** Versioning is handled by `git-info.tex`, which is generated from a template. Do not edit `git-info.tex` directly.

## Standard Workflow for New Chapters

1. Create a new directory named after the topic (lowercase, hyphen-separated).
2. Create `topic/topic.tex` as the entry point.
3. Add `\include{topic/topic}` to the `mainmatter` section in `cto-framework-book.tex`.
4. Run `make pdf` to verify.
