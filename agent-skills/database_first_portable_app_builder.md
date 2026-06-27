# Database-First Portable App Builder

This is the master AI operating skill for this framework.

Use it to guide AI coding tools when designing and building offline-first, portable desktop apps using Wails, Go, React, TypeScript, Tailwind CSS, SQLite, and ECharts.

## Mission

Help the user build serious operational applications that are:

- Database-first.
- Offline-first.
- Portable.
- No-install where possible.
- Fast to use.
- Easy to maintain.
- Reusable across projects.
- Built around real data flows, not decorative screens.

## Required behaviour

Do not start by coding.

First read:

1. `README.md`
2. `MASTER_PROMPT.md`
3. `APP_BUILD_WORKFLOW.md`
4. All relevant files in `standards/`
5. Relevant templates in `templates/`
6. Relevant SQL files in `sql/`
7. Relevant screenshots or snippets supplied by the user

## Operating sequence

Follow this sequence for every app.

### 1. Understand the app

Capture:

- Purpose.
- Users.
- Roles.
- Source data.
- Manual capture requirements.
- Reports.
- Exports.
- Dashboards.
- Admin-managed rules.
- Offline and portability requirements.

### 2. Design data flow

Use the standard flow:

```text
Source data
↓
Raw SQL table
↓
Normalisation
↓
Standardisation
↓
Validation
↓
Clean operational table
↓
Views, reports, dashboards, exports
```

### 3. Design keys and relationships

Every clean table must define:

- Primary key.
- Natural key where applicable.
- Unique constraints where applicable.
- Foreign keys where applicable.
- Indexes for filtering and sorting.

### 4. Design building blocks

Identify reusable dropdowns, filters, statuses, categories, rules, and templates.

These should normally be SQL lookup tables, not hard-coded values.

### 5. Design UI

Use the framework UI style:

- Left navigation.
- Collapsible sidebar.
- Expandable nav groups.
- Rows and columns.
- Tables.
- Hierarchy.
- Drill-down.
- Detail popup or drawer.
- Cards only for summaries.
- Zoom controls in 10% increments.

### 6. Design reports and exports

Include a report builder where useful.

Report builder must support:

- Choose columns.
- Reorder columns.
- Filter before export.
- Sort before export.
- Preview sample rows.
- Save templates where useful.
- Export to required formats.

### 7. Reuse before rebuild

Before creating new code, check existing:

- Components.
- Services.
- SQL views.
- Utilities.
- Import logic.
- Export logic.
- Report builder logic.
- Calendar/date picker logic.
- Table logic.
- Popup/drawer logic.

State what will be reused before implementing.

### 8. Build in phases

Build one phase at a time.

Recommended order:

1. Project structure.
2. SQLite foundation.
3. Lookups and settings.
4. Import batches and raw tables.
5. Normalisation, standardisation, and validation.
6. Clean operational tables.
7. Views and indexed list queries.
8. Navigation shell.
9. Main table screens.
10. Detail screens.
11. Report builder and exports.
12. Dashboards.
13. Admin screens.
14. Backup, restore, audit, and release checks.

### 9. Review and optimise

After each phase, review:

- Duplicate code.
- Large files.
- Slow queries.
- Missing indexes.
- Repeated SQL.
- Unused code.
- Unnecessary dependencies.
- Hard-coded values that should be lookup tables.

## Style of answer to the user

Explain clearly and practically.

The user may not be a coder, so use plain language and provide copy-paste-ready prompts, plans, SQL, or code where useful.

Do not hide uncertainty. If something is a design choice, state the trade-off.

## Hard rules

- Do not build from screens first.
- Do not skip the raw import layer.
- Do not hard-code lookup values when SQL tables are better.
- Do not duplicate existing code.
- Do not add unnecessary packages.
- Do not create large complex files without a reason.
- Do not treat PDF/Word extraction as automatically reliable.
- Do not call an app complete without import, export, backup, filtering, sorting, and review checks where relevant.
