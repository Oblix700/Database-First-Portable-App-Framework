# Import, Export, and Reporting Standard

This standard defines how imports, exports, and reports should work in apps built from this framework.

## Import principle

Imports must be traceable and repeatable.

Do not import directly into final operational tables unless the source is already controlled and validated.

Preferred flow:

```text
Excel or CSV file
↓
Import batch record
↓
Raw import table
↓
Validation report
↓
Clean operational table
↓
Views, reports, dashboards
```

## Raw import tables

Every import module should normally have a matching raw table.

The raw table should preserve:

- Source file name.
- Import batch ID.
- Source row number.
- Original imported values.
- Import timestamp.
- Validation status where useful.

## Field mapping

If files may change or users may use different column names, use a field mapping table.

Suggested mapping fields:

- Module key.
- Source column name.
- Target field name.
- Required yes/no.
- Data type.
- Default value.
- Transformation rule.
- Active yes/no.

## Validation reports

Every import should be able to show validation problems before final use.

Examples:

- Missing required value.
- Invalid date.
- Invalid number.
- Unknown lookup value.
- Duplicate record.
- Bad financial year.
- Start date after end date.

## Export principle

Exports must reduce manual work for the user.

The user should be able to prepare the output before export instead of cleaning it afterwards in Excel.

## Standard export formats

Use formats as required by the app:

- Excel.
- CSV.
- PDF.
- Word where narrative reports are needed.
- JSON for backup, template sharing, or diagnostics.
- SQLite backup where required.

## Report builder

A reusable report builder should be a standard app feature where reporting is important.

Required report-builder features:

- Choose available columns.
- Add selected columns.
- Remove selected columns.
- Move selected columns left and right.
- Rename headings where useful.
- Apply filters before export.
- Apply sort order before export.
- Preview at least 3 sample rows.
- Save report templates where useful.
- Export the prepared report.

## Report-builder data model

Suggested tables:

```text
rpt_templates
rpt_template_columns
rpt_template_filters
rpt_export_history
```

## Export history

Where useful, keep an export history.

Suggested fields:

- Module key.
- Report template ID.
- Export format.
- Exported at.
- Exported by.
- File name.
- Row count.
- Filter summary.

## PDF exports

PDF exports should be clear and management-friendly.

Required considerations:

- Title.
- Date generated.
- Filters used.
- Page numbers.
- Column widths.
- Landscape option for wide reports.
- Summary totals where useful.

## Excel exports

Excel exports should be useful immediately.

Preferred features:

- Clean headings.
- Frozen header row where supported.
- Auto filter.
- Useful column widths.
- Correct date and number formats.
- Summary sheet where useful.
- Export metadata where useful.

## Avoid

- Exporting messy raw data unless explicitly requested.
- Forcing users to clean exports manually every time.
- Duplicating export logic for every page.
- Building one-off reports when a report-builder template would be better.
