<style>
	#footer-wrapper h2,#footer-wrapper h3{
		color: white;
	}
</style>	
<div id="footer-wrapper">
	<section id="footer" class="container">
		<div class="z-row">
			<div class="col-2/3">
				<section>
					<header>
						<h2>Recent Articles</h2>
					</header>
					<ul class="dates">
						{{each blog_article as article}}
						<li>
							<span class="date">{{article.date.date(M)}}<strong>{{article.date.date(d)}}</strong></span>
							<h3><a href="{{footer_link.getURL()}}">{{article.title}}</a></h3>
							<p>{{article.sad}}</p>
						</li>
						{{end-each}}
					</ul>
				</section>
			</div>
			<div class="col-1/3">
				<section>
					<a href="#" class="image featured"><img src="{{clippings.logo.getImage()}}" alt="{{clippings.site_name}} logo" /></a>
					
					<p>
						{{clippings.footer_about}}
					</p>
					<footer>
						<a href="{{contact_page.first().getUrl()}}" class="button">Find out more</a>
					</footer>
				</section>
			</div>
		</div>
		<section>
			<header>
				<h2>Contact {{clippings.site_name}}</h2>
			</header>
			<div class="z-row">
				
				<div class="col-1/2">
					<h3>Address</h3>
					<p>
						{{clippings.footer_address}}
					</p>
					
				</div>
				<div class="col-1/2">
					
					<h3>Mail</h3>
					<p><a href="mailto:{{clippings.footer_mail}}">{{clippings.footer_mail}}</a></p>
					<h3>Phone</h3>
					<p>{{clippings.footer_phone}}</p>
					
				</div>
			</div>
			<p>&copy; {{clippings.site_name}}. All rights reserved.</p>
		</section>
	</section>
</div>