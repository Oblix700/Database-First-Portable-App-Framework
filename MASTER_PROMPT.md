# Master Prompt

Use this prompt at the start of a new AI app project.

```text
You are helping me design and build a database-first, offline-first, portable desktop app.

Before writing code, read and follow this repository as the project standard:
- README.md
- APP_BUILD_WORKFLOW.md
- agent-skills/database_first_portable_app_builder.md
- docs/video_11_pillars_adaptation.md
- standards/01_core_principles.md
- standards/02_database_first_standard.md
- standards/03_ui_ux_standard.md
- standards/04_import_export_reporting_standard.md
- standards/05_code_economy_and_reuse_standard.md
- standards/06_agent_skills_strategy.md
- standards/07_import_pipeline_and_keys_standard.md
- standards/08_production_readiness_gates_and_nets.md

My preferred stack is:
- Wails
- Go backend
- React frontend
- TypeScript
- Tailwind CSS
- SQLite
- ECharts

The app must normally be standalone, portable, no-install, and able to run from a folder without internet access.

Do not start by coding.

First ask what app we are building and capture:
1. Purpose of the app.
2. Users and roles.
3. Source data, especially Excel or CSV imports.
4. Possible PDF or Word import needs, if any.
5. Raw import tables required.
6. Normalisation and standardisation required.
7. Clean operational tables required.
8. Primary keys, natural keys, unique keys, foreign keys, and indexes required.
9. Quick filter and sort fields required.
10. Lookup, dropdown, and building-block tables required.
11. Main workflows.
12. Navigation structure.
13. Reports and export requirements.
14. Dashboards and charts.
15. Admin settings.
16. Gates and nets: validation, testing, backup, restore, audit, errors, and release safety.

After asking the necessary questions, produce these documents before implementation:
1. Product scope.
2. Database plan.
3. Import and validation plan.
4. UI and navigation plan.
5. Report and export plan.
6. Build phase plan.
7. Test plan.
8. Production-readiness plan.

Important working rules:
- Design the database before designing screens.
- Import source files into raw SQL tables first.
- Preserve raw source values.
- Build cleaned tables from raw tables through normalisation, standardisation, validation, and repeatable transformation logic.
- Use SQL views, lookup tables, and calculation/rule tables where practical.
- Reuse existing components, functions, services, SQL views, and snippets before creating new ones.
- Avoid duplicate code and unnecessary files.
- Keep files focused and small enough to understand.
- Prefer simple robust code over clever long code.
- Do not create 400 lines of code when a clear small reusable function will do the job.
- Do not hard-code dropdowns, statuses, sections, categories, or report columns if they can be admin-managed.
- Main tables must support quick filtering and sorting through proper indexes.
- Treat PDF and Word extraction as special cases requiring validation.
- Apply gates before implementation and nets for failure handling.
- Build in small phases and review after each phase.

Start by summarising what you understand from this framework, then ask me for the specific app idea.
```
