<!-- BEGIN: main -->
<form class="wedding-form row" method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
	<div class="col-md-12">
		<div class="form-group mb-15">
			<input type="text" maxlength="100" value="" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
			<div class="invalid-tooltip">Vui lòng nhập họ và tên</div>
		</div>
	</div>
	<div class="col-md-12 d-none">
		<div class="form-group mb-15">
			<input type="email" maxlength="60" value="noemail@email.com" name="femail" class="form-control required" />
			<div class="invalid-tooltip">Vui lòng nhập email</div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="form-group mb-15">
			<input type="text" maxlength="255" class="form-control required" value="{CONTENT.ftitle}" name="ftitle" placeholder="Bạn là ai? Vd: Bạn chú rể, bạn cô dâu, ..." data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_title}" />
			<div class="invalid-tooltip">Vui lòng nhập thông tin này</div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="form-group mb-15">
			<textarea id="message" cols="30" rows="7" name="fcon" class="form-control required" maxlength="1000" placeholder="Lời chúc phúc của bạn" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_content}"></textarea>
			<div class="invalid-tooltip">Vui lòng nhập lời chúc của bạn</div>
		</div>
	</div>
	<!-- BEGIN: captcha -->
	<div class="col-md-12">
		<div class="input-group mb-15">
			<span class="input-group-text vuj-btn-refresh-captcha" role="button" tabindex="0" onclick="change_captcha(this);" title="Thay mã mới">
				<img class="vuj-laz" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" data-src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}" alt="{LANG.captcha}">
			</span>
			<input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" />
			<div class="invalid-tooltip">{LANG.error_captcha}</div>
		</div>
	</div>
	<!-- END: captcha -->
	<!-- BEGIN: recaptcha -->
	<div class="col-md-12">
		<div class="form-group mb-15">
			<div class="recaptcha-wrap">
				<div id="{RECAPTCHA_ELEMENT}"></div>
			</div>
			<script type="text/javascript">
				nv_recaptcha_elements.push({
					id: "{RECAPTCHA_ELEMENT}",
					btn: $('[type="submit"]', $('#{RECAPTCHA_ELEMENT}').parent().parent().parent().parent())
				})
			</script>
		</div>
	</div>
	<!-- END: recaptcha -->
	<div class="col-md-12">
		<div class="form-group">
			<input type="hidden" name="checkss" value="{CHECKSS}" />
			<input type="submit" value="Gửi lời chúc đến chúng tôi" name="btsend" class="btn buttono" />
		</div>
	</div>
</form>
<div class="vuj-contact-form-alert alert fade" role="alert"></div>
<!-- END: main -->