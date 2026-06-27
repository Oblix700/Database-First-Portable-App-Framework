# Production Release Checklist

Use this before giving an app build to users.

## Build and start-up

- [ ] App builds successfully.
- [ ] App starts without internet.
- [ ] App runs from the intended folder.
- [ ] App version is visible somewhere sensible.
- [ ] Database version is visible or recorded.

## Database

- [ ] Database is created correctly on first run.
- [ ] Migrations run correctly.
- [ ] Migration history is recorded.
- [ ] Backup is created before risky migration where needed.
- [ ] Indexes are reviewed.
- [ ] Foreign keys are enabled where used.

## Import and data quality

- [ ] Excel import tested.
- [ ] CSV import tested where required.
- [ ] PDF or Word import tested where required.
- [ ] Raw data is preserved.
- [ ] Validation errors are visible.
- [ ] Cleaned tables are correct.
- [ ] Duplicate handling is correct.

## UI and workflow

- [ ] Main workflows tested end to end.
- [ ] Navigation works.
- [ ] Tables filter and sort quickly.
- [ ] Detail popups or drawers work.
- [ ] Forms validate required fields.
- [ ] Admin lookup edits work where included.
- [ ] Zoom controls work where included.

## Reports and exports

- [ ] Report builder works where included.
- [ ] Excel exports open correctly.
- [ ] PDF exports are readable where included.
- [ ] CSV exports are correctly formatted where included.
- [ ] Export history is recorded where useful.
- [ ] Export file names are meaningful.

## Error handling

- [ ] User-friendly messages appear for expected errors.
- [ ] Technical details are not shown directly to normal users.
- [ ] Technical errors are logged locally.
- [ ] Database locked or file permission errors are handled gracefully.
- [ ] Import errors identify row or column where possible.

## Access and safety

- [ ] No private credentials are stored directly in source files.
- [ ] Role permissions are tested where included.
- [ ] Delete actions require confirmation where appropriate.
- [ ] Important changes are audited where required.
- [ ] Backup and restore are tested.

## Code quality

- [ ] Duplicate code reviewed.
- [ ] Large files reviewed.
- [ ] Unused code removed.
- [ ] Unnecessary dependencies removed.
- [ ] Slow queries reviewed.
- [ ] Repeated UI patterns consolidated.

## Release package

- [ ] Release folder or zip created.
- [ ] Previous release kept for rollback.
- [ ] Change log updated.
- [ ] User guide updated.
- [ ] Upgrade instructions included where needed.
- [ ] Backup instructions included.
