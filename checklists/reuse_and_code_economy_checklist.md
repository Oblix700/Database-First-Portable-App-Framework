# Reuse and Code Economy Checklist

Use this checklist before coding a new feature and after completing each build phase.

## Before creating new code

- [ ] Existing React components were checked.
- [ ] Existing Go services were checked.
- [ ] Existing SQL views were checked.
- [ ] Existing utility functions were checked.
- [ ] Existing hooks were checked.
- [ ] Existing import/export handlers were checked.
- [ ] Existing report-builder logic was checked.
- [ ] Existing table, filter, popup, drawer, and date-picker patterns were checked.

## Reuse decision

- [ ] The AI stated what will be reused.
- [ ] The AI stated what must be newly created.
- [ ] The AI stated why new code is necessary.
- [ ] The AI avoided copy-paste duplication.

## File size and structure

- [ ] Large files were questioned.
- [ ] Components have focused responsibilities.
- [ ] UI, data fetching, validation, and formatting are not unnecessarily mixed.
- [ ] Backend services are grouped logically.
- [ ] SQL files are grouped logically.

## Simplicity

- [ ] Short clear code was preferred over long clever code.
- [ ] No unnecessary abstraction was added.
- [ ] No unnecessary dependency was added.
- [ ] No decorative feature was added without purpose.

## Duplication review

- [ ] No duplicate UI components were created.
- [ ] No duplicate Go services were created.
- [ ] No duplicate SQL queries were scattered across screens.
- [ ] No duplicate calculations were repeated in multiple places.
- [ ] Repeated logic was moved into reusable components, functions, services, or views.

## Final clean-up

- [ ] Unused functions removed.
- [ ] Dead files removed.
- [ ] Unused imports removed.
- [ ] Slow queries reviewed.
- [ ] Missed indexes reviewed.
- [ ] Hard-coded dropdowns replaced with lookup tables where practical.
