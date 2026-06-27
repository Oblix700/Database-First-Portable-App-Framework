# Database Review Checklist

Use this checklist before and after database implementation.

## Data flow

- [ ] Source data is identified.
- [ ] Raw import tables are defined.
- [ ] Normalisation rules are defined.
- [ ] Standardisation rules are defined.
- [ ] Validation rules are defined.
- [ ] Clean operational tables are defined.
- [ ] Views for lists, reports, and dashboards are defined where useful.

## Raw tables

- [ ] Raw tables preserve source values.
- [ ] Raw tables include import batch ID.
- [ ] Raw tables include source row number where useful.
- [ ] Raw tables include source file name where useful.
- [ ] Raw tables include imported timestamp.
- [ ] Raw data is not silently overwritten during cleaning.

## Clean tables

- [ ] Every clean table has a clear purpose.
- [ ] Every clean table has a primary key.
- [ ] Natural identifiers are stored separately from internal IDs.
- [ ] Unique constraints are added where required.
- [ ] Foreign keys are added where practical.
- [ ] Active/inactive handling is defined where useful.

## Filtering and sorting

- [ ] Main table screens have quick filter fields identified.
- [ ] Main table screens have sort fields identified.
- [ ] Indexes exist for common filters.
- [ ] Indexes exist for common sort fields.
- [ ] Indexes exist for foreign keys.
- [ ] Date fields used in reports are indexed where needed.

## Lookup and building-block tables

- [ ] Dropdown values are not hard-coded in React.
- [ ] Statuses are lookup-driven where practical.
- [ ] Categories are lookup-driven where practical.
- [ ] Sections/directorates/capabilities are lookup-driven where practical.
- [ ] Admin edit rules are defined.

## Migrations

- [ ] Schema changes are handled by migrations.
- [ ] Migration history is stored.
- [ ] Seed/default data is documented.
- [ ] Backup before risky migration is considered.

## Performance

- [ ] Repeated calculations use SQL views where practical.
- [ ] N+1 query patterns are avoided.
- [ ] Dashboard queries are reviewed for speed.
- [ ] Large imports are tested.
- [ ] Pagination or virtualised tables are considered for large datasets.

## Final database review

- [ ] No duplicate tables exist for the same purpose.
- [ ] No unused tables remain.
- [ ] No critical business logic is hidden only in the UI.
- [ ] Database backup and restore are tested.
