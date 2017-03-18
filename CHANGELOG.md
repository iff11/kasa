# Change Log

## [Unreleased]
### Added
 - Every entity has configurable VAT-ID, premises ID, register ID, send to EET toggle. Set it in admin->company->entities.
 - Every entity has hidden field for EET certificate & EET certificate password. This has to be set manually directly in database.
 - When *closing* visit, system will check whether it should send receipt to EET, if yes then the request(s) are made and corresponding FIK retrieved & stored. FIK is then displayed on receipt. System will store whole response from EET for future needs.
 - `<title>` HTML tag of the page is now "kasa | [your-company-name]". You can change your company name in admin->company
 - Added Rollbar integration - tracking of errors.
 - Application checks every 10 minutes whether there has been new version released. If yes, then significant notification on top of screen is displayed asking the user to reload page.

### Changed
 - Introduced new caching table - revenue. Sum per entity on each receipt is displayed in such way. As with every change - hope there are no bugs.
 - Admin->employees->employee->employee shares in right column: Sum row is not more explicitly marked.
 - Updated Skylight integration - performance tracking.
 - In demo application, customers are created in a way that they have birthday: tomorrow, in a week, in a month.
 - Admin->Customer is by default sorted by last name.

### Fixed
 - When note field in visit loses focus, the value is saved. Corresponding notification message is now translated.
 - During visit creation the select box for items had "null" string when there was no barcode. Now it's hidden in such case.
 - All avatars in the system are now round in all cases. If the original picture is non-rectangular, it will be deformed.
