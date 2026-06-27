# Core Principles

These principles apply to every app built from this framework.

## Purpose

Build serious operational desktop applications that are:

- Portable.
- Offline-first.
- Database-first.
- No-install where possible.
- Fast enough for daily work.
- Easy to understand and maintain.
- Reusable across future app projects.

## Standard app identity

The app should feel like a practical business, logistics, finance, administration, or operations tool rather than a generic web demo.

It must prioritise:

- Accurate data.
- Clear workflows.
- Rows and columns.
- Hierarchy.
- Drill-down.
- Good reports.
- Good exports.
- Admin-managed flexibility.

## Offline-first rule

The app must not depend on internet access for normal daily use.

Normal app functions must work offline:

- Start-up.
- Login where included.
- Data capture.
- Search and filter.
- Reports.
- Dashboards.
- Import.
- Export.
- Backup.
- Restore.

## Portable app rule

The default design is a folder-based app.

The app folder should normally contain:

- The executable.
- SQLite database.
- Config or settings where required.
- Import folder where useful.
- Export folder where useful.
- Backup folder where useful.
- Logs folder where useful.
- Documentation.

## Database-first rule

The app must be designed around the data flow before the screens are designed.

Preferred flow:

```text
Excel / CSV / manual source
↓
Raw SQL table
↓
Validation and mapping
↓
Clean operational table
↓
Views, reports, dashboards, exports
```

## Admin-driven rule

Do not hard-code values that should be managed by the user.

Examples that should usually be SQL lookup tables:

- Statuses.
- Categories.
- Directorates.
- Capabilities.
- Sections.
- Document types.
- Financial years.
- Tariffs.
- Ranks.
- Public holidays.
- SLA thresholds.
- Report templates.
- Import mappings.

## Reuse rule

Before creating anything new, check if something already exists that can be reused or extended.

Reuse applies to:

- React components.
- Go services.
- SQL tables.
- SQL views.
- Import logic.
- Export logic.
- Report builder logic.
- Date/calendar components.
- Popup/drawer components.
- Filter components.

## Simplicity rule

Simple, clear, reusable code is better than long clever code.

Do not build a large specialised solution when a small general reusable function or component will solve the problem.

## Review rule

Every app must include planning, implementation, review, and clean-up.

The AI must not treat code generation as the only work.
