# Database-First Standard

This standard defines how data must be designed for apps built from this framework.

## Main rule

Design the database before designing the screens.

The front end must not become the place where business data is secretly cleaned, calculated, or corrected. The front end should display, capture, filter, and trigger actions. The database and backend should carry the main data structure and repeatable logic.

## Required data layers

Use these layers where applicable.

### 1. Raw import tables

Raw tables preserve the source data as imported.

Rules:

- Do not overwrite the original source values.
- Keep import batch information.
- Keep source filename where useful.
- Keep imported row number where useful.
- Keep import timestamp.
- Keep raw text values if the source is messy.

Example naming:

```text
raw_contracts_import
raw_personnel_import
raw_document_flow_import
raw_ration_scale_import
```

### 2. Validation layer

Validation identifies problems before data becomes operational.

Examples:

- Missing required fields.
- Invalid dates.
- Duplicate contract numbers.
- Unknown directorates.
- Unknown categories.
- Invalid numbers.
- Values not found in lookup tables.

### 3. Clean operational tables

Clean tables are used by the app.

Examples:

```text
contracts
personnel
document_flow_records
ration_products
accommodation_bookings
```

### 4. Lookup and building-block tables

Lookup tables drive dropdowns, filters, admin settings, report fields, and rules.

Examples:

```text
lookup_statuses
lookup_sections
lookup_directorates
lookup_capabilities
lookup_document_types
lookup_financial_years
lookup_public_holidays
lookup_sla_thresholds
```

### 5. Views for reports and dashboards

Use SQL views to centralise report and dashboard calculations where practical.

Examples:

```text
vw_contract_financial_overview
vw_document_flow_sla_summary
vw_personnel_by_unit
vw_ration_monthly_shopping_list
```

## Import batch tracking

Every import should normally have an import batch record.

Suggested table:

```sql
CREATE TABLE IF NOT EXISTS import_batches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    module_key TEXT NOT NULL,
    source_file_name TEXT,
    source_file_path TEXT,
    imported_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    imported_by TEXT,
    row_count INTEGER DEFAULT 0,
    status TEXT NOT NULL DEFAULT 'Imported',
    notes TEXT
);
```

## Audit logging

Important changes must be auditable where required.

Suggested events:

- Import completed.
- Record created.
- Record updated.
- Record deleted.
- Report exported.
- Backup created.
- Settings changed.
- Lookup value changed.

## Calculation strategy

Prefer calculations in this order:

1. SQL views for reusable data calculations.
2. SQL queries for report calculations.
3. Go backend services for complex procedural logic.
4. React only for display-level formatting and interaction.

Avoid duplicating the same calculation in multiple React screens.

## Indexing strategy

Indexes should be added for:

- Foreign keys.
- Common filter fields.
- Common search fields.
- Import batch IDs.
- Date fields used in reports.
- Status fields used in dashboards.

## Naming conventions

Use clear names.

Suggested prefixes:

```text
raw_       Raw imported data
lookup_    Dropdowns and reference tables
vw_        SQL views
cfg_       Configuration tables
audit_     Audit-related tables
rpt_       Report-builder tables
```

## Avoid

- Hard-coded dropdowns in React.
- Business rules scattered across many components.
- Cleaning source data directly in the front end.
- Deleting raw imported data without reason.
- Creating separate duplicate tables for every small screen.
- Using JSON as the main database when SQLite tables are better.
