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
- PDF and Word imports are allowed where required, but must be validated more carefully.
- Cleaned operational tables must be built from raw tables through normalisation, standardisation, validation, mapping, and transformation logic.
- SQL should do the heavy lifting where practical.
- JSON may be used for backup, interchange, templates, or settings, but not as the main business logic engine.
- Admin-managed lookup tables must be used for dropdowns, filters, rules, and reusable building blocks.
- Main tables must support quick filters and sorting, backed by proper keys and indexes.
- Reports and exports must give users control over columns, order, filters, and preview before export.
- Reuse existing code, components, SQL views, and services before creating new ones.
- Keep code simple, focused, and maintainable.

## How to use this repository with an AI coding tool

1. Ask the AI to read `MASTER_PROMPT.md`.
2. Ask the AI to follow `APP_BUILD_WORKFLOW.md`.
3. Capture the app idea using `templates/app_requirements_template.md`.
4. Design the database before designing screens.
5. Create raw import tables, cleaned operational tables, lookup tables, views, and reports.
6. Design the UI from the standards in `standards/03_ui_ux_standard.md`.
7. Apply the production-readiness gates and nets in `standards/08_production_readiness_gates_and_nets.md`.
8. Build in phases and review after each phase.

## Important framework files

- `MASTER_PROMPT.md` - the main instruction file to give an AI before starting a new app.
- `APP_BUILD_WORKFLOW.md` - the step-by-step build process.
- `agent-skills/database_first_portable_app_builder.md` - the master app-builder skill.
- `docs/video_11_pillars_adaptation.md` - practical adaptation of the 11 production-readiness pillars.

## Standards

- `standards/01_core_principles.md`
- `standards/02_database_first_standard.md`
- `standards/03_ui_ux_standard.md`
- `standards/04_import_export_reporting_standard.md`
- `standards/05_code_economy_and_reuse_standard.md`
- `standards/06_agent_skills_strategy.md`
- `standards/07_import_pipeline_and_keys_standard.md`
- `standards/08_production_readiness_gates_and_nets.md`

## Templates

- `templates/app_requirements_template.md`
- `templates/database_plan_template.md`
- `templates/import_validation_plan_template.md`
- `templates/ui_navigation_plan_template.md`
- `templates/report_export_plan_template.md`
- `templates/build_phase_plan_template.md`
- `templates/test_plan_template.md`

## Checklists

- `checklists/database_review_checklist.md`
- `checklists/import_export_review_checklist.md`
- `checklists/reuse_and_code_economy_checklist.md`
- `checklists/ui_review_checklist.md`
- `checklists/production_release_checklist.md`

## Repository sections

- `standards/` - database, UI, import/export, reporting, reuse, and production-readiness standards.
- `templates/` - reusable planning templates for new apps.
- `checklists/` - quality gates and release checks.
- `sql/` - SQL patterns and database templates.
- `snippets/` - future reusable code snippets.
- `design-reference/` - future screenshots, visual examples, icons, calendars, and UI references.
- `agent-skills/` - AI operating instructions and master skills.
- `docs/` - supporting explanations and research notes.

## Current project status

This repository is in early framework-design stage. The first goal is to capture the build philosophy and repeatable planning process before adding large code snippets or full starter apps.
