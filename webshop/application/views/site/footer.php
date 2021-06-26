<!-- Messenger Plugin chat Code -->
<div id="fb-root"></div>

<!-- Your Plugin chat code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>

<script>
  var chatbox = document.getElementById('fb-customer-chat');
  chatbox.setAttribute("page_id", "103111772025963");
  chatbox.setAttribute("attribution", "page_inbox");
  window.fbAsyncInit = function() {
	FB.init({
	  xfbml            : true,
	  version          : 'v11.0'
	});
  };

  (function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
	fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>

<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="bank">
		<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 no-padding">
			<div class="footer-info">
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
					<a href="" title=""><strong>VỀ CHÚNG TÔI</strong></a>
					<li> <a href="#" title="">Giới thiệu </a></li>
					<li> <a href="#" title="">Tuyển dụng</a></li>
					<li> <a href="#" title="">Liên hệ</a></li>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
					<a href="" title=""><strong>HỖ TRỢ KHÁCH HÀNG</strong></a>
					<li> <a href="#" title="">Chính sách bảo mật</a></li>
					<li> <a href="#" title="">Chính sách Đổi/Trả</a></li>
					<li> <a href="#" title="">Thanh toán giao nhận</a></li>
					<li> <a href="#" title="">Câu hỏi thường gặp</a></li>

				</div>
				
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
			<p>Hỗ trợ thanh toán <img src="http://localhost/myshop/public/images/pay.png" alt="" style="padding-left: 25px;"> </p>
			<div class="fi-left pull-left">
				<p><small>Tư vẫn miễn phí (24/7)</small></p>
				<strong>Tất cả các ngày trong tuần</strong>
			</div>
			<div class="fi-right pull-right">
				<p><small>Góp ý, phản ánh(9h00 - 22h00)</small></p>
				<strong>0898 209 209</strong>
			</div>
		</div>
	</div>
</div>
<div class="row" id="footer">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
			<address>
				<strong> FASHION SHOP</strong><br>
				<span class="glyphicon glyphicon-home" aria-hidden="true"></span> Địa chỉ: 265 Nguyễn Đình Chiểu, P5, Quận 3, TPHCM<br>
				<span class="glyphicon glyphicon-phone" aria-hidden="true"></span> Điện thoại: 01215345336<br>
				
			</address>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-right">
			<a href="https://www.facebook.com/fahionshopyeah"><img src="<?php echo base_url(); ?>upload/icon/fb.jpg" alt=""></a>
			<a href="#"><img src="<?php echo base_url(); ?>upload/icon/instagram.jpg" alt=""></a>
			<a href="https://chat.zalo.me/"><img src="<?php echo base_url(); ?>upload/icon/zalo.jpg" alt=""></a>
		</div>
		<div class="clearfix"></div>
	</div>
</div>


