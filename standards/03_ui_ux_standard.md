# UI and UX Standard

This standard defines the preferred user interface style for apps built from this framework.

## Overall style

The UI must feel like a serious operational desktop application, not a toy demo.

Preferred style:

- Clear structure.
- Rows and columns.
- Tables.
- Hierarchy.
- Drill-down.
- Expand and collapse.
- Practical dashboards.
- Minimal fluff.
- Strong reporting.

## Navigation

The standard layout should normally use a left-side navigation bar.

Required navigation features where practical:

- Collapsible sidebar.
- Arrow button to collapse and expand.
- Expandable nav groups.
- Clear main sections.
- Clear sub-sections.
- Active page indicator.
- Icons where useful, but icons must not replace clear labels.

## Headings and sections

Pages should use clear headings and subheadings.

Where pages contain many groups, use collapsible sections.

Examples:

- Dashboard Summary.
- Active Records.
- Filters.
- Import History.
- Validation Errors.
- Report Builder.
- Admin Settings.

## Data display

The main working view should normally be table-based.

Preferred patterns:

- Data table.
- Master-detail layout.
- Row click opens popup or drawer.
- Expandable rows where useful.
- Drill-down hierarchy.
- Column filters.
- Search bar.
- Saved filters where useful.

## Cards

Cards are allowed, but must not take over the whole app.

Use cards for:

- KPI summaries.
- Dashboard highlights.
- Quick status counts.
- Warnings.

Do not use cards for data that should be shown in rows and columns.

## Popup and drawer pattern

Clicking a row may open a popup, drawer, or detail panel.

A detail view should normally include:

- Summary information.
- Tabs where needed.
- Related records.
- Audit/history where useful.
- Edit button if user has permission.
- Export/print actions where useful.

## Forms

Forms must be practical and easy to capture.

Preferred form features:

- Grouped fields.
- Required field markers.
- Dropdowns from SQL lookup tables.
- Date pickers.
- Validation messages close to the field.
- Save, cancel, and reset actions.
- Clear distinction between create and edit modes.

## Calendars and date pickers

Calendar components should be reusable.

Use one shared date-picker pattern instead of recreating a new date picker for every page.

Where relevant, calendar views may show:

- Bookings.
- Occupancy.
- Public holidays.
- Deadlines.
- SLA dates.
- Planning cycles.

## Zoom controls

Apps should support zoom controls where practical.

Preferred pattern:

- Minus button.
- Current zoom percentage.
- Plus button.
- Reset to 100%.
- 10% increments.
- Sensible minimum and maximum, such as 80% to 140%.

## Light and dark mode

Where theme support is included, the same UI must work properly in light and dark mode.

Icons and status colours must remain readable in both modes.

## Avoid

- Flashy UI with weak data handling.
- Everything as cards.
- Recreating the same component for each page.
- Hard-coded dropdowns.
- Hidden business logic in page components.
- Overly large components that are difficult to maintain.
