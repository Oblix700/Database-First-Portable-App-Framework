# Test Plan Template

Use this template before calling an app or phase complete.

## 1. Test scope

What is being tested?


## 2. Start-up and offline tests

- [ ] App starts without internet.
- [ ] App runs from intended folder.
- [ ] App creates or opens the database.
- [ ] App shows correct version.

## 3. Database tests

- [ ] Migrations run correctly.
- [ ] Default lookup data is created.
- [ ] Foreign keys work where used.
- [ ] Indexes exist for main filters.
- [ ] Backup works.
- [ ] Restore works.

## 4. Import tests

| Test file | Expected result | Pass/fail |
|---|---|---|
| Valid Excel file |  |  |
| Invalid headings |  |  |
| Missing required values |  |  |
| Duplicate rows |  |  |
| Invalid dates/numbers |  |  |

## 5. Clean data tests

| Test | Expected result | Pass/fail |
|---|---|---|
| Raw data preserved |  |  |
| Normalisation correct |  |  |
| Standardisation correct |  |  |
| Clean tables populated |  |  |

## 6. UI workflow tests

| Workflow | Steps | Expected result | Pass/fail |
|---|---|---|---|
|  |  |  |  |

## 7. Filter and sort tests

| Screen | Filter/sort tested | Expected result | Pass/fail |
|---|---|---|---|
|  |  |  |  |

## 8. Report and export tests

| Export | Expected result | Pass/fail |
|---|---|---|
| Excel | Opens and headings/formats are correct |  |
| PDF | Readable and page layout correct |  |
| CSV | Separator and encoding correct |  |
| Word | Narrative layout correct where required |  |

## 9. Error handling tests

| Error scenario | Expected user message | Logged? |
|---|---|---|
| Missing import file |  |  |
| Bad file format |  |  |
| Database locked |  |  |
| Export folder not writable |  |  |

## 10. Release decision

- [ ] Ready for release.
- [ ] Needs fixes.
- [ ] Needs user review.

Notes:


