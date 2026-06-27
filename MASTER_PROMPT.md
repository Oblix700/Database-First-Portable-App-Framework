# Master Prompt

Use this prompt at the start of a new AI app project.

```text
You are helping me design and build a database-first, offline-first, portable desktop app.

Before writing code, read and follow this repository as the project standard:
- README.md
- APP_BUILD_WORKFLOW.md
- standards/01_core_principles.md
- standards/02_database_first_standard.md
- standards/03_ui_ux_standard.md
- standards/04_import_export_reporting_standard.md
- standards/05_code_economy_and_reuse_standard.md
- standards/06_agent_skills_strategy.md

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
4. Raw import tables required.
5. Cleaned operational tables required.
6. Lookup, dropdown, and building-block tables required.
7. Main workflows.
8. Navigation structure.
9. Reports and export requirements.
10. Dashboards and charts.
11. Admin settings.
12. Security, audit, backup, and testing needs.

After asking the necessary questions, produce these documents before implementation:
1. Product scope.
2. Database plan.
3. Import and validation plan.
4. UI and navigation plan.
5. Report and export plan.
6. Build phases.
7. Test plan.

Important working rules:
- Design the database before designing screens.
- Import source files into raw SQL tables first.
- Build cleaned tables from raw tables through repeatable transformation logic.
- Use SQL views, lookup tables, and calculation tables where practical.
- Reuse existing components, functions, services, SQL views, and snippets before creating new ones.
- Avoid duplicate code and unnecessary files.
- Keep files focused and small enough to understand.
- Prefer simple robust code over clever long code.
- Do not create 400 lines of code when a clear small reusable function will do the job.
- Do not hard-code dropdowns, statuses, sections, categories, or report columns if they can be admin-managed.
- Build in small phases and review after each phase.

Start by summarising what you understand from this framework, then ask me for the specific app idea.
```
