# Report and Export Plan Template

Use this before implementing reports and exports.

## 1. Report/export module name


## 2. Reports required

| Report | Purpose | Users |
|---|---|---|
|  |  |  |

## 3. Source views

| Report | SQL view/table | Notes |
|---|---|---|
|  | vw_ |  |

## 4. Available columns

| Column | Default heading | Data type | Default visible? |
|---|---|---|---|
|  |  | text / number / date | Yes / No |

## 5. Filters

| Filter | Source field | Type | Required? |
|---|---|---|---|
|  |  | dropdown / text / date / number | Yes / No |

## 6. Sorting

| Sort option | Field | Default? |
|---|---|---|
|  |  | Yes / No |

## 7. Report builder requirements

- [ ] User can choose columns.
- [ ] User can remove columns.
- [ ] User can move columns left/right.
- [ ] User can preview at least 3 rows.
- [ ] User can save report template.
- [ ] User can apply filters before export.
- [ ] User can apply sorting before export.

## 8. Export formats

| Format | Required? | Notes |
|---|---|---|
| Excel | Yes / No |  |
| CSV | Yes / No |  |
| PDF | Yes / No |  |
| Word | Yes / No |  |
| JSON | Yes / No |  |

## 9. Export layout

| Format | Layout notes |
|---|---|
| Excel | Headings, filters, frozen row, widths |
| PDF | Portrait/landscape, title, date generated, page numbers |
| CSV | Separator, encoding |

## 10. Export history

Should export history be recorded?

- [ ] Yes
- [ ] No

Fields to record:

- Exported by.
- Exported at.
- Report template.
- Format.
- File name.
- Row count.
- Filter summary.

## 11. Test cases

| Test | Expected result |
|---|---|
|  |  |
