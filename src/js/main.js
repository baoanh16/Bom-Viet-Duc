$(document).ready(function () {
	// Viết Script ở đây!
	homeVideoPlayer();
	mappingHotline();
	mobileHeaderToggle();
	//sanpham
	sidebarDropdown();
	faqDashboard();
	swiperInit();
	homeVideoPlayer();

	$("ul.product-filter-wrapper li span.filter-title").each(function () {
		$(this).click(function () {
			$(this)
				.next()
				.toggleClass("active");
			$(this).toggleClass("active");
		});
	});

	$(".thong-tin-san-pham article img").addClass("medium-zoom");
	mediumZoom(document.querySelectorAll(".medium-zoom"));
	$(".lightgallery").lightGallery({
		thumbnail: true
	});

	let buttonFormSubmit = $(".wrap-form .frm-btnwrap .frm-btn ");
	buttonFormSubmit.html(
		'<input type="submit" value="Gửi Yêu Cầu"><em class="fas fa-long-arrow-alt-right"> </em>'
	);
});

$(document).on("click", ".banner video", function (e) {
	var video = $(this).get(0);
	if (video.paused === false) {
		video.pause();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeIn();
		$(this)
			.parents(".banner")
			.find(".swiper-caption")
			.fadeIn();
	} else {
		video.play();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeOut();
		$(this)
			.parents(".banner")
			.find(".swiper-caption")
			.fadeOut();
	}
	return false;
});

//swiper index init

$(document).ready(function () {});

function faqDashboard() {
	$(".faq-dashboard > li > .title").click(function (e) {
		e.preventDefault();
		if (
			!$(this)
			.parent()
			.hasClass("active")
		) {
			$(".faq-dashboard li .content").slideUp();
			$(this)
				.next()
				.slideToggle();
			$(".faq-dashboard li").removeClass("active");
			$(this)
				.parent()
				.addClass("active");
		} else {
			$(this)
				.next()
				.slideToggle();
			$(".faq-dashboard li").removeClass("active");
		}
	});
}

function homeVideoPlayer() {
	let swiper = new Swiper(".home-media-swiper .swiper-container", {
		autoHeight: true,
		speed: 1000,
		loop: false,
		lazy: true,
		allowTouchMove: true,
		pagination: {
			el: ".home-media-swiper-pagination",
			type: "bullets",
			clickable: true
		},
		on: {
			init: function () {
				if ($(window).width() >= 992) {
					$(".home-media-swiper .swiper-container .swiper-slide").height(
						$(window).outerHeight() - 80
					);
				}
				if (this.realIndex === 0) {
					setTimeout(function () {
						$(".home-media-swiper .swiper-next-button").trigger("click");
						setInterval(function () {
							$(".home-media-swiper .swiper-next-button").trigger("click");
						}, 5000);
					}, 17000);
				} else {
					setInterval(function () {
						$(".home-media-swiper .swiper-next-button").trigger("click");
					}, 5000);
				}
			}
		}
	});
	var vid = $(".home-media-swiper .swiper-slide video");
	swiper.on("slideChange", function () {
		if (swiper.activeIndex == 0) {
			vid.get(0).play();
		} else {
			vid.get(0).pause();
		}
	});
	vid.onplay = function () {
		swiper.autoplay.stop();
	};
	vid.onended = function () {
		swiper.autoplay.start();
	};
}

//
function mappingHotline() {
	return new MappingListener({
		selector: ".nav-left-top",
		mobileWrapper: ".bottom-header .nav-right ul",
		mobileMethod: "insertAfter",
		desktopWrapper: ".nav-right-top",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}

function mobileHeaderToggle() {
	var toggleMobile = document.querySelector(".toggle-mobile");
	var mobileSelector = document.querySelector(
		".bottom-header-wrapper .nav-right"
	);
	toggleMobile.addEventListener("click", function () {
		mobileSelector.classList.toggle("is-active");
	});
}

function swiperInit() {
	var galleryThumbs = new Swiper(".swiper-product-thumbs .swiper-container", {
		spaceBetween: 20,
		freeMode: true,

		slidesPerView: "auto",
		watchSlidesVisibility: true,
		watchSlidesProgress: true
	});
	var galleryTop = new Swiper(".swiper-product-top .swiper-container", {
		spaceBetween: 10,
		effect: "fade",
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: galleryThumbs
		}
	});
	let projectDetail = new Swiper(".project-detail-swiper .swiper-container", {
		slidesPerView: 1,
		speed: 1000,
		autoplay: {
			delay: 2500
		},
		navigation: {
			nextEl: ".project-detail-next",
			prevEl: ".project-detail-prev"
		}
	});
	var homeProduct = new Swiper(".home-san-pham .swiper-container", {
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			// when window width is >= 480px
			480: {
				slidesPerView: 2,
				spaceBetween: 30
			},
			// when window width is >= 640px
			768: {
				slidesPerView: 3,
				virtualTranslate: true,
				spaceBetween: 40
			}
		}
	});
	var otherProduct = new Swiper(".san-pham-khac .swiper-container", {
		autoplay: {
			delay: 2000
		},
		speed: 750,
		loop: true,
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			// when window width is >= 480px
			480: {
				slidesPerView: 3,
				spaceBetween: 30
			},
			768: {
				slidesPerView: 4,
				spaceBetween: 20
			},
			992: {
				slidesPerView: 4,
				spaceBetween: 20
			},
			// when window width is >= 640px

			1200: {
				slidesPerView: 5,
				spaceBetween: 20
			}
		}
	});
	var otherProject = new Swiper(".other-project .swiper-container", {
		autoplay: {
			delay: 3000
		},
		speed: 750,
		loop: true,
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
				spaceBetween: 20
			},

			768: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			992: {
				slidesPerView: 3,
				spaceBetween: 20
			}
		}
	});
	var swiperPartner = new Swiper(".doi-tac-swiper .swiper-container", {
		autoplay: {
			delay: 1700
		},
		watchSlidesVisibility: true,
		speed: 700,
		loop: true,
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			// when window width is >= 480px
			480: {
				slidesPerView: 2,
				spaceBetween: 10
			},
			// when window width is >= 640px
			768: {
				slidesPerView: 3,
				spaceBetween: 20
			},
			992: {
				slidesPerView: 3,
				spaceBetween: 20
			},
			// when window width is >= 640px
			1025: {
				slidesPerView: 4,
				spaceBetween: 20
			},
			// when window width is >= 640px
			1200: {
				slidesPerView: 5,
				spaceBetween: 20
			},
			// when window width is >= 640px
			1400: {
				slidesPerView: 6,
				spaceBetween: 20,
				loop: true,
				autoplay: {
					delay: 1700
				}
			}
		}
	});
}

//San ppham
function sidebarDropdown() {
	let $ul = $(".sidebar-navigation > .product-list");
	$ul.find("li a").click(function (e) {
		let $li = $(this).parent();

		if ($li.find("ul").length > 0) {
			e.preventDefault();

			if ($li.hasClass("selected")) {
				$li
					.removeClass("selected")
					.find("li")
					.removeClass("selected");
				$li.find("ul").slideUp(400);
				$li.find("a em").removeClass("mdi-rotate-90");
			} else {
				if ($li.parents("li.selected").length == 0) {
					$ul.find("li").removeClass("selected");
					$ul.find("ul").slideUp(400);
					$ul.find("li a em").removeClass("mdi-rotate-90");
				} else {
					$li
						.parent()
						.find("li")
						.removeClass("selected");
					$li
						.parent()
						.find("> li ul")
						.slideUp(400);
					$li
						.parent()
						.find("> li a em")
						.removeClass("mdi-rotate-90");
				}

				$li.addClass("selected");
				$li.find(">ul").slideDown(400);
				$li.find(">a>em").addClass("mdi-rotate-90");
			}
		}
	});

	$(".sidebar-navigation > .product-list ul").each(function (i) {
		if ($(this).find(">li>ul").length > 0) {
			let paddingLeft = $(this)
				.parent()
				.parent()
				.find(">li>a")
				.css("padding-left");
			let pIntPLeft = parseInt(paddingLeft);
			let result = pIntPLeft + 10;

			$(this)
				.find(">li>a")
				.css("padding-left", result);
		} else {
			let paddingLeft = $(this)
				.parent()
				.parent()
				.find(">li>a")
				.css("padding-left");
			let pIntPLeft = parseInt(paddingLeft);
			let result = pIntPLeft + 10;

			$(this)
				.find(">li>a")
				.css("padding-left", result)
				.parent()
				.addClass("selected--last");
		}
	});

	let t = " li > ul ";
	for (let i = 1; i <= 10; i++) {
		$(".sidebar-navigation > .product-list > " + t.repeat(i)).addClass(
			"subMenuColor" + i
		);
	}

	let activeLi = $("li.selected");
	if (activeLi.length) {
		opener(activeLi);
	}

	function opener(li) {
		let ul = li.closest("ul");
		if (ul.length) {
			li.addClass("selected");
			ul.addClass("open");
			li.find(">a>em").addClass("mdi-rotate-90");

			if (ul.closest("li").length) {
				opener(ul.closest("li"));
			} else {
				return false;
			}
		}
	}
}
