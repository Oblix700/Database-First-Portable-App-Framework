# How to Start a New App With This Framework

Use this process when starting a new app in Codex, Antigravity, or another AI coding environment.

## Step 1: Point the AI to this repo

Tell the AI:

```text
Before building anything, read the Database-First Portable App Framework repository.
Start with README.md, MASTER_PROMPT.md, APP_BUILD_WORKFLOW.md, and agent-skills/database_first_portable_app_builder.md.
Do not write code until you have summarised the framework and asked me what app we are building.
```

## Step 2: Capture the app idea

Use:

```text
templates/app_requirements_template.md
```

The AI must capture:

- Purpose.
- Users.
- Source files.
- Raw import tables.
- Clean tables.
- Lookups.
- Workflows.
- Reports.
- Exports.
- Admin settings.
- Offline requirements.

## Step 3: Design the database first

Use:

```text
templates/database_plan_template.md
```

Do not design screens first.

Required database thinking:

- Raw tables.
- Normalisation.
- Standardisation.
- Clean operational tables.
- Keys.
- Indexes.
- Lookup tables.
- Views.
- Migrations.

## Step 4: Design imports and validation

Use:

```text
templates/import_validation_plan_template.md
```

Excel and CSV imports must go to raw SQL tables first.

PDF and Word imports must be treated as special cases that require stronger validation.

## Step 5: Design UI and reports

Use:

```text
templates/ui_navigation_plan_template.md
templates/report_export_plan_template.md
```

The standard UI style is:

- Left navigation.
- Collapsible sidebar.
- Rows and columns.
- Tables.
- Hierarchy.
- Drill-down.
- Detail popup/drawer.
- Admin lookups.
- Report builder.

## Step 6: Define gates and nets

Use:

```text
standards/08_production_readiness_gates_and_nets.md
```

Define:

- What prevents bad data or code entering the app.
- What catches problems after something goes wrong.
- How backup and rollback will work.
- How logs and audit history will work.

## Step 7: Review reuse before coding

Use:

```text
checklists/reuse_and_code_economy_checklist.md
```

The AI must identify what existing components, services, SQL views, snippets, or patterns can be reused.

## Step 8: Build in small phases

Use:

```text
templates/build_phase_plan_template.md
```

Build one phase at a time.

After each phase, review:

- Duplicate code.
- Large files.
- Slow queries.
- Missed indexes.
- UI consistency.
- Import/export quality.
- Error handling.

## Step 9: Test

Use:

```text
templates/test_plan_template.md
```

Test at minimum:

- Offline start.
- Database creation/migration.
- Import.
- Validation.
- Clean tables.
- Filters and sorting.
- Reports.
- Exports.
- Backup.
- Restore.

## Step 10: Release

Use:

```text
checklists/production_release_checklist.md
```

Do not call the app finished until release checks are complete.
