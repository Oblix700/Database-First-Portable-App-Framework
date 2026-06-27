# Code Economy and Reuse Standard

This standard exists because AI coding tools can easily create duplicate code, oversized files, and repeated components when they become too focused on the current screen.

## Main rule

Reuse before rebuild.

Before creating new code, the AI must check whether the project already contains something that can be reused, extended, or generalised.

## What must be checked before new code is created

Check for existing:

- React components.
- Go services.
- SQL tables.
- SQL views.
- Utility functions.
- Hooks.
- API endpoints.
- Import handlers.
- Export handlers.
- Validation logic.
- Report-builder logic.
- Date picker components.
- Table components.
- Popup and drawer components.
- Filter components.
- Layout components.

## Duplicate-code rule

If the same logic is needed in two or more places, it should normally become a reusable function, component, service, SQL view, or shared query.

Do not copy and paste the same logic into multiple pages.

## File-size rule

Large files must be questioned.

A large file is not automatically wrong, but it must have a reason.

Split files when:

- A component handles too many responsibilities.
- A file mixes UI, data fetching, validation, and formatting.
- A backend service contains unrelated modules.
- A SQL file contains unrelated schema areas.
- A file becomes difficult to review or debug.

## Simple-code rule

Short, clear, robust code is preferred over long clever code.

A 5-line reusable function can be better than a 400-line specialised solution.

The goal is not the smallest possible code. The goal is the simplest code that is still clear, safe, and maintainable.

## Component strategy

Build reusable components for common patterns:

- App shell.
- Collapsible sidebar.
- Page heading.
- Data table.
- Filter bar.
- Search box.
- Date picker.
- Detail drawer.
- Modal popup.
- Report builder.
- Export button.
- Zoom controls.
- Status badge.
- Empty state.
- Error state.

## Backend strategy

Build reusable backend services for common patterns:

- SQLite connection.
- Migrations.
- Import batches.
- Excel/CSV reading.
- Validation reports.
- Export generation.
- Backup and restore.
- Audit logging.
- Settings.
- Lookup tables.

## SQL strategy

Use SQL to avoid repeated logic.

Prefer:

- Views for repeated report calculations.
- Lookup tables for dropdown values.
- Mapping tables for imports.
- Rule tables for thresholds.
- Indexes for repeated search/filter paths.

## Anti-fluff rule

Avoid adding code, files, dependencies, animations, abstractions, or styling that do not serve a clear purpose.

Every added part should answer at least one of these questions:

- Does it make the app more accurate?
- Does it make the app easier to use?
- Does it make the app easier to maintain?
- Does it make the app faster?
- Does it reduce duplication?
- Does it improve testing or safety?

## Dependency rule

Do not add a new package or library unless there is a clear reason.

Before adding a dependency, check:

1. Can the existing stack already do this?
2. Is the package actively maintained?
3. Does it work offline after installation?
4. Does it increase the app size too much?
5. Does it create security or licensing concerns?
6. Is it really better than a small local helper function?

## Required AI behaviour

Before implementing a new feature, the AI must state:

1. What existing patterns it checked.
2. What it will reuse.
3. What new code is actually needed.
4. Why new code is needed.

## Clean-up review

At the end of each phase, review for:

- Duplicate code.
- Unused functions.
- Dead files.
- Over-large files.
- Repeated SQL queries.
- Repeated UI patterns.
- Unnecessary dependencies.
- Slow queries.
- Missed indexes.
