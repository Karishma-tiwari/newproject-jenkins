```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Premium E-Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        :root {
            --primary: #111827;
            --primary-light: #1f2937;
            --accent: #6366f1;
            --accent-2: #8b5cf6;
            --cyan: #06b6d4;
            --white: #ffffff;
            --bg: #f7f8fc;
            --surface: #ffffff;
            --muted: #6b7280;
            --border: #e5e7eb;
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;
            --radius: 18px;
            --container: 1240px;
            --shadow: 0 10px 35px rgba(15, 23, 42, 0.07);
            --shadow-hover: 0 20px 45px rgba(15, 23, 42, 0.13);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            color: var(--primary);
            background: var(--bg);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 22px;
        }

        /* =========================
           TOP BAR
        ========================= */

        .top-bar {
            background: #0b1120;
            color: #dbeafe;
            font-size: 13px;
            padding: 9px 0;
        }

        .top-bar-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
        }

        .top-bar-left,
        .top-bar-right {
            display: flex;
            gap: 18px;
            align-items: center;
        }

        .top-bar i {
            color: #818cf8;
            margin-right: 5px;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,.94);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(229,231,235,.8);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: Poppins, sans-serif;
            font-size: 23px;
            font-weight: 800;
            white-space: nowrap;
        }

        .brand-logo {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 12px;
            color: white;
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
            box-shadow: 0 8px 20px rgba(99,102,241,.3);
        }

        .brand span:last-child {
            color: var(--accent);
        }

        .main-nav {
            display: flex;
            align-items: center;
            flex: 1;
        }

        .main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
        }

        .main-nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 13px;
            border-radius: 10px;
            color: #374151;
            font-size: 14px;
            font-weight: 600;
            transition: .2s;
        }

        .main-nav a:hover,
        .main-nav a.active {
            background: #eef2ff;
            color: var(--accent);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search-box {
            width: 260px;
            height: 43px;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 14px;
            background: #f3f4f6;
            border: 1px solid transparent;
            border-radius: 12px;
            transition: .2s;
        }

        .search-box:focus-within {
            background: white;
            border-color: #c7d2fe;
            box-shadow: 0 0 0 4px #eef2ff;
        }

        .search-box i {
            color: #9ca3af;
        }

        .search-box input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            font-size: 13px;
        }

        .header-icon {
            position: relative;
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border: 0;
            background: #f3f4f6;
            color: #374151;
            border-radius: 12px;
            transition: .2s;
        }

        .header-icon:hover {
            background: #eef2ff;
            color: var(--accent);
        }

        .cart-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: var(--danger);
            color: white;
            font-size: 10px;
            font-weight: 700;
            border: 2px solid white;
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border: 0;
            border-radius: 10px;
            background: #f3f4f6;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            padding: 30px 0 0;
        }

        .hero-box {
            min-height: 520px;
            position: relative;
            overflow: hidden;
            border-radius: 28px;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg,
                    rgba(8,15,35,.94) 0%,
                    rgba(8,15,35,.82) 40%,
                    rgba(8,15,35,.15) 100%),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
                center/cover;
        }

        .hero-content {
            max-width: 650px;
            padding: 70px;
            color: white;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 13px;
            margin-bottom: 20px;
            border: 1px solid rgba(255,255,255,.2);
            background: rgba(255,255,255,.1);
            backdrop-filter: blur(8px);
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: .08em;
        }

        .hero-label i {
            color: #a5b4fc;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(38px, 5vw, 64px);
            line-height: 1.08;
            letter-spacing: -2px;
            margin-bottom: 18px;
        }

        .hero h1 span {
            background: linear-gradient(90deg, #a5b4fc, #67e8f9);
            -webkit-background-clip: text;
            color: transparent;
        }

        .hero p {
            max-width: 580px;
            color: #d1d5db;
            font-size: 16px;
            margin-bottom: 30px;
        }

        .hero-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: 0;
            min-height: 46px;
            padding: 0 20px;
            border-radius: 12px;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            gap: 9px;
            font-weight: 700;
            font-size: 14px;
            transition: .2s;
        }

        .btn-primary {
            color: white;
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
            box-shadow: 0 10px 25px rgba(99,102,241,.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 14px 30px rgba(99,102,241,.4);
        }

        .btn-light {
            color: white;
            border: 1px solid rgba(255,255,255,.22);
            background: rgba(255,255,255,.08);
            backdrop-filter: blur(8px);
        }

        .btn-light:hover {
            background: rgba(255,255,255,.16);
        }

        /* =========================
           SECTION
        ========================= */

        .section {
            padding: 72px 0 0;
        }

        .section-heading {
            display: flex;
            justify-content: space-between;
            align-items: end;
            margin-bottom: 25px;
            gap: 20px;
        }

        .eyebrow {
            color: var(--accent);
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: .12em;
            margin-bottom: 6px;
        }

        .section-heading h2 {
            font-family: Poppins, sans-serif;
            font-size: 28px;
            letter-spacing: -.6px;
        }

        .section-heading p {
            color: var(--muted);
            font-size: 14px;
            margin-top: 5px;
        }

        .view-all {
            color: var(--accent);
            font-size: 13px;
            font-weight: 700;
            white-space: nowrap;
        }

        /* =========================
           CATEGORIES
        ========================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .category {
            padding: 22px 14px;
            text-align: center;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            transition: .25s;
            cursor: pointer;
        }

        .category:hover {
            transform: translateY(-5px);
            border-color: #c7d2fe;
            box-shadow: var(--shadow-hover);
        }

        .category-icon {
            width: 58px;
            height: 58px;
            display: grid;
            place-items: center;
            margin: 0 auto 13px;
            border-radius: 17px;
            color: var(--accent);
            background: #eef2ff;
            font-size: 21px;
        }

        .category:nth-child(2) .category-icon {
            color: #0891b2;
            background: #ecfeff;
        }

        .category:nth-child(3) .category-icon {
            color: #db2777;
            background: #fdf2f8;
        }

        .category:nth-child(4) .category-icon {
            color: #ea580c;
            background: #fff7ed;
        }

        .category:nth-child(5) .category-icon {
            color: #059669;
            background: #ecfdf5;
        }

        .category:nth-child(6) .category-icon {
            color: #7c3aed;
            background: #f5f3ff;
        }

        .category h3 {
            font-size: 14px;
            margin-bottom: 4px;
        }

        .category p {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           PRODUCTS
        ========================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            position: relative;
            overflow: hidden;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            transition: .25s;
        }

        .product:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .product-image {
            position: relative;
            height: 245px;
            overflow: hidden;
            background: #f8fafc;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .45s;
        }

        .product:hover .product-image img {
            transform: scale(1.06);
        }

        .badge {
            position: absolute;
            left: 12px;
            top: 12px;
            z-index: 2;
            padding: 6px 9px;
            border-radius: 7px;
            color: white;
            background: var(--accent);
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .badge.sale {
            background: var(--danger);
        }

        .wishlist {
            position: absolute;
            right: 12px;
            top: 12px;
            z-index: 2;
            width: 36px;
            height: 36px;
            border: 0;
            border-radius: 50%;
            background: rgba(255,255,255,.92);
            color: #6b7280;
            display: grid;
            place-items: center;
            transition: .2s;
        }

        .wishlist:hover,
        .wishlist.active {
            color: var(--danger);
        }

        .product-info {
            padding: 17px;
        }

        .product-category {
            color: var(--accent);
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: .08em;
            margin-bottom: 6px;
        }

        .product-title {
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 12px;
            margin-bottom: 13px;
        }

        .stars {
            color: #f59e0b;
        }

        .review-count {
            color: var(--muted);
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            display: block;
            color: #9ca3af;
            text-decoration: line-through;
            font-size: 11px;
            font-weight: 500;
        }

        .add-cart {
            width: 40px;
            height: 40px;
            border: 0;
            border-radius: 11px;
            color: white;
            background: var(--primary);
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--accent);
            transform: scale(1.05);
        }

        /* =========================
           FLASH SALE
        ========================= */

        .deal {
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            border-radius: 25px;
            background: #111827;
            color: white;
        }

        .deal-image {
            min-height: 400px;
            background:
                linear-gradient(90deg, rgba(17,24,39,.1), rgba(17,24,39,.2)),
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
                center/cover;
        }

        .deal-content {
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-tag {
            color: #a5b4fc;
            font-size: 12px;
            font-weight: 800;
            letter-spacing: .12em;
            text-transform: uppercase;
            margin-bottom: 12px;
        }

        .deal h2 {
            font-family: Poppins, sans-serif;
            font-size: 36px;
            line-height: 1.1;
            margin-bottom: 12px;
        }

        .deal p {
            color: #9ca3af;
            font-size: 14px;
        }

        .timer {
            display: flex;
            gap: 9px;
            margin: 25px 0;
        }

        .time-box {
            min-width: 68px;
            padding: 11px 8px;
            border-radius: 10px;
            text-align: center;
            background: #1f2937;
            border: 1px solid #374151;
        }

        .time-box strong {
            display: block;
            font-size: 20px;
        }

        .time-box span {
            color: #9ca3af;
            font-size: 9px;
            text-transform: uppercase;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .deal-price strong {
            font-size: 30px;
        }

        .deal-price del {
            color: #6b7280;
        }

        /* =========================
           BENEFITS
        ========================= */

        .benefits {
            margin-top: 60px;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            border: 1px solid var(--border);
            border-radius: 18px;
            background: white;
        }

        .benefit {
            padding: 25px;
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .benefit + .benefit {
            border-left: 1px solid var(--border);
        }

        .benefit-icon {
            width: 45px;
            height: 45px;
            display: grid;
            place-items: center;
            flex-shrink: 0;
            border-radius: 12px;
            background: #eef2ff;
            color: var(--accent);
        }

        .benefit strong {
            display: block;
            font-size: 13px;
            margin-bottom: 2px;
        }

        .benefit span {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .testimonial {
            padding: 25px;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
        }

        .testimonial-stars {
            color: #f59e0b;
            margin-bottom: 14px;
            font-size: 13px;
        }

        .testimonial p {
            color: #4b5563;
            font-size: 13px;
            line-height: 1.8;
            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .customer img {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .customer strong {
            font-size: 12px;
        }

        .customer span {
            display: block;
            color: var(--muted);
            font-size: 10px;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            position: relative;
            overflow: hidden;
            padding: 55px;
            text-align: center;
            border-radius: 24px;
            color: white;
            background:
                radial-gradient(circle at 10% 20%, rgba(99,102,241,.35), transparent 30%),
                radial-gradient(circle at 90% 80%, rgba(6,182,212,.25), transparent 30%),
                #111827;
        }

        .newsletter h2 {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .newsletter p {
            color: #9ca3af;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .newsletter-form {
            max-width: 480px;
            margin: auto;
            display: flex;
            padding: 5px;
            background: white;
            border-radius: 13px;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 0;
            border: 0;
            outline: 0;
            padding: 0 14px;
            font-size: 13px;
        }

        .newsletter-form button {
            flex-shrink: 0;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            margin-top: 75px;
            padding: 55px 0 25px;
            background: #0b1120;
            color: white;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 50px;
        }

        .footer-brand p {
            max-width: 330px;
            margin-top: 15px;
            color: #9ca3af;
            font-size: 13px;
            line-height: 1.8;
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 20px;
        }

        .social {
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 9px;
            background: #1f2937;
            color: #d1d5db;
            transition: .2s;
        }

        .social:hover {
            background: var(--accent);
            color: white;
        }

        .footer-column h4 {
            font-size: 13px;
            margin-bottom: 17px;
        }

        .footer-column a {
            display: block;
            color: #9ca3af;
            font-size: 12px;
            margin-bottom: 11px;
        }

        .footer-column a:hover {
            color: white;
        }

        .copyright {
            border-top: 1px solid #1f2937;
            margin-top: 45px;
            padding-top: 22px;
            text-align: center;
            color: #6b7280;
            font-size: 11px;
        }

        /* =========================
           MOBILE MENU
        ========================= */

        .mobile-menu {
            display: none;
            padding: 10px 22px 20px;
            border-top: 1px solid var(--border);
            background: white;
        }

        .mobile-menu a {
            display: block;
            padding: 11px 0;
            font-size: 14px;
            font-weight: 600;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 1100px) {

            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .header-inner {
                gap: 12px;
            }

            .header-right {
                margin-left: auto;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .benefits {
                grid-template-columns: repeat(2, 1fr);
            }

            .benefit:nth-child(3) {
                border-left: 0;
                border-top: 1px solid var(--border);
            }

            .benefit:nth-child(4) {
                border-top: 1px solid var(--border);
            }
        }

        @media (max-width: 800px) {

            .top-bar {
                display: none;
            }

            .search-box {
                width: 180px;
            }

            .hero-box {
                min-height: 480px;
            }

            .hero-content {
                padding: 45px 35px;
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 260px;
            }

            .deal-content {
                padding: 35px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 620px) {

            .container {
                padding: 0 16px;
            }

            .header-inner {
                min-height: 68px;
            }

            .brand {
                font-size: 19px;
            }

            .brand-logo {
                width: 36px;
                height: 36px;
            }

            .search-box {
                display: none;
            }

            .header-icon {
                width: 38px;
                height: 38px;
            }

            .hero {
                padding-top: 16px;
            }

            .hero-box {
                min-height: 500px;
                border-radius: 20px;
                background-position: 65% center;
            }

            .hero-content {
                padding: 35px 25px;
            }

            .hero h1 {
                font-size: 38px;
                letter-spacing: -1px;
            }

            .hero p {
                font-size: 14px;
            }

            .section {
                padding-top: 55px;
            }

            .section-heading {
                align-items: flex-start;
            }

            .section-heading h2 {
                font-size: 23px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }

            .product-image {
                height: 175px;
            }

            .product-info {
                padding: 13px;
            }

            .product-title {
                font-size: 12px;
            }

            .price {
                font-size: 15px;
            }

            .add-cart {
                width: 35px;
                height: 35px;
            }

            .deal h2 {
                font-size: 28px;
            }

            .timer {
                gap: 5px;
            }

            .time-box {
                min-width: 57px;
            }

            .benefits {
                grid-template-columns: 1fr;
            }

            .benefit + .benefit,
            .benefit:nth-child(3),
            .benefit:nth-child(4) {
                border-left: 0;
                border-top: 1px solid var(--border);
            }

            .newsletter {
                padding: 40px 20px;
            }

            .newsletter h2 {
                font-size: 25px;
            }

            .newsletter-form {
                background: transparent;
                display: flex;
                flex-direction: column;
                gap: 8px;
            }

            .newsletter-form input {
                height: 46px;
                border-radius: 10px;
            }

            .newsletter-form button {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 35px 20px;
            }

            .footer-brand {
                grid-column: 1 / -1;
            }
        }

        @media (max-width: 400px) {

            .products {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 230px;
            }

            .categories {
                gap: 10px;
            }

            .category {
                padding: 18px 10px;
            }
        }
    </style>
</head>

<body>

    <!-- TOP BAR -->
    <div class="top-bar">
        <div class="container top-bar-inner">
            <div class="top-bar-left">
                <span>
                    <i class="fa-solid fa-truck-fast"></i>
                    Free shipping on orders over $50
                </span>
                <span>
                    <i class="fa-solid fa-shield-halved"></i>
                    Secure shopping
                </span>
            </div>

            <div class="top-bar-right">
                <span>Help Center</span>
                <span>Track Order</span>
            </div>
        </div>
    </div>

    <!-- HEADER -->
    <header>
        <div class="container header-inner">

            <button class="mobile-toggle" id="mobileToggle">
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="brand">
                <span class="brand-logo">
                    <i class="fa-solid fa-bag-shopping"></i>
                </span>
                Nexus<span>Shop</span>
            </a>

            <nav class="main-nav">
                <ul>
                    <li>
                        <a href="#" class="active">
                            <i class="fa-solid fa-house"></i>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="#categories">
                            Categories
                        </a>
                    </li>
                    <li>
                        <a href="#products">
                            Trending
                        </a>
                    </li>
                    <li>
                        <a href="#deals">
                            Deals
                        </a>
                    </li>
                    <li>
                        <a href="#about">
                            About
                        </a>
                    </li>
                </ul>
            </nav>

            <div class="header-right">

                <div class="search-box">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input
                        type="search"
                        id="searchInput"
                        placeholder="Search products..."
                    >
                </div>

                <button class="header-icon">
                    <i class="fa-regular fa-user"></i>
                </button>

                <button class="header-icon">
                    <i class="fa-regular fa-heart"></i>
                </button>

                <button class="header-icon" id="cartBtn">
                    <i class="fa-solid fa-bag-shopping"></i>
                    <span class="cart-badge" id="cartCount">0</span>
                </button>

            </div>
        </div>

        <div class="mobile-menu" id="mobileMenu">
            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Trending Products</a>
            <a href="#deals">Deals</a>
            <a href="#about">About</a>
        </div>
    </header>


    <main>

        <!-- HERO -->
        <section class="hero">
            <div class="container">

                <div class="hero-box">

                    <div class="hero-content">

                        <div class="hero-label">
                            <i class="fa-solid fa-sparkles"></i>
                            New Season Collection
                        </div>

                        <h1>
                            Shop smarter.
                            <br>
                            Live <span>better.</span>
                        </h1>

                        <p>
                            Discover premium products, exclusive deals and
                            everyday essentials — all in one place.
                        </p>

                        <div class="hero-actions">

                            <button class="btn btn-primary" id="shopNow">
                                Shop Collection
                                <i class="fa-solid fa-arrow-right"></i>
                            </button>

                            <button class="btn btn-light" id="exploreDeals">
                                Explore Deals
                            </button>

                        </div>

                    </div>

                </div>

            </div>
        </section>


        <!-- CATEGORIES -->
        <section class="section" id="categories">

            <div class="container">

                <div class="section-heading">

                    <div>
                        <div class="eyebrow">Explore</div>
                        <h2>Shop by Category</h2>
                        <p>Find everything you need in one place.</p>
                    </div>

                    <a href="#products" class="view-all">
                        View all
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>

                </div>

                <div class="categories" id="categoriesGrid"></div>

            </div>

        </section>


        <!-- PRODUCTS -->
        <section class="section" id="products">

            <div class="container">

                <div class="section-heading">

                    <div>
                        <div class="eyebrow">Popular Now</div>
                        <h2>Trending Products</h2>
                        <p>Products customers are loving right now.</p>
                    </div>

                    <a href="#products" class="view-all">
                        See all
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>

                </div>

                <div class="products" id="productsGrid"></div>

            </div>

        </section>


        <!-- FLASH SALE -->
        <section class="section" id="deals">

            <div class="container">

                <div class="section-heading">

                    <div>
                        <div class="eyebrow">Limited Time</div>
                        <h2>Flash Sale</h2>
                        <p>Grab today's special offer before it's gone.</p>
                    </div>

                </div>

                <div class="deal">

                    <div class="deal-image"></div>

                    <div class="deal-content">

                        <div class="deal-tag">
                            <i class="fa-solid fa-bolt"></i>
                            Today's Deal
                        </div>

                        <h2>MacBook Air M2</h2>

                        <p>
                            Thin, powerful and beautifully designed.
                            Upgrade your everyday productivity.
                        </p>

                        <div class="timer">

                            <div class="time-box">
                                <strong id="dealDays">00</strong>
                                <span>Days</span>
                            </div>

                            <div class="time-box">
                                <strong id="dealHours">00</strong>
                                <span>Hours</span>
                            </div>

                            <div class="time-box">
                                <strong id="dealMinutes">00</strong>
                                <span>Minutes</span>
                            </div>

                            <div class="time-box">
                                <strong id="dealSeconds">00</strong>
                                <span>Seconds</span>
                            </div>

                        </div>

                        <div class="deal-price">
                            <strong>$999</strong>
                            <del>$1,199</del>
                        </div>

                        <button class="btn btn-primary" id="buyDeal">
                            Add Deal to Cart
                            <i class="fa-solid fa-cart-plus"></i>
                        </button>

                    </div>

                </div>

            </div>

        </section>


        <!-- BENEFITS -->
        <section class="section">

            <div class="container">

                <div class="benefits">

                    <div class="benefit">
                        <div class="benefit-icon">
                            <i class="fa-solid fa-truck-fast"></i>
                        </div>

                        <div>
                            <strong>Free Shipping</strong>
                            <span>On orders over $50</span>
                        </div>
                    </div>

                    <div class="benefit">
                        <div class="benefit-icon">
                            <i class="fa-solid fa-rotate-left"></i>
                        </div>

                        <div>
                            <strong>Easy Returns</strong>
                            <span>30-day return policy</span>
                        </div>
                    </div>

                    <div class="benefit">
                        <div class="benefit-icon">
                            <i class="fa-solid fa-shield-halved"></i>
                        </div>

                        <div>
                            <strong>Secure Payment</strong>
                            <span>100% protected checkout</span>
                        </div>
                    </div>

                    <div class="benefit">
                        <div class="benefit-icon">
                            <i class="fa-solid fa-headset"></i>
                        </div>

                        <div>
                            <strong>24/7 Support</strong>
                            <span>We're here to help</span>
                        </div>
                    </div>

                </div>

            </div>

        </section>


        <!-- TESTIMONIALS -->
        <section class="section" id="about">

            <div class="container">

                <div class="section-heading">

                    <div>
                        <div class="eyebrow">Customer Stories</div>
                        <h2>Loved by our customers</h2>
                        <p>See what shoppers have to say.</p>
                    </div>

                </div>

                <div class="testimonials">

                    <div class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "The entire shopping experience was fantastic.
                            My order arrived quickly and the product quality
                            was even better than expected."
                        </p>

                        <div class="customer">
                            <img
                                src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                                alt="Ava Martin"
                            >

                            <div>
                                <strong>Ava Martin</strong>
                                <span>Verified Buyer</span>
                            </div>
                        </div>

                    </div>


                    <div class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "Great selection, excellent prices and an
                            extremely smooth checkout experience. I'll
                            definitely shop here again."
                        </p>

                        <div class="customer">
                            <img
                                src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                                alt="Michael Lee"
                            >

                            <div>
                                <strong>Michael Lee</strong>
                                <span>Frequent Buyer</span>
                            </div>
                        </div>

                    </div>


                    <div class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "Beautiful website, fast delivery and responsive
                            customer service. Everything was simple from
                            browsing to delivery."
                        </p>

                        <div class="customer">
                            <img
                                src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                                alt="Sophia Williams"
                            >

                            <div>
                                <strong>Sophia Williams</strong>
                                <span>Verified Buyer</span>
                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- NEWSLETTER -->
        <section class="section">

            <div class="container">

                <div class="newsletter">

                    <h2>Get the best deals first.</h2>

                    <p>
                        Subscribe for exclusive discounts, new arrivals
                        and special offers.
                    </p>

                    <form class="newsletter-form" id="newsletterForm">

                        <input
                            type="email"
                            id="newsletterEmail"
                            placeholder="Enter your email address"
                            required
                        >

                        <button class="btn btn-primary" type="submit">
                            Subscribe
                        </button>

                    </form>

                    <div
                        id="newsletterMsg"
                        style="margin-top:12px;font-size:12px;"
                    ></div>

                </div>

            </div>

        </section>

    </main>


    <!-- FOOTER -->
    <footer>

        <div class="container">

            <div class="footer-grid">

                <div class="footer-brand">

                    <a href="#" class="brand">
                        <span class="brand-logo">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </span>
                        Nexus<span>Shop</span>
                    </a>

                    <p>
                        A modern shopping destination designed to make
                        discovering great products simple, enjoyable
                        and convenient.
                    </p>

                    <div class="socials">

                        <a class="social" href="#">
                            <i class="fa-brands fa-facebook-f"></i>
                        </a>

                        <a class="social" href="#">
                            <i class="fa-brands fa-instagram"></i>
                        </a>

                        <a class="social" href="#">
                            <i class="fa-brands fa-x-twitter"></i>
                        </a>

                        <a class="social" href="#">
                            <i class="fa-brands fa-youtube"></i>
                        </a>

                    </div>

                </div>


                <div class="footer-column">

                    <h4>Shop</h4>

                    <a href="#products">All Products</a>
                    <a href="#categories">Categories</a>
                    <a href="#deals">Flash Deals</a>
                    <a href="#">New Arrivals</a>

                </div>


                <div class="footer-column">

                    <h4>Company</h4>

                    <a href="#about">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Our Story</a>
                    <a href="#">Contact</a>

                </div>


                <div class="footer-column">

                    <h4>Support</h4>

                    <a href="#">Help Center</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">Privacy Policy</a>

                </div>

            </div>


            <div class="copyright">
                © <span id="year"></span> NexusShop. All rights reserved.
            </div>

        </div>

    </footer>


    <script>

        /* =========================
           DATA
        ========================= */

        const CATEGORIES = [
            {
                id: "phones",
                name: "Smartphones",
                icon: "fa-mobile-screen-button"
            },
            {
                id: "laptops",
                name: "Laptops",
                icon: "fa-laptop"
            },
            {
                id: "clothing",
                name: "Clothing",
                icon: "fa-shirt"
            },
            {
                id: "gadgets",
                name: "Gadgets",
                icon: "fa-headphones"
            },
            {
                id: "footwear",
                name: "Footwear",
                icon: "fa-shoe-prints"
            },
            {
                id: "accessories",
                name: "Accessories",
                icon: "fa-watch"
            }
        ];


        const PRODUCTS = [

            {
                id: 1,
                title: "iPhone 14 Pro Max",
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: "New",
                category: "phones",
                img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 2,
                title: "MacBook Pro 14",
                price: 1999,
                rating: 4,
                reviews: 86,
                category: "laptops",
                img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 3,
                title: "Apple Watch Series 8",
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: "-25%",
                category: "accessories",
                img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 4,
                title: "Nike Air Max",
                price: 150,
                rating: 4,
                reviews: 53,
                category: "footwear",
                img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 5,
                title: "Sony A7 IV Camera",
                price: 2499,
                rating: 5,
                reviews: 42,
                badge: "Popular",
                category: "gadgets",
                img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 6,
                title: "Premium Fragrance",
                price: 120,
                rating: 5,
                reviews: 189,
                category: "accessories",
                img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 7,
                title: "Travel Backpack",
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                badge: "Sale",
                category: "accessories",
                img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 8,
                title: "Wireless Headphones",
                price: 399,
                rating: 5,
                reviews: 156,
                badge: "Best Seller",
                category: "gadgets",
                img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
            }

        ];


        /* =========================
           ELEMENTS
        ========================= */

        const categoriesGrid =
            document.getElementById("categoriesGrid");

        const productsGrid =
            document.getElementById("productsGrid");

        const searchInput =
            document.getElementById("searchInput");

        const cartCountEl =
            document.getElementById("cartCount");


        let cartCount = 0;


        /* =========================
           ESCAPE HTML
        ========================= */

        function escapeHtml(text) {

            return String(text).replace(/[&<>"']/g, function (char) {

                return {
                    "&": "&amp;",
                    "<": "&lt;",
                    ">": "&gt;",
                    '"': "&quot;",
                    "'": "&#039;"
                }[char];

            });

        }


        /* =========================
           CATEGORIES
        ========================= */

        function renderCategories() {

            categoriesGrid.innerHTML = "";

            CATEGORIES.forEach(category => {

                const element =
                    document.createElement("div");

                element.className = "category";

                element.innerHTML = `
                    <div class="category-icon">
                        <i class="fa-solid ${category.icon}"></i>
                    </div>

                    <h3>${category.name}</h3>

                    <p>Explore collection</p>
                `;

                element.addEventListener("click", () => {

                    searchInput.value = category.name;

                    filterProducts(category.name);

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                });

                categoriesGrid.appendChild(element);

            });

        }


        /* =========================
           PRODUCTS
        ========================= */

        function renderProducts(products) {

            productsGrid.innerHTML = "";

            if (!products.length) {

                productsGrid.innerHTML = `
                    <div style="
                        grid-column:1/-1;
                        text-align:center;
                        padding:60px 20px;
                        color:#6b7280;
                    ">
                        <i
                            class="fa-solid fa-box-open"
                            style="
                                font-size:40px;
                                margin-bottom:15px;
                                color:#c7d2fe;
                            "
                        ></i>

                        <h3>No products found</h3>

                        <p>
                            Try searching for another product.
                        </p>
                    </div>
                `;

                return;
            }


            products.forEach(product => {

                const element =
                    document.createElement("article");

                element.className = "product";

                const badge =
                    product.badge
                        ? `
                            <span class="badge ${
                                product.badge === "Sale" ||
                                product.badge.startsWith("-")
                                    ? "sale"
                                    : ""
                            }">
                                ${product.badge}
                            </span>
                        `
                        : "";


                const oldPrice =
                    product.oldPrice
                        ? `
                            <span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>
                        `
                        : "";


                element.innerHTML = `

                    <div class="product-image">

                        ${badge}

                        <button
                            class="wishlist"
                            aria-label="Add to wishlist"
                        >
                            <i class="fa-regular fa-heart"></i>
                        </button>

                        <img
                            src="${product.img}"
                            alt="${escapeHtml(product.title)}"
                        >

                    </div>


                    <div class="product-info">

                        <div class="product-category">
                            ${product.category}
                        </div>

                        <div class="product-title">
                            ${escapeHtml(product.title)}
                        </div>

                        <div class="rating">

                            <span class="stars">
                                ${"★".repeat(Math.round(product.rating))}
                            </span>

                            <span class="review-count">
                                (${product.reviews})
                            </span>

                        </div>


                        <div class="product-bottom">

                            <div>

                                <div class="price">
                                    $${product.price.toLocaleString()}
                                </div>

                                ${oldPrice}

                            </div>


                            <button
                                class="add-cart"
                                data-id="${product.id}"
                                aria-label="Add to cart"
                            >
                                <i class="fa-solid fa-plus"></i>
                            </button>

                        </div>

                    </div>
                `;


                productsGrid.appendChild(element);

            });


            /* Cart buttons */

            productsGrid
                .querySelectorAll(".add-cart")
                .forEach(button => {

                    button.addEventListener("click", () => {

                        const id =
                            Number(button.dataset.id);

                        addToCart(id, button);

                    });

                });


            /* Wishlist buttons */

            productsGrid
                .querySelectorAll(".wishlist")
                .forEach(button => {

                    button.addEventListener("click", () => {

                        button.classList.toggle("active");

                        const icon =
                            button.querySelector("i");

                        icon.classList.toggle(
                            "fa-regular"
                        );

                        icon.classList.toggle(
                            "fa-solid"
                        );

                    });

                });

        }


        /* =========================
           CART
        ========================= */

        function addToCart(productId, button) {

            const product =
                PRODUCTS.find(
                    item => item.id === productId
                );

            if (!product) return;

            cartCount++;

            cartCountEl.textContent = cartCount;


            const original =
                button.innerHTML;

            button.innerHTML =
                '<i class="fa-solid fa-check"></i>';

            button.style.background =
                "#10b981";


            setTimeout(() => {

                button.innerHTML = original;

                button.style.background = "";

            }, 1000);

        }


        /* =========================
           SEARCH
        ========================= */

        function filterProducts(query) {

            const value =
                String(query || "")
                    .trim()
                    .toLowerCase();


            if (!value) {

                renderProducts(PRODUCTS);

                return;

            }


            const filtered =
                PRODUCTS.filter(product => {

                    return (
                        product.title
                            .toLowerCase()
                            .includes(value) ||

                        product.category
                            .toLowerCase()
                            .includes(value)
                    );

                });


            renderProducts(filtered);

        }


        searchInput.addEventListener(
            "input",
            e => filterProducts(e.target.value)
        );


        /* =========================
           MOBILE MENU
        ========================= */

        const mobileToggle =
            document.getElementById("mobileToggle");

        const mobileMenu =
            document.getElementById("mobileMenu");


        mobileToggle.addEventListener(
            "click",
            () => {

                const isVisible =
                    mobileMenu.style.display === "block";

                mobileMenu.style.display =
                    isVisible ? "none" : "block";

            }
        );


        mobileMenu
            .querySelectorAll("a")
            .forEach(link => {

                link.addEventListener(
                    "click",
                    () => {
                        mobileMenu.style.display = "none";
                    }
                );

            });


        /* =========================
           HERO BUTTONS
        ========================= */

        document
            .getElementById("shopNow")
            .addEventListener("click", () => {

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });


        document
            .getElementById("exploreDeals")
            .addEventListener("click", () => {

                document
                    .getElementById("deals")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });


        /* =========================
           FLASH DEAL
        ========================= */

        let dealTarget =
            new Date().getTime()
            + (24 * 60 * 60 * 1000);


        function updateTimer() {

            const now =
                new Date().getTime();

            const distance =
                dealTarget - now;


            if (distance <= 0) {

                document.getElementById(
                    "dealDays"
                ).textContent = "00";

                document.getElementById(
                    "dealHours"
                ).textContent = "00";

                document.getElementById(
                    "dealMinutes"
                ).textContent = "00";

                document.getElementById(
                    "dealSeconds"
                ).textContent = "00";

                return;

            }


            const days =
                Math.floor(
                    distance /
                    (1000 * 60 * 60 * 24)
                );


            const hours =
                Math.floor(
                    (distance %
                        (1000 * 60 * 60 * 24)) /
                    (1000 * 60 * 60)
                );


            const minutes =
                Math.floor(
                    (distance %
                        (1000 * 60 * 60)) /
                    (1000 * 60)
                );


            const seconds =
                Math.floor(
                    (distance %
                        (1000 * 60)) /
                    1000
                );


            document.getElementById(
                "dealDays"
            ).textContent =
                String(days).padStart(2, "0");


            document.getElementById(
                "dealHours"
            ).textContent =
                String(hours).padStart(2, "0");


            document.getElementById(
                "dealMinutes"
            ).textContent =
                String(minutes).padStart(2, "0");


            document.getElementById(
                "dealSeconds"
            ).textContent =
                String(seconds).padStart(2, "0");

        }


        updateTimer();

        setInterval(updateTimer, 1000);


        /* =========================
           DEAL CART
        ========================= */

        document
            .getElementById("buyDeal")
            .addEventListener("click", function () {

                cartCount++;

                cartCountEl.textContent =
                    cartCount;

                const original =
                    this.innerHTML;

                this.innerHTML =
                    '<i class="fa-solid fa-check"></i> Added to Cart';


                setTimeout(() => {

                    this.innerHTML =
                        original;

                }, 1500);

            });


        /* =========================
           NEWSLETTER
        ========================= */

        document
            .getElementById("newsletterForm")
            .addEventListener("submit", function (event) {

                event.preventDefault();

                const email =
                    document
                        .getElementById("newsletterEmail")
                        .value.trim();

                const message =
                    document.getElementById(
                        "newsletterMsg"
                    );


                if (!email) {

                    message.textContent =
                        "Please enter your email.";

                    message.style.color =
                        "#fca5a5";

                    return;

                }


                message.textContent =
                    "You're subscribed! Welcome to NexusShop.";

                message.style.color =
                    "#86efac";


                document
                    .getElementById(
                        "newsletterEmail"
                    )
                    .value = "";

            });


        /* =========================
           CART BUTTON
        ========================= */

        document
            .getElementById("cartBtn")
            .addEventListener("click", () => {

                if (cartCount === 0) {

                    alert(
                        "Your cart is currently empty."
                    );

                } else {

                    alert(
                        `You have ${cartCount} item(s) in your cart.`
                    );

                }

            });


        /* =========================
           INITIALIZATION
        ========================= */

        renderCategories();

        renderProducts(PRODUCTS);

        document.getElementById(
            "year"
        ).textContent =
            new Date().getFullYear();

    </script>

</body>
</html>
```
