# Production Readiness: Gates and Nets

This standard adapts the production-app lessons from the "vibe coding toys versus real apps" discussion into this framework.

The main mental model is:

- Gates stop bad specifications, data, code, or changes before they enter the app.
- Nets catch problems after something goes wrong, so the app fails safely and can be repaired.

For this framework, production readiness does not always mean cloud hosting. Many apps are offline, portable, folder-based desktop apps. Therefore, the ideas must be adapted to Wails, Go, React, TypeScript, SQLite, and local deployment.

## 1. Spec-driven development

### Gate

The AI must not code from a vague request.

Before implementation, create a clear specification for:

- App purpose.
- Users and roles.
- Data sources.
- Raw import tables.
- Clean operational tables.
- Lookups and building blocks.
- Workflows.
- Reports.
- Exports.
- Dashboards.
- Admin settings.
- Security, backup, and audit needs.

### Net

If the app behaviour becomes unclear later, return to the specification and update it before changing code.

### Framework adaptation

Use these files:

- `templates/app_requirements_template.md`
- `templates/database_plan_template.md`
- `templates/import_validation_plan_template.md`
- `templates/report_export_plan_template.md`

## 2. Project documentation

### Gate

Document non-obvious decisions before the AI forgets them.

Document:

- Anti-patterns to avoid.
- Non-inferable business rules.
- Data meanings.
- Import assumptions.
- Naming conventions.
- Known edge cases.
- User preferences.
- Reusable patterns.

### Net

When the AI makes a stale assumption, update the relevant markdown file so the same mistake is less likely next time.

### Framework adaptation

Use project-level markdown files, and where useful, nested markdown files inside folders to explain local rules.

Examples:

```text
/docs/PROJECT_SCOPE.md
/docs/DATABASE_PLAN.md
/docs/IMPORT_RULES.md
/docs/REPORT_RULES.md
/frontend/README.md
/backend/README.md
/sql/README.md
```

## 3. Version control

### Gate

Use version control to prevent uncontrolled changes.

Preferred rules:

- Do not commit directly to main for serious app work.
- Use small atomic commits.
- One logical change per commit.
- Use clear commit messages.
- Keep rollback possible.
- Keep generated experiments separate from stable code.

### Net

If a change breaks the app, revert the specific bad commit instead of manually undoing many unrelated edits.

### Framework adaptation

Even if the user is a non-coder, the AI must explain what changed and why after each phase.

## 4. Testing

### Gate

Important behaviour must have tests or at least a documented manual test checklist.

Recommended test levels:

- Unit tests for pure logic.
- Integration tests for database and services.
- End-to-end or manual tests for mission-critical workflows.
- Import/export tests for real sample files.

### Net

When a bug is found, add a test or checklist item so it does not return.

### Framework adaptation

For offline desktop apps, minimum tests/checks should include:

- App starts offline.
- Database is created or migrated correctly.
- Excel import preserves raw data.
- CSV import handles encoding and separators.
- Cleaned tables match expected results.
- Filters and sorting work quickly.
- Exports open correctly.
- Backup and restore work.

## 5. Authentication and authorisation

### Gate

Decide early whether the app needs users, roles, and permissions.

Definitions:

- Authentication confirms who the user is.
- Authorisation controls what the user may do.

### Net

Audit important user actions so incorrect access or accidental edits can be investigated.

### Framework adaptation

Offline apps may use simple local accounts, Windows-user awareness, role tables, or no login at all depending on risk.

If roles are used, define:

- Admin.
- Editor.
- Viewer.
- Section-specific user where needed.
- Export/report permission where needed.

## 6. Error handling

### Gate

Expected errors must be handled deliberately.

Examples:

- Missing import file.
- Wrong Excel headings.
- Invalid date.
- Duplicate key.
- Database locked.
- Export folder not writable.

### Net

Unexpected errors must not crash the whole app where avoidable.

The user should see a useful message, not a raw stack trace.

### Framework adaptation

Use:

- Friendly user messages.
- Technical logs in a local logs folder.
- Error boundaries in React.
- Central Go error handling.
- Import validation reports.
- Recoverable database-lock messages.

## 7. Databases

### Gate

Schema changes must be controlled.

Use migrations instead of manual random changes.

Required database practices:

- Primary keys.
- Unique keys where required.
- Foreign keys where practical.
- Indexes for common filters and sorts.
- Views for repeated report/list calculations.
- Migration history.
- Seed data for default lookups.

### Net

If a schema change fails, keep a backup and migration history so the database can be repaired or rolled back.

### Framework adaptation

SQLite is the default database. Every app should include:

- Migration table.
- Backup before risky migration.
- Index review.
- Import batch tracking.
- Audit log where required.

Avoid common AI database problems:

- Missing indexes.
- Repeated N+1 queries.
- Business logic hidden in the UI.
- Duplicate tables for similar screens.
- Using raw imported text as relationship keys.

## 8. Security

### Gate

Do basic security review even for offline apps.

Check:

- Sensitive data exposure.
- Hard-coded passwords.
- Unsafe file paths.
- Unvalidated imports.
- Unrestricted delete actions.
- Missing backups.
- Weak role handling.
- Overly broad export access.

### Net

Use audit logs, backups, and clear error logs to investigate incidents.

### Framework adaptation

Offline does not mean no security. The main risks are local data loss, incorrect edits, unauthorised viewing, bad imports, unsafe exports, and weak backups.

## 9. Hosting or distribution

### Gate

For this framework, hosting usually means local distribution rather than cloud hosting.

Decide how the app will be delivered:

- Folder copy.
- USB copy.
- Shared network folder.
- Signed executable where possible.
- Versioned release zip.

### Net

If a release is bad, users must be able to return to the previous release and restore a database backup.

### Framework adaptation

Maintain:

- Release folder.
- Version number.
- Change log.
- Backup instructions.
- Upgrade instructions.

## 10. Deployment or release process

### Gate

A release must pass checks before being given to users.

Minimum checks:

- Build succeeds.
- App starts offline.
- Database migrations run.
- Import/export tested.
- Backup/restore tested.
- No known duplicate code issues.
- No unnecessary dependencies added.
- User guide updated.

### Net

Keep previous release packages and database backups so rollback is possible.

### Framework adaptation

GitHub Actions can still be useful even for desktop apps, but manual local release checks may be enough at first.

## 11. Observability

### Gate

The app must produce useful local evidence when things go wrong.

Offline observability can include:

- Local log files.
- Import batch history.
- Export history.
- Audit log.
- Error log.
- App version display.
- Database version display.

### Net

When a user reports a problem, logs and history should help answer:

- What happened?
- When did it happen?
- Which file was imported?
- Which user was involved?
- Which app version was used?
- Which database version was used?

## Practical framework rule

Every app should have a production-readiness section in its plan.

At minimum, answer:

1. What gates prevent bad inputs or changes?
2. What nets catch failures after they occur?
3. How does the app backup and restore data?
4. How does the app record errors?
5. How does the app support rollback?
6. Which workflows are mission-critical and must be tested?
