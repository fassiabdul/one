<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Premium Dashboard</title>

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">

    <style>

        :root {
            --primary: #7c3aed;
            --primary-light: #a78bfa;
            --secondary: #06b6d4;

            --bg: #080b16;
            --sidebar: #0d1120;
            --card: rgba(255,255,255,0.055);
            --card-hover: rgba(255,255,255,0.09);

            --text: #f8fafc;
            --muted: #8f9bb8;
            --border: rgba(255,255,255,0.08);

            --success: #22c55e;
            --danger: #ef4444;
            --warning: #f59e0b;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Inter", sans-serif;
            background:
                radial-gradient(
                    circle at 80% 0%,
                    rgba(124,58,237,.18),
                    transparent 28%
                ),
                radial-gradient(
                    circle at 20% 100%,
                    rgba(6,182,212,.10),
                    transparent 25%
                ),
                var(--bg);

            color: var(--text);
            min-height: 100vh;
        }

        /* ================= SIDEBAR ================= */

        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 260px;
            height: 100vh;

            background: rgba(13,17,32,.92);
            backdrop-filter: blur(20px);

            border-right: 1px solid var(--border);

            padding: 25px 18px;

            z-index: 1000;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;

            padding: 10px 12px 35px;

            font-size: 21px;
            font-weight: 800;
        }

        .brand-icon {
            width: 40px;
            height: 40px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 12px;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    var(--secondary)
                );

            box-shadow:
                0 8px 30px rgba(124,58,237,.35);
        }

        .menu-title {
            color: #66708c;
            font-size: 11px;
            font-weight: 700;

            padding: 15px 13px 8px;

            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .menu a {
            display: flex;
            align-items: center;
            gap: 13px;

            padding: 13px 15px;
            margin: 5px 0;

            color: var(--muted);
            text-decoration: none;

            border-radius: 12px;

            transition: .25s;
        }

        .menu a:hover {
            color: white;
            background: var(--card-hover);
            transform: translateX(3px);
        }

        .menu a.active {
            color: white;

            background:
                linear-gradient(
                    100deg,
                    rgba(124,58,237,.9),
                    rgba(99,102,241,.7)
                );

            box-shadow:
                0 10px 25px rgba(124,58,237,.22);
        }

        .menu-icon {
            width: 20px;
            text-align: center;
            font-size: 17px;
        }

        /* ================= MAIN ================= */

        .main {
            margin-left: 260px;
            min-height: 100vh;
        }

        /* ================= TOPBAR ================= */

        .topbar {
            height: 80px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 35px;

            border-bottom: 1px solid var(--border);

            background: rgba(8,11,22,.55);
            backdrop-filter: blur(20px);

            position: sticky;
            top: 0;

            z-index: 500;
        }

        .search {
            width: 320px;

            display: flex;
            align-items: center;
            gap: 10px;

            padding: 11px 15px;

            background: var(--card);
            border: 1px solid var(--border);

            border-radius: 12px;

            color: var(--muted);
        }

        .search input {
            width: 100%;

            border: none;
            outline: none;

            background: transparent;
            color: white;

            font-size: 14px;
        }

        .user-area {
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .notification {
            width: 40px;
            height: 40px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 12px;

            background: var(--card);
            border: 1px solid var(--border);

            cursor: pointer;
        }

        .notification:hover {
            background: var(--card-hover);
        }

        .avatar {
            width: 42px;
            height: 42px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 50%;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #06b6d4
                );

            font-weight: 700;
        }

        /* ================= CONTENT ================= */

        .content {
            padding: 35px;
        }

        .welcome {
            margin-bottom: 30px;
        }

        .welcome h1 {
            font-size: 30px;
            font-weight: 800;
            letter-spacing: -1px;
        }

        .welcome p {
            color: var(--muted);
            margin-top: 7px;
        }

        /* ================= STAT CARDS ================= */

        .stats {
            display: grid;
            grid-template-columns:
                repeat(4, minmax(0, 1fr));

            gap: 20px;
        }

        .stat-card {
            position: relative;

            padding: 23px;

            border-radius: 18px;

            background: var(--card);
            border: 1px solid var(--border);

            overflow: hidden;

            transition: .3s;
        }

        .stat-card:hover {
            transform: translateY(-5px);
            background: var(--card-hover);

            box-shadow:
                0 20px 45px rgba(0,0,0,.25);
        }

        .stat-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .stat-icon {
            width: 45px;
            height: 45px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 13px;

            font-size: 20px;
        }

        .purple {
            color: #c4b5fd;
            background: rgba(124,58,237,.18);
        }

        .cyan {
            color: #67e8f9;
            background: rgba(6,182,212,.15);
        }

        .green {
            color: #86efac;
            background: rgba(34,197,94,.14);
        }

        .orange {
            color: #fdba74;
            background: rgba(245,158,11,.14);
        }

        .stat-title {
            color: var(--muted);
            font-size: 13px;
            margin-top: 18px;
        }

        .stat-value {
            font-size: 28px;
            font-weight: 800;
            margin-top: 7px;
        }

        .growth {
            margin-top: 10px;
            font-size: 12px;
        }

        .positive {
            color: var(--success);
        }

        .negative {
            color: var(--danger);
        }

        /* ================= GRID ================= */

        .dashboard-grid {
            display: grid;

            grid-template-columns:
                minmax(0, 2fr)
                minmax(300px, 1fr);

            gap: 22px;

            margin-top: 22px;
        }

        .panel {
            background: var(--card);

            border: 1px solid var(--border);

            border-radius: 18px;

            padding: 25px;

            backdrop-filter: blur(15px);
        }

        .panel-header {
            display: flex;
            align-items: center;
            justify-content: space-between;

            margin-bottom: 25px;
        }

        .panel-header h2 {
            font-size: 17px;
        }

        .panel-header span {
            color: var(--muted);
            font-size: 12px;
        }

        /* ================= CHART ================= */

        .chart {
            height: 250px;

            display: flex;
            align-items: end;

            gap: 13px;

            padding-top: 20px;
        }

        .bar {
            flex: 1;

            min-width: 10px;

            border-radius:
                8px 8px 3px 3px;

            background:
                linear-gradient(
                    180deg,
                    #8b5cf6,
                    #4f46e5
                );

            box-shadow:
                0 5px 20px rgba(124,58,237,.2);

            transition: .3s;
        }

        .bar:hover {
            background:
                linear-gradient(
                    180deg,
                    #22d3ee,
                    #7c3aed
                );

            transform: scaleY(1.04);
        }

        /* ================= ACTIVITY ================= */

        .activity {
            display: flex;
            align-items: center;
            gap: 13px;

            padding: 14px 0;

            border-bottom:
                1px solid rgba(255,255,255,.06);
        }

        .activity:last-child {
            border-bottom: none;
        }

        .activity-icon {
            width: 38px;
            height: 38px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 11px;

            background: rgba(124,58,237,.14);
            color: #c4b5fd;
        }

        .activity-text {
            flex: 1;
        }

        .activity-text strong {
            display: block;
            font-size: 13px;
        }

        .activity-text small {
            color: var(--muted);
            font-size: 11px;
        }

        /* ================= TABLE ================= */

        .table-panel {
            margin-top: 22px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            color: #727d9b;
            text-align: left;

            font-size: 11px;
            text-transform: uppercase;

            padding: 13px;

            border-bottom:
                1px solid var(--border);
        }

        td {
            padding: 17px 13px;

            font-size: 13px;

            border-bottom:
                1px solid rgba(255,255,255,.05);
        }

        .status {
            display: inline-block;

            padding: 5px 10px;

            border-radius: 20px;

            font-size: 10px;
            font-weight: 600;
        }

        .completed {
            color: #86efac;
            background: rgba(34,197,94,.12);
        }

        .pending {
            color: #fcd34d;
            background: rgba(245,158,11,.12);
        }

        /* ================= BUTTON ================= */

        .btn {
            border: none;

            padding: 10px 17px;

            border-radius: 10px;

            color: white;

            font-weight: 600;

            cursor: pointer;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #4f46e5
                );

            box-shadow:
                0 8px 20px rgba(124,58,237,.25);

            transition: .25s;
        }

        .btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 12px 30px rgba(124,58,237,.35);
        }

        /* ================= MOBILE ================= */

        @media(max-width: 1100px) {

            .stats {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .dashboard-grid {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width: 750px) {

            .sidebar {
                width: 70px;
                padding: 20px 10px;
            }

            .brand span,
            .menu-title,
            .menu a span {
                display: none;
            }

            .brand {
                justify-content: center;
            }

            .menu a {
                justify-content: center;
            }

            .main {
                margin-left: 70px;
            }

            .topbar {
                padding: 0 18px;
            }

            .search {
                width: 180px;
            }

            .content {
                padding: 20px;
            }

            .stats {
                grid-template-columns: 1fr;
            }

            .table-panel {
                overflow-x: auto;
            }

            table {
                min-width: 650px;
            }
        }

    </style>
</head>

<body>

<!-- ================= SIDEBAR ================= -->

<aside class="sidebar">

    <div class="brand">
        <div class="brand-icon">✦</div>
        <span>NovaPanel</span>
    </div>

    <div class="menu-title">Main Menu</div>

    <nav class="menu">

        <a href="#" class="active">
            <span class="menu-icon">⌂</span>
            <span>Dashboard</span>
        </a>

        <a href="#">
            <span class="menu-icon">◈</span>
            <span>Analytics</span>
        </a>

        <a href="#">
            <span class="menu-icon">♙</span>
            <span>Users</span>
        </a>

        <a href="#">
            <span class="menu-icon">▣</span>
            <span>Projects</span>
        </a>

        <a href="#">
            <span class="menu-icon">▤</span>
            <span>Reports</span>
        </a>

    </nav>

    <div class="menu-title">System</div>

    <nav class="menu">

        <a href="#">
            <span class="menu-icon">⚙</span>
            <span>Settings</span>
        </a>

        <a href="#">
            <span class="menu-icon">?</span>
            <span>Help Center</span>
        </a>

    </nav>

</aside>


<!-- ================= MAIN ================= -->

<main class="main">

    <!-- TOP BAR -->

    <header class="topbar">

        <div class="search">
            🔍
            <input
                type="text"
                placeholder="Search anything..."
            >
        </div>

        <div class="user-area">

            <div class="notification">
                🔔
            </div>

            <div class="avatar">
                A
            </div>

        </div>

    </header>


    <!-- CONTENT -->

    <div class="content">

        <div class="welcome">

            <h1>
                Good afternoon, Admin 👋
            </h1>

            <p>
                Here's what's happening with your platform today.
            </p>

        </div>


        <!-- STATISTICS -->

        <section class="stats">

            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon purple">
                        ₹
                    </div>

                </div>

                <div class="stat-title">
                    Total Revenue
                </div>

                <div class="stat-value">
                    ₹84,520
                </div>

                <div class="growth positive">
                    ↑ 12.5% this month
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon cyan">
                        ♙
                    </div>

                </div>

                <div class="stat-title">
                    Total Users
                </div>

                <div class="stat-value">
                    24,892
                </div>

                <div class="growth positive">
                    ↑ 8.2% this month
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon green">
                        ✓
                    </div>

                </div>

                <div class="stat-title">
                    Completed Projects
                </div>

                <div class="stat-value">
                    1,248
                </div>

                <div class="growth positive">
                    ↑ 18.4% this month
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon orange">
                        ⚡
                    </div>

                </div>

                <div class="stat-title">
                    Pending Tasks
                </div>

                <div class="stat-value">
                    86
                </div>

                <div class="growth negative">
                    ↓ 4.1% this month
                </div>

            </div>

        </section>


        <!-- CHART + ACTIVITY -->

        <section class="dashboard-grid">

            <div class="panel">

                <div class="panel-header">

                    <h2>Revenue Overview</h2>

                    <span>Last 12 months</span>

                </div>

                <div class="chart">

                    <div class="bar" style="height:35%"></div>
                    <div class="bar" style="height:52%"></div>
                    <div class="bar" style="height:42%"></div>
                    <div class="bar" style="height:67%"></div>
                    <div class="bar" style="height:56%"></div>
                    <div class="bar" style="height:75%"></div>
                    <div class="bar" style="height:62%"></div>
                    <div class="bar" style="height:82%"></div>
                    <div class="bar" style="height:70%"></div>
                    <div class="bar" style="height:90%"></div>
                    <div class="bar" style="height:78%"></div>
                    <div class="bar" style="height:96%"></div>

                </div>

            </div>


            <div class="panel">

                <div class="panel-header">
                    <h2>Recent Activity</h2>
                    <span>Today</span>
                </div>


                <div class="activity">

                    <div class="activity-icon">
                        ✓
                    </div>

                    <div class="activity-text">
                        <strong>Project completed</strong>
                        <small>2 minutes ago</small>
                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">
                        ♙
                    </div>

                    <div class="activity-text">
                        <strong>New user registered</strong>
                        <small>18 minutes ago</small>
                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">
                        $
                    </div>

                    <div class="activity-text">
                        <strong>Payment received</strong>
                        <small>42 minutes ago</small>
                    </div>

                </div>


                <div class="activity">

                    <div class="activity-icon">
                        !
                    </div>

                    <div class="activity-text">
                        <strong>Task requires attention</strong>
                        <small>1 hour ago</small>
                    </div>

                </div>

            </div>

        </section>


        <!-- TABLE -->

        <section class="panel table-panel">

            <div class="panel-header">

                <h2>Recent Projects</h2>

                <button class="btn">
                    + New Project
                </button>

            </div>


            <table>

                <thead>

                    <tr>
                        <th>Project</th>
                        <th>Client</th>
                        <th>Date</th>
                        <th>Budget</th>
                        <th>Status</th>
                    </tr>

                </thead>

                <tbody>

                    <tr>
                        <td>Website Redesign</td>
                        <td>Acme Corp</td>
                        <td>Sep 03, 2026</td>
                        <td>₹45,000</td>
                        <td>
                            <span class="status completed">
                                Completed
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td>Mobile Application</td>
                        <td>Tech Solutions</td>
                        <td>Sep 02, 2026</td>
                        <td>₹82,000</td>
                        <td>
                            <span class="status pending">
                                Pending
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td>CRM System</td>
                        <td>Global Ltd</td>
                        <td>Aug 31, 2026</td>
                        <td>₹1,20,000</td>
                        <td>
                            <span class="status completed">
                                Completed
                            </span>
                        </td>
                    </tr>

                </tbody>

            </table>

        </section>

    </div>

</main>

</body>
</html>
