# Video Adaptation: From Vibe-Coded Toys to Real Apps

This note captures the useful lessons from the video discussion and adapts them to this framework.

It is not a verbatim transcript. It is a practical interpretation for database-first, offline-first, portable desktop apps.

## Main mental model: gates and nets

A gate prevents bad work from entering the app.

A net catches problems when something still goes wrong.

Good apps need both.

For this framework:

- Gates include specifications, database plans, migrations, tests, reviews, indexes, and release checklists.
- Nets include backups, audit logs, error logs, validation reports, rollback packages, and user-friendly failure handling.

## 1. Spec-driven development

### Lesson

Do not let AI code from vague instructions.

### Framework use

Every app must start with:

- App requirements.
- Database plan.
- Import and validation plan.
- UI/navigation plan.
- Report/export plan.
- Build phases.
- Test plan.

### Practical result

The AI has a contract. If it drifts, the user can point back to the specification.

## 2. Project documentation

### Lesson

AI makes stale assumptions when important context is not written down.

### Framework use

Document:

- Anti-patterns.
- Non-inferable rules.
- Business meanings.
- Data meanings.
- Import assumptions.
- UI preferences.
- Reusable patterns.

### Practical result

The AI does not have to guess the same things repeatedly.

## 3. Version control

### Lesson

Small controlled commits make rollback and review easier.

### Framework use

For serious builds:

- Use branches.
- Use atomic commits.
- Keep one logical change per commit.
- Do not mix unrelated fixes.
- Explain what changed after each phase.

### Practical result

If the AI breaks something, the bad change can be isolated.

## 4. Testing

### Lesson

Tests guide the AI and prevent repeated mistakes.

### Framework use

Use tests or manual checklists for:

- Imports.
- Validation.
- Clean table generation.
- Filters and sorting.
- Reports.
- Exports.
- Backup and restore.
- Mission-critical workflows.

### Practical result

The app becomes safer as it grows.

## 5. Authentication and authorisation

### Lesson

Identity and permission are different.

### Framework use

For each app, decide:

- Is login needed?
- Are roles needed?
- Which users can edit?
- Which users can only view?
- Which users can export?
- Which admin screens are restricted?

### Practical result

Users do not accidentally get too much access.

## 6. Error handling

### Lesson

Apps should fail gracefully.

### Framework use

Expected errors should show useful messages. Unexpected errors should be logged locally and not crash the whole app where avoidable.

Examples:

- Wrong Excel headings.
- Bad date.
- Duplicate key.
- Missing file.
- Database locked.
- Export folder not writable.

### Practical result

Users know what to fix, and technical details are still available for debugging.

## 7. Databases

### Lesson

Database design is not optional. Migrations, indexing, and query quality matter.

### Framework use

Require:

- Raw import tables.
- Clean operational tables.
- Primary keys.
- Unique keys.
- Foreign keys where practical.
- Indexes for quick filter and sort.
- SQL views for repeated calculations.
- Migration history.
- Backup before risky changes.

### Practical result

The app stays fast, consistent, and maintainable.

## 8. Security

### Lesson

AI-generated apps can miss basic safety problems.

### Framework use

Review:

- Local data exposure.
- Unsafe imports.
- Unsafe file paths.
- Role permissions.
- Delete confirmations.
- Export access.
- Backup and restore.
- Audit logging.

### Practical result

Offline apps are still treated as serious data systems.

## 9. Hosting or distribution

### Lesson

The app must have a clear delivery method.

### Framework adaptation

For this framework, hosting usually means local distribution:

- Folder copy.
- USB copy.
- Shared network folder.
- Release zip.
- Signed executable where possible.

### Practical result

Users know how to run the app and how to receive updates.

## 10. Deployment or release

### Lesson

A release should pass checks before users get it.

### Framework use

Before release:

- Build succeeds.
- App starts offline.
- Database migrates.
- Imports tested.
- Exports tested.
- Backup/restore tested.
- User guide updated.
- Change log updated.

### Practical result

The user receives a controlled release, not a random folder of files.

## 11. Observability

### Lesson

You need evidence when problems happen.

### Framework adaptation

Offline observability includes:

- Local log files.
- Audit log.
- Import batch history.
- Validation error history.
- Export history.
- App version.
- Database version.

### Practical result

When something goes wrong, the app can tell you what happened.

## Framework conclusion

The video supports the direction of this repo.

This framework should not simply help AI build faster. It should force AI to build with:

- Better specifications.
- Better database design.
- Better reuse.
- Better testing.
- Better release discipline.
- Better failure handling.
- Better documentation.
