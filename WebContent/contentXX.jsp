<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>文章内容</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Viewport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="${ctx}/css/bootstrap(nr).css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="${ctx}/css/style(nr).css" type="text/css" media="all" />
<!--// css -->
<script src="${ctx}/js/jquery.min.js"></script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--/fonts-->
<!-- dropdown -->
<script src="${ctx}/js/jquery.easydropdown.js"></script>
<link href="${ctx}/css/nav(nr).css" rel="stylesheet" type="text/css" media="all"/>
<script src="${ctx}/js/scripts.js" type="text/javascript"></script>
<!--js-->
<!--/js-->
<script src="${ctx}/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>	
<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="${ctx}/js/move-top.js"></script>
		<script type="text/javascript" src="${ctx}/js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!-- slider -->
<script src="${ctx}/js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
        manualControls: '#slider3-pager',
      });
    });
  </script>
<!-- slider -->
</head>
<body>
	<div id="home" class="header">
		<div class="header-top">
			<!-- container -->
			<div class="container">
			
				<!-- script-for-menu -->
			</div>
			<!-- //container -->
		</div>
		<div class="header-bottom">
			<!-- container -->
			<div class="container">
				<div class="clearfix"> </div>
			</div>
			<!-- //container -->
		</div>
	</div>
	<!-- //header -->	
	<!-- bg-banner -->
	<div class="bg-banner">
		<div class="banner-bottom-bg single-bg">
			<div class="banner-bg"> 
				<div class="container">
					<!-- banner -->
					<div class="banner">
						<div class="banner-grids">						
							<div class="banner-middle">
                                <div class="head-logo">
					<a href="#"><img src="${ctx}/images/logo[nr1].png" alt="" /></a>
				</div>
								<div class="strip"></div>
								<!-- banner-bottom-grids -->
								<div class="banner-bottom-grids">
									<!-- banner-bottom-left -->
									<div class="col-md-8 banner-bottom-left">
										<div class="banner-bottom-left-grids">
											<div class="single-left-grid">
												<img src="${ctx}/images/13(nr).png" alt="" />
												<h4>${xx_news.biaoTi}</h4>
												<p class="text"> ${xx_news.neiRongURL}<!--如今再回头看离开阿里这件事的时候，莫念说，“算是人生的一场有趣的经历吧，大部分人反而一辈子都不会遇到这样的事情。”现在的他依然在努力工作，但是工作已不再是他生活的全部。
                                                   我只想抢一个月饼
												谈到抢月饼事件，莫念显然有些不情愿。他是一个非常低调的人，在月饼事件发生后没有接受任何媒体的采访。“我希望别人是通过我的技术了解我，而不单单是月饼事件。”采访的过程中，他还原了月饼事件的整个过程。
												“中秋想去亲戚家，但是公司发的月饼已经送人了。听到可以秒杀月饼的消息后，就想秒一个。点页面一看，发现都已经被抢光了。在网上看到有人用程序刷，我也想写个脚本试试，于是就写了一个类似于12306抢票的程序。”
												“下午四点我再登上去看的时候，居然已经抢了十六个月饼，于是打电话给行政说要退。可是后来的事情却出乎我的意料，四点半的时候领导找我约谈了，五点半的时候就开始签解约合同，六点的时候就要求离开了公司。走之前我还特意问了一下要不要交接一下工作，大家说没什么事情，走的事情比较重要。”
												事情发生之后，很多网友觉得阿里巴巴的企业文化存在问题，认为该事件是小题大做。如果一味拿阿里巴巴的价值观说事，那么阿里巴巴也许就只剩下马云一个人了。
												莫念觉得阿里巴巴有自己的企业文化并没有问题，但是在执行的过程中，是不是应该考虑一下实际情况，而不仅仅是为了执行而执行？如今他对阿里的感情比较复杂，他并不太能接受阿里巴巴的某些制度，但是他很喜欢阿里的工作环境和阿里的同事，那是一群优秀的人，他喜欢和优秀的人一起工作。
												“毕竟阿里太大了，不可能做到所有人都喜欢，我只是站在自己的视角里去看阿里。现在别人问我阿里是一家什么样的公司的时候，我的回答一直都是那是一家值得去的公司，学到的东西比承受的痛苦多得多。”
												人生最黑暗的时光
												“本来想在阿里好好干几年技术，因为阿里那边的基础设施都已经成熟了，可以专注某个方向研究。这件事的发生打乱了我之前的职业规划。”
												被开除后的莫念，整个人其实都是懵的。在阿里巴巴工作的时候，莫念就非常不适应，“那个时候刚刚被阿里挖过来，觉得除了阿里就没有好工作了。最害怕的就是工作上出什么事情，担心事情做得不够好，KPI上不去。恰逢那个时候刚刚在杭州买了房，每个月还房贷的压力也是很大的。”开除结果的通知，对他来说是终点，但好像又是新的起点。
												那段时间莫念整个人都抑郁了，他说那是“人生最黑暗的时刻之一”。半夜经常会从噩梦中惊醒，脑海里经常会想起在阿里工作时的场景。由于当时不太能理解公司的决定，而且央视也报道了这个事情，家里人也都知道了，他们以为莫念在杭州犯了什么事。既要安慰家里，又要缓解自己的压力，莫念那个时候是处在崩溃的边缘的。
												“当时为了让自己尽快走出来，我不得不逼自己忙起来，不停的折腾技术，或者看书。但是那个时候完全不能集中注意力，心里还是过不去这个坎。”
												在家宅了一个星期之后，他决定出去找工作。幸运的是他拿到了不少offer，这个时候心态就好了不少，至少自己的能力是被认可的，而且他一直都认为，“这是一个仁者见仁，智者见智的事情。理解我们的人，觉得这是理所当然的事情。不理解我们的人，就会觉得我们罪不可赦。”
												终于，我不再是那个少年
												目前，莫念在杭州一家互联网公司上班。由于之前的去的都是大公司，这次他特意选择了一家小公司。“大公司的约束太多，给员工太多的预设，很多岗位也都是按部就班的状态。选择小公司是希望能有一个更自由，能够一起成长的环境。”
												在去阿里巴巴之前，莫念在北京呆了一年多了。他说从毕业到现在经历了三家公司，最怀念的还是在北京的那段时间，“那个时候刚刚进入公司，觉得自己做的事情能够为公司带来发展，既有挑战又有成就感。”
												“终于，我不再是那个少年”是莫念微信的个性签名。
												他说之前自己一直像个孩子，做事情不会考虑后果，比较容易冲动。但是经历了这么多事情之后，心里的那个孩子已经消失不见，他不清楚这是一件好事还是坏事。
												“如果现在在为人处世上还像个孩子就太不成熟了，但是却依然希望能够像孩子那样，对这个世界充满好奇。”
												如今再回头看离开阿里这件事的时候，莫念说算是人生的一场有趣的经历吧，因为大部分人一辈子都不会遇到这样的事情。现在的他依然在努力工作，但是工作不再是他生活的全部。工作之余，他喜欢看看看电影、打打球。谈到美剧的时候，他一脸兴奋的告诉我，《西部世界》是一部不错的片子。
												采访的最后我问他：“之后的生活规划是什么样子？”
												他说：“拥抱变化吧”。--></p>
												</div>
												<div class="single-bottom">
													<ul>
														
														<li>${xx_news.time}</li>
														
													</ul>
												</div>
											</div>
										</div>
									<div class="clearfix"> </div>
									<div class="up-arrow">
										<a class="scroll" href="#home">Back to Top</a>
									</div>
										<div class="fo">
										<!-- container -->

											<div class="col-md-3 footer-logo">
												<p>河北师大国际交流处</p>
											</div>
										</div>
								</div>
								<!-- //banner-bottom-grids -->
							</div>
						</div>
					</div>
					<!-- //banner -->
				</div>
			</div>
		 </div>
	</div>	
	<!-- //bg-banner -->

</body>
</html>