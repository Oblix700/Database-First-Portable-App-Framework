# Import Pipeline and Keys Standard

This standard defines how source files must move from messy external data into clean app-ready SQL tables.

## Main import sources

Most apps built from this framework will import data from:

1. Excel workbooks.
2. CSV files.
3. PDF files where required.
4. Word documents where required.
5. Manual capture screens where required.

Excel and CSV are the primary sources. PDF and Word import should be treated as special cases because extraction can be less reliable and usually needs stronger validation.

## Main pipeline rule

Source data must normally move through this flow:

```text
Excel / CSV / PDF / Word / manual capture
↓
Raw SQL table
↓
Normalisation
↓
Standardisation
↓
Validation
↓
Clean app-specific operational tables
↓
Views, reports, dashboards, exports
```

The app must not treat raw imported data as final operational data.

## Raw table rule

Raw import tables must preserve source values as closely as possible.

Raw tables should normally include:

- Primary key.
- Import batch ID.
- Source row number.
- Source file name.
- Original source values.
- Import timestamp.
- Validation status where useful.
- Validation notes where useful.

Raw data should not be silently changed. If cleaning is needed, the cleaned value must be produced in a later layer.

## Normalisation

Normalisation means reshaping imported data into a better relational structure.

Examples:

- Split repeated values into child tables.
- Move dropdown-style values into lookup tables.
- Separate master records from transaction records.
- Convert wide Excel layouts into proper row-based tables.
- Remove repeated groups from one table when they should be related tables.

## Standardisation

Standardisation means making values consistent.

Examples:

- Trim extra spaces.
- Standardise date formats.
- Standardise financial year formats.
- Standardise rank names.
- Standardise directorate names.
- Standardise statuses.
- Convert imported numbers into real numeric values.
- Match imported text to lookup values.

## Clean operational tables

Clean operational tables are the tables the app should actually use.

Rules:

- Each clean table must have a clear purpose.
- Each clean table must have a primary key.
- Important natural identifiers should have unique constraints where appropriate.
- Relationships must use foreign keys where practical.
- Common filter and sort columns must be indexed.
- The table must be designed for the workflows, not just copied from Excel.

## Key strategy

Every clean operational table must have a key strategy.

At minimum, define:

1. Primary key.
2. Natural key where applicable.
3. Unique key where applicable.
4. Foreign keys to related tables where applicable.
5. Indexes for quick filtering and sorting.

Suggested rule:

- Use an internal integer `id` as the primary key unless there is a strong reason not to.
- Keep real-world identifiers as separate fields, for example `contract_number`, `force_number`, `document_number`, or `product_code`.
- Add unique constraints to real-world identifiers when they must be unique.
- Do not use messy imported text as the only relationship key.

## Quick filter and sort rule

All main tables must support quick filtering and sorting.

For every table, identify common filters such as:

- Status.
- Date.
- Financial year.
- Directorate.
- Capability.
- Category.
- Section.
- User.
- Import batch.
- Active/inactive.

Add indexes for common filter and sort fields.

## Views for front-end use

The front end should often read from SQL views rather than raw tables.

Views can combine:

- Clean table fields.
- Lookup display names.
- Calculated values.
- Status labels.
- Dashboard-ready summaries.
- Report-ready columns.

Example naming:

```text
vw_contracts_list
vw_contracts_export
vw_document_flow_dashboard
vw_personnel_post_book
```

## PDF and Word source caution

PDF and Word imports should be handled carefully.

Rules:

- Preserve the original file.
- Extract into raw tables or raw text tables first.
- Show confidence or validation issues where possible.
- Require user review before finalising important records.
- Do not trust extracted tables without validation.

## Import failure handling

If an import fails, the app must show useful feedback.

The user should see:

- What failed.
- Which file was used.
- Which row or column caused the problem where possible.
- What must be corrected.
- Whether any rows were imported successfully.

## Avoid

- Importing directly into final tables without a raw layer.
- Overwriting raw source values.
- Building front-end screens directly on messy raw imports.
- Using unindexed tables for large filter-heavy screens.
- Depending on Excel column order only when headings can be mapped.
- Treating PDF extraction as perfectly reliable.
