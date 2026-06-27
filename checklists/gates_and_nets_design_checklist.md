# Gates and Nets Design Checklist

Use this checklist during planning, before coding starts.

## Gates: prevent bad input or bad changes

- [ ] App specification exists.
- [ ] Database plan exists.
- [ ] Import and validation plan exists.
- [ ] UI/navigation plan exists.
- [ ] Report/export plan exists.
- [ ] Build phase plan exists.
- [ ] Test plan exists.
- [ ] Reuse review completed.
- [ ] Database review completed.
- [ ] Release checklist selected.

## Data gates

- [ ] Imports go to raw tables first.
- [ ] Required fields are validated.
- [ ] Dates are validated.
- [ ] Numbers are validated.
- [ ] Lookup values are validated.
- [ ] Duplicates are detected.
- [ ] Bad rows are reported to the user.

## Code gates

- [ ] Existing code checked before new code is created.
- [ ] Duplicate logic avoided.
- [ ] Large files questioned.
- [ ] New dependencies justified.
- [ ] Database migrations planned.
- [ ] Main workflows have tests or manual checks.

## Nets: catch and recover from failures

- [ ] Local logs exist.
- [ ] Import batch history exists.
- [ ] Validation error history exists.
- [ ] Audit log exists where needed.
- [ ] Export history exists where useful.
- [ ] Backup process exists.
- [ ] Restore process exists.
- [ ] Rollback release package is kept.
- [ ] User-friendly error messages exist.

## Release nets

- [ ] Previous app version retained.
- [ ] Previous database backup retained.
- [ ] Change log written.
- [ ] Upgrade notes written.
- [ ] Known issues documented.

## Final question

Can a user recover if something goes wrong?

- [ ] Yes
- [ ] No

If no, do not release yet.
