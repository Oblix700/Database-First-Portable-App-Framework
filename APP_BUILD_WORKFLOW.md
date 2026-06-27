# App Build Workflow

This is the required step-by-step flow for every app built from this framework.

The purpose of this workflow is to stop the AI from jumping directly into code, duplicating existing logic, or building attractive but weak toy apps.

## Phase 0: Read the framework first

The AI must read:

1. `README.md`
2. `MASTER_PROMPT.md`
3. `agent-skills/database_first_portable_app_builder.md`
4. `docs/video_11_pillars_adaptation.md`
5. All files in `standards/`
6. Relevant templates in `templates/`
7. Relevant checklists in `checklists/`
8. Relevant SQL patterns in `sql/`
9. Any screenshots, snippets, or design references supplied for the app

No code may be written during this phase.

## Phase 1: Capture the app idea

Capture the app in plain language first.

Minimum questions:

1. What problem must the app solve?
2. Who will use it?
3. What source data exists?
4. Is there an Excel or CSV import?
5. Are PDF or Word imports required?
6. What must the user capture manually?
7. What must be normalised and standardised?
8. What must be calculated?
9. What must be exported?
10. What dashboards or reports are required?
11. What admin-managed dropdowns, settings, or rules are required?
12. What must work offline?

Output: `PROJECT_SCOPE.md` for the specific app.

## Phase 2: Design the data flow

Design the data flow before screens.

Required pattern:

```text
Source file or manual capture
↓
Raw SQL table
↓
Normalisation
↓
Standardisation
↓
Validation and mapping
↓
Clean operational table
↓
Views, reports, dashboards, exports
```

Output: `DATABASE_PLAN.md`.

## Phase 3: Design keys, indexes, lookup, and building-block tables

Identify:

- Primary keys.
- Natural keys.
- Unique keys.
- Foreign keys.
- Indexes for quick filtering and sorting.
- Dropdowns.
- Filters.
- Statuses.
- Categories.
- Sections.
- Rules.
- Thresholds.
- Templates.

These must normally be stored in SQL tables, not hard-coded in the front end.

Output: `LOOKUP_AND_RULES_PLAN.md`.

## Phase 4: Design imports and validation

For every import source, define:

1. Source file type.
2. Expected columns.
3. Raw table.
4. Field mapping.
5. Normalisation rules.
6. Standardisation rules.
7. Validation rules.
8. Error report.
9. Transformation into cleaned tables.
10. Duplicate handling.
11. Import batch history.

Output: `IMPORT_VALIDATION_PLAN.md`.

## Phase 5: Design UI and navigation

Design the app shell and navigation after the data plan.

Required UI principles:

- Left navigation.
- Collapsible sidebar.
- Expandable nav groups.
- Rows and columns for working data.
- Hierarchy and drill-down where useful.
- Cards only for summaries, not for every detail.
- Detail popup or drawer from selected rows.
- Admin area for lookups, rules, settings, and templates.
- Zoom controls in 10% increments.

Output: `UI_NAVIGATION_PLAN.md`.

## Phase 6: Design reports and exports

Reports and exports must be designed before implementation.

Required report builder features:

- Available column list.
- Selected column list.
- Add and remove columns.
- Move columns left and right.
- Filter before export.
- Sort before export.
- Preview at least 3 sample rows.
- Save report templates where useful.
- Export to Excel, PDF, CSV, Word, JSON, or SQLite backup where required.

Output: `REPORT_EXPORT_PLAN.md`.

## Phase 7: Production-readiness gates and nets

Before coding, define gates and nets.

Gates prevent bad work from entering the app:

- Specification review.
- Database review.
- Import validation.
- Reuse review.
- Testing plan.
- Release checklist.

Nets catch failures after they happen:

- Local logs.
- Audit logs.
- Import batch history.
- Validation error history.
- Backups.
- Rollback release package.
- User-friendly error handling.

Output: `PRODUCTION_READINESS_PLAN.md`.

## Phase 8: Reuse and code economy review

Before coding, the AI must check whether any existing pattern can be reused:

- Existing component.
- Existing Go service.
- Existing SQL view.
- Existing import pattern.
- Existing export pattern.
- Existing report-builder pattern.
- Existing date picker or calendar component.
- Existing table component.
- Existing popup or drawer pattern.
- Existing validation logic.

Output: `REUSE_REVIEW.md`.

## Phase 9: Build in small phases

Build only one controlled phase at a time.

Recommended build order:

1. Project structure.
2. SQLite foundation.
3. Migration system.
4. Settings and lookup tables.
5. Import batch and raw tables.
6. Normalisation, standardisation, validation, and cleaned tables.
7. Views and indexed list queries.
8. Main navigation shell.
9. Primary data table screens.
10. Detail popup/drawer screens.
11. Reports and export builder.
12. Dashboards and charts.
13. Admin screens.
14. Backup, restore, audit, logs, and error handling.
15. Final testing and clean-up.

## Phase 10: Test and review

Test at minimum:

- App starts offline.
- App runs from folder.
- Database is created correctly.
- Migrations run correctly.
- Imports work.
- Raw data is preserved.
- Normalisation and standardisation work.
- Cleaned data is correct.
- Dropdowns are admin-managed.
- Filters and sorting work quickly.
- Reports export correctly.
- PDF and Excel output is usable.
- Zoom controls work.
- Dark and light mode work where included.
- No duplicate components or unnecessary code paths were created.
- Large files are split where appropriate.
- Backup and restore work.
- Errors are logged and shown to users safely.

## Phase 11: Final release check

Before calling the app complete:

1. Remove unused code.
2. Remove duplicate code.
3. Check for unnecessary large files.
4. Check slow queries.
5. Add indexes where needed.
6. Verify import/export edge cases.
7. Verify backup and restore.
8. Confirm the app can run offline.
9. Confirm logs and audit history work where required.
10. Produce user instructions.
11. Produce a change log.
12. Keep previous release available for rollback.
