-- Database Foundation Patterns
-- Use this file as a starting pattern, not as a finished app schema.

PRAGMA foreign_keys = ON;

-- ============================================================
-- Import batches
-- ============================================================

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

CREATE INDEX IF NOT EXISTS idx_import_batches_module_key
ON import_batches(module_key);

CREATE INDEX IF NOT EXISTS idx_import_batches_imported_at
ON import_batches(imported_at);

-- ============================================================
-- App settings
-- ============================================================

CREATE TABLE IF NOT EXISTS app_settings (
    setting_key TEXT PRIMARY KEY,
    setting_value TEXT,
    setting_type TEXT DEFAULT 'text',
    description TEXT,
    updated_at TEXT DEFAULT CURRENT_TIMESTAMP,
    updated_by TEXT
);

-- ============================================================
-- Generic lookup tables
-- ============================================================

CREATE TABLE IF NOT EXISTS lookup_groups (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_key TEXT NOT NULL UNIQUE,
    group_name TEXT NOT NULL,
    description TEXT,
    is_active INTEGER NOT NULL DEFAULT 1,
    display_order INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS lookup_values (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_key TEXT NOT NULL,
    value_key TEXT NOT NULL,
    display_name TEXT NOT NULL,
    description TEXT,
    display_order INTEGER DEFAULT 0,
    is_active INTEGER NOT NULL DEFAULT 1,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    updated_at TEXT,
    UNIQUE(group_key, value_key),
    FOREIGN KEY(group_key) REFERENCES lookup_groups(group_key)
);

CREATE INDEX IF NOT EXISTS idx_lookup_values_group_key
ON lookup_values(group_key);

CREATE INDEX IF NOT EXISTS idx_lookup_values_active_order
ON lookup_values(group_key, is_active, display_order);

-- ============================================================
-- Import field mappings
-- ============================================================

CREATE TABLE IF NOT EXISTS import_field_mappings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    module_key TEXT NOT NULL,
    source_column_name TEXT NOT NULL,
    target_field_name TEXT NOT NULL,
    target_data_type TEXT DEFAULT 'text',
    is_required INTEGER NOT NULL DEFAULT 0,
    default_value TEXT,
    transform_rule TEXT,
    is_active INTEGER NOT NULL DEFAULT 1,
    display_order INTEGER DEFAULT 0,
    UNIQUE(module_key, source_column_name, target_field_name)
);

CREATE INDEX IF NOT EXISTS idx_import_field_mappings_module_key
ON import_field_mappings(module_key);

-- ============================================================
-- Validation errors
-- ============================================================

CREATE TABLE IF NOT EXISTS validation_errors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    import_batch_id INTEGER,
    module_key TEXT NOT NULL,
    raw_table_name TEXT,
    raw_row_id INTEGER,
    source_row_number INTEGER,
    field_name TEXT,
    error_code TEXT NOT NULL,
    error_message TEXT NOT NULL,
    severity TEXT NOT NULL DEFAULT 'Error',
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(import_batch_id) REFERENCES import_batches(id)
);

CREATE INDEX IF NOT EXISTS idx_validation_errors_batch
ON validation_errors(import_batch_id);

CREATE INDEX IF NOT EXISTS idx_validation_errors_module
ON validation_errors(module_key);

-- ============================================================
-- Report builder
-- ============================================================

CREATE TABLE IF NOT EXISTS rpt_templates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    module_key TEXT NOT NULL,
    template_name TEXT NOT NULL,
    description TEXT,
    source_view_name TEXT NOT NULL,
    is_default INTEGER NOT NULL DEFAULT 0,
    is_active INTEGER NOT NULL DEFAULT 1,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    updated_at TEXT,
    UNIQUE(module_key, template_name)
);

CREATE TABLE IF NOT EXISTS rpt_template_columns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    template_id INTEGER NOT NULL,
    source_column_name TEXT NOT NULL,
    export_heading TEXT,
    display_order INTEGER NOT NULL DEFAULT 0,
    width_hint INTEGER,
    is_visible INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY(template_id) REFERENCES rpt_templates(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_rpt_template_columns_template
ON rpt_template_columns(template_id, display_order);

CREATE TABLE IF NOT EXISTS rpt_export_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    template_id INTEGER,
    module_key TEXT NOT NULL,
    export_format TEXT NOT NULL,
    file_name TEXT,
    row_count INTEGER DEFAULT 0,
    filter_summary TEXT,
    exported_at TEXT DEFAULT CURRENT_TIMESTAMP,
    exported_by TEXT,
    FOREIGN KEY(template_id) REFERENCES rpt_templates(id)
);

-- ============================================================
-- Audit log
-- ============================================================

CREATE TABLE IF NOT EXISTS audit_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_name TEXT,
    module_key TEXT,
    action_key TEXT NOT NULL,
    entity_name TEXT,
    entity_id TEXT,
    summary TEXT,
    old_value TEXT,
    new_value TEXT
);

CREATE INDEX IF NOT EXISTS idx_audit_log_event_at
ON audit_log(event_at);

CREATE INDEX IF NOT EXISTS idx_audit_log_module_action
ON audit_log(module_key, action_key);
