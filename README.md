# Database-First Portable App Framework

A reusable framework for guiding AI coding tools to design and build serious offline, portable, no-install desktop applications.

This repository is designed for apps that normally start from Excel or CSV data, import that data into SQLite, clean and validate it, and then expose useful operational screens, reports, dashboards, and exports.

## Core idea

The framework is database-first, offline-first, and repeatable.

Instead of asking an AI tool to immediately build an app, the AI must first read this repository, understand the standards, ask the right questions, produce a plan, review the plan, and only then implement the app in small controlled phases.

## Standard stack

- Wails desktop shell
- Go backend
- React frontend
- TypeScript
- Tailwind CSS
- SQLite database stored in the app folder
- ECharts for charts and dashboards
- Excel, CSV, PDF, Word, and JSON export where required

## Non-negotiable app principles

- The app must run from a folder without an installer where possible.
- The app must work offline without internet access.
- The app must store its database and working files inside the app folder unless the user explicitly chooses another folder.
- Excel and CSV imports must first go into raw SQL tables.
- Cleaned operational tables must be built from raw tables through validation, mapping, and transformation logic.
- SQL should do the heavy lifting where practical.
- JSON may be used for backup, interchange, templates, or settings, but not as the main business logic engine.
- Admin-managed lookup tables must be used for dropdowns, filters, rules, and reusable building blocks.
- Reports and exports must give users control over columns, order, filters, and preview before export.

## How to use this repository with an AI coding tool

1. Ask the AI to read `MASTER_PROMPT.md`.
2. Ask the AI to follow `APP_BUILD_WORKFLOW.md`.
3. Capture the app idea using `templates/app_requirements_template.md`.
4. Design the database before designing screens.
5. Create raw import tables, cleaned operational tables, lookup tables, views, and reports.
6. Design the UI from the standards in `standards/03_ui_ux_standard.md`.
7. Build in phases and review after each phase.

## Repository sections

- `MASTER_PROMPT.md` - the main instruction file to give an AI before starting a new app.
- `APP_BUILD_WORKFLOW.md` - the step-by-step build process.
- `standards/` - database, UI, import/export, reporting, and agent skill standards.
- `templates/` - reusable planning templates for new apps.
- `sql/` - SQL patterns and database templates.
- `snippets/` - future reusable code snippets.
- `design-reference/` - future screenshots, visual examples, icons, calendars, and UI references.

## Current project status

This repository is in early framework-design stage. The first goal is to capture the build philosophy and repeatable planning process before adding large code snippets or full starter apps.
