-- Migration Patterns for SQLite Apps
-- Use this as a reference pattern for version-controlled schema changes.

PRAGMA foreign_keys = ON;

-- ============================================================
-- Migration history table
-- ============================================================

CREATE TABLE IF NOT EXISTS schema_migrations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    migration_key TEXT NOT NULL UNIQUE,
    description TEXT,
    applied_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    applied_by_app_version TEXT,
    checksum TEXT,
    status TEXT NOT NULL DEFAULT 'Applied',
    notes TEXT
);

-- ============================================================
-- App and database version tracking
-- ============================================================

CREATE TABLE IF NOT EXISTS app_version_info (
    id INTEGER PRIMARY KEY CHECK (id = 1),
    app_version TEXT,
    database_version TEXT,
    updated_at TEXT DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);

INSERT OR IGNORE INTO app_version_info (id, app_version, database_version, notes)
VALUES (1, '0.0.0', '0', 'Initial version record');

-- ============================================================
-- Example migration entry
-- ============================================================

-- INSERT INTO schema_migrations (migration_key, description, applied_by_app_version)
-- VALUES ('001_initial_schema', 'Create initial app schema', '0.1.0');

-- ============================================================
-- Expand, migrate, contract pattern
-- ============================================================

-- 1. Expand: add new tables/columns without deleting old ones.
-- 2. Migrate: copy or transform data into the new structure.
-- 3. Verify: check counts and validation results.
-- 4. Contract: remove old structures only after the new version is stable.

-- This is safer than changing and deleting everything in one step.

-- ============================================================
-- Backup reminder
-- ============================================================

-- Before risky migrations, the app should create a database backup.
-- Store backups in a predictable local backup folder.
