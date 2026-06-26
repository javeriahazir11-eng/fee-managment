Mobile Dashboard UX Spec — Premium Mobile-First Design

Goal
- Provide a separate, premium mobile dashboard for school admins.
- Keep existing desktop frontend unchanged; mobile should use a new, optimized layout and interactions.

Design Principles
- Mobile-first: optimize for single-column vertical flow, large touch targets, and fast scanning.
- Progressive enhancement: include smooth micro-interactions and subtle animations.
- Clarity & hierarchy: prioritize key admin tasks (quick payments, notifications, attendance, reports).
- Performance: lightweight assets, minimal blocking scripts.

Target Devices
- Phones (360–430px logical width), single-column; also scales to compact tablets in portrait.

Core Screens
- Home (dashboard): summary cards, top KPIs, quick actions, recent activity.
- Payments: quick-add payment, recent payments list, filters.
- Students: search, quick profiles, recent arrivals.
- Notifications: alerts, receipts, approvals.
- Profile/Settings: account switch, school settings, logout.

Key Components
- App header: compact, shows school name, notifications, hamburger/profile.
- KPI strip: horizontally scrollable small cards (Due, Collected, Pending, Active Students).
- Quick actions: large icon buttons (Add Payment, Scan Receipt, Send Notice).
- Recent activity list: condensed rows with avatars, type, brief text, time.
- Floating Action Button (FAB): primary action (Add Payment) always available.
- Bottom tab navigation: Home / Payments / Students / Reports / Profile.

Navigation & Flows
- Persistent bottom tab bar for main areas.
- FAB for contextual quick-add.
- Drawer (from left) for secondary navigation and school switch.
- Lightweight modal sheets for quick forms (add payment) to avoid full page load.

Visual Style (Premium)
- Palette: deep indigo gradient header (#2E2B8A -> #5B4AE0), soft neutrals for backgrounds (#F7F8FB), accent (gold #FFB800).
- Typography: clear sans (e.g., Inter / system-ui), 16px base, 18-20px headings.
- Elevation: glass-morphism cards with subtle blur and soft shadows.
- Motion: subtle easing, 120–240ms durations for key interactions.

Accessibility
- Contrast >= 4.5:1 for text on backgrounds.
- Touch targets >= 44x44px.
- Semantic markup and reachable controls.

Data & API Notes
- KPIs endpoint: /api/mobile/kpis — aggregated data for small payloads.
- Recent activity: /api/mobile/activity?limit=20
- Quick-add payment: POST /api/mobile/payments (returns updated KPI snapshot)
- Pagination via cursors for lists.

Integration Notes
- Keep desktop components untouched; serve mobile app view via user-agent or a dedicated mobile route (e.g., /m/dashboard) or feature-toggle.
- Add a screen-detection toggle in the admin settings to force mobile view for testing.

Handoff Checklist
- Provide Figma/Sketch mockups (recommend). If not possible, export PNG wireframes.
- Provide JSON API contract (sample payloads).
- Provide responsive prototype HTML/CSS for quick QA (included in prototype/ directory).

Wireframe (vertical flow)
- Header (school name + notif) 48px
- KPI strip (h-scroll) 1 row
- Quick actions (2x2 grid) 2 rows
- Recent activity (list) scroll
- FAB bottom-right + bottom navigation

Notes
- Desktop remains exactly as-is. Mobile route serves this new UI only.
- Recommend A/B rollout behind a feature flag.
