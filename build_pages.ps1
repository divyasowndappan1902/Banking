$pages = @(
    @{ name = "index"; title = "Home"; img = "home.webp" },
    @{ name = "news"; title = "Latest News"; img = "news.webp" },
    @{ name = "about"; title = "About Us"; img = "about.webp" },
    @{ name = "service"; title = "Our Services"; img = "service.webp" },
    @{ name = "contact"; title = "Contact Us"; img = "contact.webp" },
    @{ name = "signin"; title = "Sign In"; img = "home.webp" },
    @{ name = "dashboard"; title = "Dashboard"; img = "dashboard.webp" },
    @{ name = "savings"; title = "Savings Accounts"; img = "savings.webp" },
    @{ name = "loans"; title = "Personal Loans"; img = "loans.webp" },
    @{ name = "credit-cards"; title = "Credit Cards"; img = "credit-cards.webp" },
    @{ name = "investments"; title = "Investments"; img = "investments.webp" },
    @{ name = "mortgages"; title = "Home Mortgages"; img = "mortgages.webp" },
    @{ name = "insurance"; title = "Insurance"; img = "insurance.webp" },
    @{ name = "business"; title = "Business Banking"; img = "business.webp" },
    @{ name = "wealth"; title = "Wealth Management"; img = "wealth.webp" },
    @{ name = "404"; title = "Page Not Found"; img = "404.webp" }
)

$template_top = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{TITLE}} - Stackly</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <nav class="navbar">
        <a href="index.html" class="nav-brand">
            <img src="assets/images/Logo1.webp.PNG" alt="Stackly Logo">
        </a>
        <button class="mobile-menu-btn">☰</button>
        <ul class="nav-menu">
            <li><a href="index.html" class="nav-link">Home</a></li>
            <li><a href="news.html" class="nav-link">News</a></li>
            <li><a href="about.html" class="nav-link">About</a></li>
            <li><a href="service.html" class="nav-link">Services</a></li>
            <li><a href="contact.html" class="nav-link">Contact</a></li>
            <li><a href="signin.html" class="btn btn-primary auth-btn">Sign In</a></li>
        </ul>
    </nav>
"@

$template_bottom = @"
    <footer class="footer">
        <div class="footer-grid">
            <div class="footer-col">
                <h3>About Stackly</h3>
                <p>Delivering excellence in banking for over a century. Your trust, our priority.</p>
            </div>
            <div class="footer-col">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="savings.html">Savings</a></li>
                    <li><a href="loans.html">Loans</a></li>
                    <li><a href="investments.html">Investments</a></li>
                    <li><a href="business.html">Business</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h3>Location</h3>
                <p>Salem Stackly Address</p>
                <div class="map-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15630.932454653335!2d78.1360098!3d11.6421454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3babf1c322b82141%3A0xc069b1e941ceb325!2sSalem%2C%20Tamil%20Nadu!5e0!3m2!1sen!2sin!4v1717142400000!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2026 Stackly. All rights reserved.</p>
        </div>
    </footer>
    <script src="js/app.js"></script>
</body>
</html>
"@

foreach ($p in $pages) {
    $content = ""
    
    if ($p.name -eq "signin") {
        $content = @"
    <div class="hero" style="min-height: 80vh;">
        <div class="form-container animate-fade-in" style="z-index: 10;">
            <h2 style="text-align:center; color: var(--primary-color); margin-bottom: 2rem;">Sign In</h2>
            <form id="loginForm">
                <div class="form-group">
                    <label for="roleSelect">Login As</label>
                    <select id="roleSelect" class="form-control" required>
                        <option value="customer">Customer</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control" placeholder="Enter username" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" placeholder="Enter password" required>
                </div>
                <button type="submit" class="btn btn-primary" style="width: 100%;">Secure Login</button>
            </form>
        </div>
    </div>
"@
    } elseif ($p.name -eq "index") {
        $content = @"
    <section class="hero">
        <img src="assets/images/home.webp" alt="Stackly Home" class="hero-bg" onerror="this.src='assets/images/home.webp';">
        <div class="hero-overlay"></div>
        <div class="hero-content animate-fade-in">
            <h1>Welcome to Stackly Bank</h1>
            <p>Experience the next generation of banking solutions. Secure, fast, and completely tailored to your financial lifestyle.</p>
            <a href="signin.html" class="btn btn-accent">Open an Account</a>
        </div>
    </section>
    
    <section class="section container">
        <h2 class="section-title">Comprehensive Banking Solutions</h2>
        <div class="grid">
            <!-- Content 1 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1579621970563-ebec7560ff3e?auto=format,compress&fm=webp&w=400&q=70" alt="Savings" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">1. High-Yield Savings</h3>
                    <p>Grow your wealth with industry-leading interest rates on all savings accounts.</p>
                    <a href="savings.html" class="btn btn-primary" style="margin-top: 1rem;">Learn More</a>
                </div>
            </div>
            <!-- Content 2 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1601597111158-2fceff292cdc?auto=format,compress&fm=webp&w=400&q=70" alt="Checking" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">2. Premium Checking</h3>
                    <p>No hidden fees, unlimited transactions, and an instant-issue debit card.</p>
                    <a href="contact.html" class="btn btn-primary" style="margin-top: 1rem;">Open Checking</a>
                </div>
            </div>
            <!-- Content 3 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1560518883-ce09059eeffa?auto=format,compress&fm=webp&w=400&q=70" alt="Mortgages" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">3. Home Mortgages</h3>
                    <p>Unlock the door to your dream home with our flexible mortgage plans.</p>
                    <a href="mortgages.html" class="btn btn-primary" style="margin-top: 1rem;">View Rates</a>
                </div>
            </div>
            <!-- Content 4 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?auto=format,compress&fm=webp&w=400&q=70" alt="Auto Loans" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">4. Personal & Auto Loans</h3>
                    <p>Fast approval and competitive rates for whatever life throws your way.</p>
                    <a href="loans.html" class="btn btn-primary" style="margin-top: 1rem;">Apply Now</a>
                </div>
            </div>
            <!-- Content 5 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format,compress&fm=webp&w=400&q=70" alt="Credit Cards" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">5. Elite Credit Cards</h3>
                    <p>Earn cashback, travel rewards, and premium perks with Stackly Elite.</p>
                    <a href="credit-cards.html" class="btn btn-primary" style="margin-top: 1rem;">Compare Cards</a>
                </div>
            </div>
            <!-- Content 6 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?auto=format,compress&fm=webp&w=400&q=70" alt="Wealth Management" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">6. Wealth Management</h3>
                    <p>Expert advisors to help you plan your future and build generational wealth.</p>
                    <a href="wealth.html" class="btn btn-primary" style="margin-top: 1rem;">Talk to Advisor</a>
                </div>
            </div>
            <!-- Content 7 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1664575602554-2087b04935a5?auto=format,compress&fm=webp&w=400&q=70" alt="Business Banking" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">7. Business Banking</h3>
                    <p>Scalable solutions, payroll management, and corporate credit lines.</p>
                    <a href="business.html" class="btn btn-primary" style="margin-top: 1rem;">For Business</a>
                </div>
            </div>
            <!-- Content 8 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?auto=format,compress&fm=webp&w=400&q=70" alt="Investments" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">8. Investment Portfolios</h3>
                    <p>AI-driven robo-advisors and self-directed trading platforms.</p>
                    <a href="investments.html" class="btn btn-primary" style="margin-top: 1rem;">Start Trading</a>
                </div>
            </div>
            <!-- Content 9 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1450101499163-c8848c66ca85?auto=format,compress&fm=webp&w=400&q=70" alt="Insurance" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">9. Insurance Solutions</h3>
                    <p>Protect what matters most with life, property, and health insurance.</p>
                    <a href="insurance.html" class="btn btn-primary" style="margin-top: 1rem;">Get a Quote</a>
                </div>
            </div>
            <!-- Content 10 -->
            <div class="card">
                <img src="https://images.unsplash.com/photo-1563986768609-322da13575f3?auto=format,compress&fm=webp&w=400&q=70" alt="Digital Banking" class="card-img">
                <div class="card-content">
                    <h3 class="card-title">10. 24/7 Digital Banking</h3>
                    <p>Access your money anytime, anywhere with our award-winning app.</p>
                    <a href="service.html" class="btn btn-primary" style="margin-top: 1rem;">Download App</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Loan Solutions Section -->
    <section class="section" style="background-color: var(--primary-color); color: var(--bg-white);">
        <div class="container" style="text-align: center;">
            <h2 class="section-title" style="color: var(--bg-white); margin-bottom: 1rem;">Need Financial Backing? Explore Our Loan Options</h2>
            <p style="font-size: 1.2rem; margin-bottom: 3rem; max-width: 800px; margin-left: auto; margin-right: auto; opacity: 0.9;">Whether you're buying your dream home, financing a new car, or consolidating debt, Stackly provides transparent loans with industry-low rates.</p>
            
            <div class="grid" style="grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); text-align: left;">
                <div class="card" style="background: rgba(255,255,255,0.1); border: 1px solid rgba(255,255,255,0.2); box-shadow: none;">
                    <div class="card-content">
                        <h3 class="card-title" style="color: var(--secondary-color);">Personal Loans</h3>
                        <p style="color: var(--bg-light); opacity: 0.8; margin-bottom: 1.5rem;">Borrow up to $50,000 with no hidden fees and fixed monthly payments.</p>
                        <a href="loans.html" style="color: var(--secondary-color); font-weight: bold; text-decoration: none;">Apply Today &rarr;</a>
                    </div>
                </div>
                <div class="card" style="background: rgba(255,255,255,0.1); border: 1px solid rgba(255,255,255,0.2); box-shadow: none;">
                    <div class="card-content">
                        <h3 class="card-title" style="color: var(--secondary-color);">Auto Loans</h3>
                        <p style="color: var(--bg-light); opacity: 0.8; margin-bottom: 1.5rem;">Rates as low as 4.99% APR for new and used vehicles. Fast approval.</p>
                        <a href="loans.html" style="color: var(--secondary-color); font-weight: bold; text-decoration: none;">Get Pre-approved &rarr;</a>
                    </div>
                </div>
                <div class="card" style="background: rgba(255,255,255,0.1); border: 1px solid rgba(255,255,255,0.2); box-shadow: none;">
                    <div class="card-content">
                        <h3 class="card-title" style="color: var(--secondary-color);">Home Mortgages</h3>
                        <p style="color: var(--bg-light); opacity: 0.8; margin-bottom: 1.5rem;">Flexible terms and low down payment options for first-time buyers.</p>
                        <a href="mortgages.html" style="color: var(--secondary-color); font-weight: bold; text-decoration: none;">View Rates &rarr;</a>
                    </div>
                </div>
            </div>
            
            <div style="margin-top: 3rem;">
                <a href="loans.html" class="btn btn-accent" style="padding: 1rem 3rem; font-size: 1.1rem;">Explore All Loan Products</a>
            </div>
        </div>
    </section>

    <!-- Related Content Section -->
    <section class="section" style="background-color: var(--bg-white);">
        <div class="container">
            <h2 class="section-title">Related Content & Insights</h2>
            <div class="grid" style="grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));">
                <!-- Related Article 1 -->
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?auto=format,compress&fm=webp&w=400&q=70" alt="Market Trends" class="card-img" style="height: 180px;">
                    <div class="card-content">
                        <h3 class="card-title" style="font-size: 1.1rem;">Global Market Trends for Q3 2026</h3>
                        <p style="font-size: 0.9rem; margin-bottom: 1rem; color: var(--text-muted);">Discover what's driving the global economy and how our wealth managers are adjusting portfolios.</p>
                        <a href="news.html" style="color: var(--primary-color); font-weight: 600; text-decoration: none;">Read Article &rarr;</a>
                    </div>
                </div>
                <!-- Related Article 2 -->
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1573164713988-8665fc963095?auto=format,compress&fm=webp&w=400&q=70" alt="Security" class="card-img" style="height: 180px;">
                    <div class="card-content">
                        <h3 class="card-title" style="font-size: 1.1rem;">5 Ways to Secure Your Digital Identity</h3>
                        <p style="font-size: 0.9rem; margin-bottom: 1rem; color: var(--text-muted);">Learn how Stackly is utilizing next-generation biometrics to keep your accounts completely safe.</p>
                        <a href="news.html" style="color: var(--primary-color); font-weight: 600; text-decoration: none;">Read Article &rarr;</a>
                    </div>
                </div>
                <!-- Related Article 3 -->
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1565514020179-026b92b84bb6?auto=format,compress&fm=webp&w=400&q=70" alt="Mortgages" class="card-img" style="height: 180px;">
                    <div class="card-content">
                        <h3 class="card-title" style="font-size: 1.1rem;">Understanding New Mortgage Regulations</h3>
                        <p style="font-size: 0.9rem; margin-bottom: 1rem; color: var(--text-muted);">A comprehensive guide to the upcoming federal housing changes and what it means for your rates.</p>
                        <a href="news.html" style="color: var(--primary-color); font-weight: 600; text-decoration: none;">Read Article &rarr;</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
"@
    } elseif ($p.name -eq "dashboard") {
        $content = @"
    <div class="dashboard-layout">
        <aside class="sidebar">
            <div style="margin-bottom: 2rem;">
                <h3 id="userName" style="color: var(--primary-color);">User Name</h3>
                <p id="userRole" style="color: var(--text-muted); font-size: 0.9rem;">Role</p>
            </div>
            <ul class="sidebar-menu">
                <li><a href="#" class="sidebar-link active">Overview</a></li>
                <li><a href="investments.html" class="sidebar-link">Investments</a></li>
                <li><a href="savings.html" class="sidebar-link">Accounts</a></li>
                <li><a href="#" class="sidebar-link">Settings</a></li>
                <li><a href="signin.html" class="sidebar-link" style="color: #EF4444;">Logout</a></li>
            </ul>
        </aside>
        <main class="dashboard-content" id="dashboard-dynamic-content">
            <!-- Dynamic content injected via JS -->
        </main>
    </div>
"@
    } elseif ($p.name -eq "404") {
        $content = @"
    <div class="hero" style="min-height: 60vh; text-align:center; display:flex; flex-direction:column; align-items:center; justify-content:center;">
        <h1 style="color: var(--primary-color); font-size: 5rem;">404</h1>
        <p style="font-size: 1.5rem; margin-bottom: 2rem;">The page you are looking for is currently under construction or does not exist.</p>
        <a href="index.html" class="btn btn-primary">Return to Home</a>
    </div>
"@
    } else {
        # Regular Content Page
        # We will use inline CSS filters to create variation between the identical placeholder images
        $hue = (Get-Random -Minimum 0 -Maximum 360)
        $content = @"
    <section class="hero">
        <img src="assets/images/$($p.img)" alt="$($p.title)" class="hero-bg" style="filter: hue-rotate($($hue)deg) brightness(0.8);" onerror="this.src='assets/images/home.webp';">
        <div class="hero-overlay"></div>
        <div class="hero-content animate-fade-in">
            <h1>$($p.title)</h1>
            <p>Experience the next generation of banking solutions.</p>
            <a href="#" class="btn btn-accent">Learn More</a>
        </div>
    </section>
    
    <section class="section container">
        <h2 class="section-title">Discover Our $($p.title)</h2>
        <div class="grid">
            <div class="card">
                <img src="assets/images/about.webp" alt="Feature 1" class="card-img" style="filter: hue-rotate($($hue+50)deg);">
                <div class="card-content">
                    <h3 class="card-title">Premium Service</h3>
                    <p>Unmatched quality and dedication to your financial goals.</p>
                    <a href="#" class="btn btn-primary" style="margin-top: 1rem;">View Details</a>
                </div>
            </div>
            <div class="card">
                <img src="assets/images/dashboard.webp" alt="Feature 2" class="card-img" style="filter: hue-rotate($($hue+100)deg);">
                <div class="card-content">
                    <h3 class="card-title">Advanced Analytics</h3>
                    <p>Track your portfolio with our state-of-the-art tools.</p>
                    <a href="#" class="btn btn-primary" style="margin-top: 1rem;">View Details</a>
                </div>
            </div>
            <div class="card">
                <img src="assets/images/home.webp" alt="Feature 3" class="card-img" style="filter: hue-rotate($($hue+150)deg);">
                <div class="card-content">
                    <h3 class="card-title">Secure & Trusted</h3>
                    <p>Your assets are protected by industry-leading security.</p>
                    <a href="#" class="btn btn-primary" style="margin-top: 1rem;">View Details</a>
                </div>
            </div>
        </div>
    </section>
"@
    }

    $final_html = $template_top.Replace("{{TITLE}}", $p.title) + $content + $template_bottom
    Set-Content -Path "C:\Users\Admin\Desktop\Banking\$($p.name).html" -Value $final_html
    Write-Host "Created $($p.name).html"
}
