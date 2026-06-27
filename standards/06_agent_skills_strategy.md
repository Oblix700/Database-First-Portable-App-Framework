# Agent Skills Strategy

This standard defines how specialist AI skills should be used with this framework.

## Main idea

Do not collect hundreds of small disconnected skills just because they exist.

The preferred approach is one strong master operating method supported by a small number of focused skill modules.

## Recommended structure

Use a master skill called something like:

```text
Database-First Portable App Builder
```

This master skill should control the full flow:

1. Understand the app idea.
2. Design the database.
3. Design imports.
4. Design lookup and building-block tables.
5. Design UI and navigation.
6. Design reports and exports.
7. Review reuse opportunities.
8. Build in phases.
9. Test and optimise.
10. Prepare release notes and user guidance.

## Supporting skill modules

Instead of hundreds of skills, use a small set of practical modules:

```text
Database Architect
Import and Export Specialist
UI and UX Reviewer
Report Builder Specialist
Code Economy Reviewer
Testing and Release Reviewer
Security and Backup Reviewer
```

These modules are not separate random personalities. They are review lenses used by the master workflow.

## Why not hundreds of skills?

Too many small skills can create confusion.

Problems with too many skills:

- The AI may choose the wrong one.
- Instructions may conflict.
- The workflow becomes slower.
- The app style becomes inconsistent.
- The AI may over-engineer simple tasks.
- The user loses control of the build process.

## Research strategy for external skills

When reviewing GitHub skill repositories, evaluate them using these criteria:

1. Is the repository active?
2. Is it well documented?
3. Are the instructions clear?
4. Does it solve a real problem for this framework?
5. Can the idea work with Codex, Antigravity, or similar AI coding tools?
6. Does it improve planning, testing, code review, security, or reuse?
7. Does it reduce errors?
8. Does it avoid unnecessary complexity?
9. Can it be adapted into one of our focused modules?
10. Does it support offline, database-first, portable app development?

## External skill ideas worth studying

Useful categories to study:

- Code review skills.
- Security review skills.
- Testing skills.
- Specification-to-code checking.
- Database design review.
- Refactoring and duplication detection.
- Documentation generation.
- Release checklist skills.

## Recommended decision rule

Do not copy external skills directly into this framework without review.

Instead:

1. Read the external skill.
2. Extract the useful idea.
3. Rewrite it in the language of this framework.
4. Remove irrelevant content.
5. Add it to the correct local standard or module.
6. Test it on a real app build.

## Local master skill concept

The framework should eventually contain one master skill document:

```text
agent-skills/database_first_portable_app_builder.md
```

This file should be the main AI operating instruction for building apps in this style.

It should not replace the standards. It should orchestrate them.

## Skill review checklist

Before accepting a new skill into this repo, ask:

- Does it help us build faster?
- Does it improve accuracy?
- Does it reduce duplicate code?
- Does it improve data integrity?
- Does it improve testing?
- Does it improve security?
- Does it help non-coders control AI better?
- Does it fit the Wails, Go, React, TypeScript, SQLite, Tailwind, ECharts stack?
- Does it support offline-first portable apps?

If the answer is no, do not add it.
