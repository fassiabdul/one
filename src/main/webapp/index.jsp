<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Grand Dashboard</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Segoe UI", sans-serif;
        }

        body {
            min-height: 100vh;
            background: #0b1020;
            color: #fff;
        }

        .layout {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar */
        .sidebar {
            width: 260px;
            padding: 30px 20px;
            background: linear-gradient(180deg, #151b35, #0c1020);
            border-right: 1px solid rgba(255,255,255,.08);
        }

        .logo {
            font-size: 25px;
            font-weight: 800;
            margin-bottom: 45px;
            color: #8b5cf6;
        }

        .nav a {
            display: block;
            padding: 15px;
            margin: 8px 0;
            color: #aab2d5;
            text-decoration: none;
            border-radius: 12px;
            transition: .3s;
        }

        .nav a:hover,
        .nav a.active {
            color: white;
            background: linear-gradient(90deg, #7c3aed, #4f46e5);
            box-shadow: 0 10px 25px rgba(99, 70, 240, .3);
        }

        /* Main */
        .main {
            flex: 1;
            padding: 35px;
            background:
                radial-gradient(circle at 80% 10%, rgba(124,58,237,.2), transparent 30%),
                #0b1020;
        }

        .topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 35px;
        }

        .topbar h1 {
            font-size: 32px;
        }

        .profile {
            padding: 10px 18px;
            border-radius: 30px;
            background: rgba(255,255,255,.08);
        }

        /* Cards */
        .cards {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .card {
            padding: 25px;
            border-radius: 20px;
            background: rgba(255,255,255,.06);
            border: 1px solid rgba(255,255,255,.08);
            backdrop-filter: blur(15px);
            transition: .3s;
        }

        .card:hover {
            transform: translateY(-7px);
            border-color: #8b5cf6;
            box-shadow: 0 15px 40px rgba(0,0,0,.3);
        }

        .card .label {
            color: #929abd;
            font-size: 14px;
        }

        .card .value {
            font-size: 32px;
            font-weight: 800;
            margin-top: 10px;
        }

        .purple { color: #a78bfa; }
        .green { color: #34d399; }
        .blue { color: #60a5fa; }
        .orange { color: #fb923c; }

        /* Content */
        .content {
            margin-top: 25px;
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 25px;
        }

        .panel {
            padding: 25px;
            border-radius: 20px;
            background: rgba(255,255,255,.05);
            border: 1px solid rgba(255,255,255,.08);
        }

        .panel h2 {
            margin-bottom: 20px;
        }

        .progress {
            height: 12px;
            background: #252b45;
            border-radius: 20px;
            overflow: hidden;
            margin: 15px 0 25px;
        }

        .progress span {
            display: block;
            height: 100%;
            width: 78%;
            background: linear-gradient(90deg, #7c3aed, #06b6d4);
            border-radius: inherit;
        }

        @media(max-width: 1000px) {
            .cards {
                grid-template-columns: repeat(2, 1fr);
            }

            .content {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width: 700px) {
            .sidebar {
                display: none;
            }

            .main {
                padding: 20px;
            }

            .cards {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<div class="layout">

    <aside class="sidebar">
        <div class="logo">✦ GRAND UI</div>

        <nav class="nav">
            <a href="#" class="active">⌂ Dashboard</a>
            <a href="#">◈ Analytics</a>
            <a href="#">◉ Users</a>
            <a href="#">▣ Projects</a>
            <a href="#">⚙ Settings</a>
        </nav>
    </aside>

    <main class="main">

        <div class="topbar">
            <div>
                <h1>Welcome back 👋</h1>
                <p style="color:#8992b5;margin-top:7px;">
                    Here's what's happening today.
                </p>
            </div>

            <div class="profile">
                Admin
            </div>
        </div>

        <section class="cards">

            <div class="card">
                <div class="label">Total Revenue</div>
                <div class="value purple">₹84,520</div>
            </div>

            <div class="card">
                <div class="label">Users</div>
                <div class="value green">12,840</div>
            </div>

            <div class="card">
                <div class="label">Projects</div>
                <div class="value blue">248</div>
            </div>

            <div class="card">
                <div class="label">Growth</div>
                <div class="value orange">+28.4%</div>
            </div>

        </section>

        <section class="content">

            <div class="panel">
                <h2>Project Performance</h2>

                <p style="color:#9ba4c5;">
                    Overall project completion
                </p>

                <div class="progress">
                    <span></span>
                </div>

                <h1>78%</h1>
            </div>

            <div class="panel">
                <h2>Quick Overview</h2>

                <p style="color:#9ba4c5;line-height:2;">
                    Active projects: <b>24</b><br>
                    New users: <b>1,284</b><br>
                    Pending tasks: <b>18</b><br>
                    System status: <b class="green">Online</b>
                </p>
            </div>

        </section>

    </main>

</div>

</body>
</html>
