# Database Plan Template

Use this template before building database tables or screens.

## 1. App/module name


## 2. Data sources

| Source name | Type | Notes |
|---|---|---|
|  | Excel / CSV / PDF / Word / manual |  |

## 3. Raw import tables

| Raw table | Source | Purpose | Key source columns |
|---|---|---|---|
| raw_ |  | Preserve imported source data |  |

## 4. Normalisation plan

What must be reshaped from source format into proper relational tables?

| Source pattern | Normalised target | Notes |
|---|---|---|
|  |  |  |

## 5. Standardisation plan

What values must be cleaned or standardised?

| Field | Standardisation rule | Lookup table if used |
|---|---|---|
|  |  |  |

## 6. Clean operational tables

| Table | Purpose | Main fields |
|---|---|---|
|  |  |  |

## 7. Key strategy

| Table | Primary key | Natural key | Unique keys | Foreign keys |
|---|---|---|---|---|
|  | id |  |  |  |

## 8. Filter and sort strategy

| Table or view | Common filters | Common sort fields | Required indexes |
|---|---|---|---|
|  |  |  |  |

## 9. Lookup and rule tables

| Table | Purpose | Admin editable? | Seed values needed? |
|---|---|---|---|
| lookup_ |  | Yes | Yes |

## 10. Views

| View | Purpose | Used by |
|---|---|---|
| vw_ |  | Screen / report / dashboard |

## 11. Migration plan

| Migration | Purpose | Risk | Backup needed? |
|---|---|---|---|
| 001_ |  | Low / Medium / High | Yes / No |

## 12. Open decisions

- 
- 
- 
