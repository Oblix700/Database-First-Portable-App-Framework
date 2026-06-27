# Import and Validation Plan Template

Use this template for every import module.

## 1. Import name


## 2. Source file type

- [ ] Excel
- [ ] CSV
- [ ] PDF
- [ ] Word
- [ ] Other:

## 3. Source file examples

| Example file | Notes |
|---|---|
|  |  |

## 4. Expected columns

| Source column | Required? | Target raw field | Notes |
|---|---|---|---|
|  | Yes / No |  |  |

## 5. Raw table

Raw table name:

```text
raw_
```

Required metadata fields:

- `id`
- `import_batch_id`
- `source_row_number`
- `source_file_name`
- `imported_at`
- validation status/notes where useful

## 6. Field mapping

| Source column | Target clean field | Data type | Transformation |
|---|---|---|---|
|  |  | text / number / date |  |

## 7. Validation rules

| Rule | Severity | User message |
|---|---|---|
|  | Error / Warning |  |

## 8. Normalisation rules

| Raw pattern | Clean table result |
|---|---|
|  |  |

## 9. Standardisation rules

| Field | Rule | Lookup used? |
|---|---|---|
|  |  |  |

## 10. Duplicate handling

How must duplicates be detected?


How must duplicates be handled?


## 11. Import result screen

The user should see:

- Rows imported.
- Rows accepted.
- Rows rejected.
- Warnings.
- Errors.
- Link to validation report.

## 12. Re-import behaviour

- [ ] Append new data
- [ ] Replace previous batch
- [ ] Update matching records
- [ ] User must choose

## 13. Test files

| Test file | Expected result |
|---|---|
|  |  |
