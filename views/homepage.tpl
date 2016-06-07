<!-- Header -->
<div id="header-wrapper">
	<div id="header">
		<!-- Logo -->
		
		<!-- Banner -->
		<section id="banner">
			<header>
				<h2>{{page.header_banner_heading}}</h2>
				<p>{{page.header_banner_text}}</p>
			</header>
		</section>
		
		<!-- Intro -->
		<section id="intro" class="container">
			<div class="z-row">
				<div class="col-1/3">
					<section class="first">
						<i class="icon featured fa-cog"></i>
						<header>
							<h2>{{page.header_left_heading}}</h2>
						</header>
						<p>{{page.header_left_heading_text}}</p>
					</section>
				</div>
				<div class="col-1/3">
					<section class="middle">
						<i class="icon featured alt fa-flash"></i>
						<header>
							<h2>{{page.header_middle_heading}}</h2>
						</header>
						<p>{{page.header_middle_heading_text}}</p>
					</section>
				</div>
				<div class="col-1/3">
					<section class="last">
						<i class="icon featured alt2 fa-star"></i>
						<header>
							<h2>{{page.header_right_heading}}</h2>
						</header>
						<p>{{page.header_right_heading_text}}</p>
					</section>
				</div>
			</div>
			<footer>
				<ul class="actions">
					<li><a href="#" class="button big"> {{page.header_big_button}}</a></li>
					<li><a href="#" class="button alt big"> {{page.header_big_button_alt}}</a></li>
				</ul>
			</footer>
		</section>
		
	</div>
</div>

<!-- Main -->
<div id="main-wrapper">
	<div class="container">
		<div class="z-row">
			<!-- Our Team -->
			<section>
				<header class="major">
					<h2>Our Team</h2>
				</header>
				<div class="z-row">
					{{each team_member as member sort by member.sort asc}}
					<section class="col-1/4 box">
						<div class="z-row" itemscope="" itemtype="http://schema.org/Person">
							<div class="member">
								<div class="col-1/2">
									<a href="{{team_page.getUrl()}}"><img src="{{member.image.getImage(600,600,crop)}}" alt=""/></a>
								</div>
								<div class="col-1/2">
									<h2 itemprop="name">{{member.name}}</h2>
								</div>
							</div>
						</div>
					</section>
					{{end-each}}
				</div>
			</section>
		</div>
		<div class="container">
			<div class="z-row">
				
				<!-- Blog -->
				<section>
					<header class="major">
						<h2>The Blog</h2>
					</header>
					<div class="z-row">
						{{each simple_blog_article as article limit 3}}
						<div class="col-1/3">
								<section class="box">
									<a href="{{article.getUrl()}}" class="image featured"><img src="{{article.image.getImage(500, 300, crop)}}" alt="" /></a>
									<header>
										<h3>{{article.title}}</h3>
										<p>Posted 45 minutes ago</p>
									</header>
									<p>{{article.article_body.substr(0, 150)}}</p>
									<footer>
										<ul class="actions">
											<li><a href="{{article.getUrl()}}" class="button icon fa-file-text">Continue Reading</a></li>
											<li><a href="{{article.getUrl()}}" class="button alt icon fa-comment">33 comments (filler)</a></li>
										</ul>
									</footer>
								</section>
							</div>
						{{end-each}}
						</div>
					</section>
					
				</div>
			</div>
		</div>
	</div>