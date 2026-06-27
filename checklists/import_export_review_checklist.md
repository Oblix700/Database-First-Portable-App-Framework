# Import and Export Review Checklist

Use this checklist for every app that imports or exports data.

## Import sources

- [ ] Excel sources are identified.
- [ ] CSV sources are identified.
- [ ] PDF sources are identified where required.
- [ ] Word sources are identified where required.
- [ ] Manual capture sources are identified.
- [ ] Source examples are stored or described.

## Import process

- [ ] Import creates an import batch record.
- [ ] Import writes to raw SQL tables first.
- [ ] Source file name is captured.
- [ ] Source row number is captured where useful.
- [ ] Raw source values are preserved.
- [ ] Validation runs before data becomes operational.
- [ ] Validation errors are visible to the user.
- [ ] Failed imports give useful messages.

## Excel and CSV handling

- [ ] Column headings are mapped, not assumed only by position.
- [ ] Required columns are checked.
- [ ] Dates are validated.
- [ ] Numbers are validated.
- [ ] Blank rows are handled.
- [ ] Duplicate rows are handled.
- [ ] Encoding/separator issues are considered for CSV.

## PDF and Word handling

- [ ] Original files are preserved.
- [ ] Extracted text/table data is stored raw first.
- [ ] User review is required for important extracted data.
- [ ] Extraction uncertainty is documented where relevant.
- [ ] The app does not treat OCR/extraction as automatically correct.

## Clean-up and transformation

- [ ] Normalisation rules are applied.
- [ ] Standardisation rules are applied.
- [ ] Lookup matching is applied.
- [ ] Clean operational tables are populated.
- [ ] Re-import behaviour is defined.
- [ ] Duplicate handling is defined.

## Report builder

- [ ] Available columns are defined.
- [ ] Selected columns can be added and removed.
- [ ] Selected columns can be moved left and right.
- [ ] Filters can be applied before export.
- [ ] Sorting can be applied before export.
- [ ] Preview rows are shown before export.
- [ ] Report templates can be saved where useful.

## Export formats

- [ ] Excel export works.
- [ ] CSV export works where required.
- [ ] PDF export works where required.
- [ ] Word export works where required.
- [ ] JSON export is used only where suitable.
- [ ] SQLite backup is available where required.

## Export quality

- [ ] Headings are clear.
- [ ] Date formats are correct.
- [ ] Number formats are correct.
- [ ] Filters used are visible or recorded where useful.
- [ ] Wide reports have landscape PDF support where required.
- [ ] Export file names are meaningful.
- [ ] Export history is captured where useful.
