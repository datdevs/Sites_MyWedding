<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/vegas.min.css">
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/vegas.min.js"></script>
<aside id="home" class="hero-section">
	<div class="container hero-inner h-100">
		<div class="row h-100">
			<div class="col-md-12 text-center">
				<h1 class="hero-title">Griez & Helen</h1>
				<p class="hero-subtitle">2 May, 2021 - Nha Trang</p>
				<div class="arrow bounce text-center">
					<a href="{NV_BASE_SITEURL}#couple"> <i class="ti-heart"></i> </a>
				</div>
			</div>
		</div>
	</div>
</aside>
<script>
$(document).ready(function () {
	$('#home').vegas({
		slides: [
<!-- BEGIN: loop -->
<!-- BEGIN: image_only -->
			{ src: '{ROW.image}' },

<!-- END: image_only -->
<!-- END: loop -->
		],
		animation: 'random',
		animationDuration: 10000,
		delay: 9000,
		transitionDuration: 1000,
		timer: false
	});
});
</script>
<!-- END: main -->