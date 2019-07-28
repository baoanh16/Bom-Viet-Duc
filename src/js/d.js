"use strict";

function toolNavMapping() {
	try {
		return new MappingListener({
			selector: ".canhcam-header-1 .tool-nav",
			mobileWrapper: ".canhcam-header-1 .mobile-header",
			mobileMethod: "appendTo",
			desktopWrapper: ".canhcam-header-1 .desktop-header .custom-nav",
			desktopMethod: "appendTo",
			breakpoint: 992
		}).watch()
	} catch (e) {}
}

function languageMapping() {
	try {
		return new MappingListener({
			selector: ".canhcam-header-1 .language",
			mobileWrapper: ".canhcam-header-1 .mobile-header-toggle",
			mobileMethod: "insertBefore",
			desktopWrapper: ".canhcam-header-1 .search",
			desktopMethod: "insertAfter",
			breakpoint: 992
		}).watch()
	} catch (e) {}
}

function zoneNavMapping() {
	try {
		return new MappingListener({
			selector: ".canhcam-header-1 .zone-nav",
			mobileWrapper: ".canhcam-header-1 .mobile-header",
			mobileMethod: "appendTo",
			desktopWrapper: ".canhcam-header-1 .desktop-header .custom-nav",
			desktopMethod: "appendTo",
			breakpoint: 992
		}).watch()
	} catch (e) {}
}

function phoneMapping() {
	try {
		return new MappingListener({
			selector: ".canhcam-header-1 .phone",
			mobileWrapper: ".canhcam-header-1 .mobile-sup-header",
			mobileMethod: "appendTo",
			desktopWrapper: ".canhcam-header-1 .divider",
			desktopMethod: "insertBefore",
			breakpoint: 992
		}).watch()
	} catch (e) {}
}
$(document).ready(function () {
	objectFitPolyfill(), toolNavMapping(), zoneNavMapping(), toggleSearchOnClick(), toggleMobileHeader(), onBackdropClick(), dropdownMenuClick(), mobileHeaderNavigation(), bannerHomeInit(), projectHomeSliderInit(), fullpageInit(), languageMapping(), toggleTab(), sidenavMapping(), sidenavToggle(), sidenavParentLinkClick(), downloadDocumentClick(), selectNavNavigation(), navLinksDropdown(), headerNavLinksDropdownPositioning1(), headerNavLinksDropdownPositioning2(), toggleSelect(), customOptionClicked(), backToTop(), activeFirstTab(), productDetailSliderInit(), productDetailSliderFancybox(), projectDetailSliderInit(), projectDetailSliderFancybox(), projectDetailSliderInit2(), faqsToggle(), onContactMapItemClick(), otherFieldsMapping(), $("[fancybox-gallery]").fancybox({
		thumbs: {
			autoStart: !0,
			axis: "x"
		}
	}), $("[fancybox-form]").fancybox({
		parentEl: "form"
	}), $("[tuyendung-form]").fancybox({
		parentEl: "form",
		baseClass: "tuyendung-form-popup"
	}), $(".duan-ct").length && $(window).outerWidth() < 992 && $(".banner-trangrieng").css("display", "none"), $(".product-detail-page").length && $("body").addClass("has-sidebar"), $("#tab-99").html($(".pcommentpanel").detach())
});
var dividerMapping = new MappingListener({
	selector: ".canhcam-header-1 .divider",
	mobileWrapper: ".canhcam-header-1 .search",
	mobileMethod: "insertBefore",
	desktopWrapper: ".canhcam-header-1 .Module-142",
	desktopMethod: "insertBefore",
	breakpoint: 992
}).watch();

function toggleSearchOnClick() {
	$("body").on("click", ".search-toggle", function () {
		$(this).parent(".search").toggleClass("active")
	})
}

function toggleMobileHeader() {
	$("body").on("click", ".mobile-header-toggle", function () {
		$(".mobile-header").toggleClass("active"), $(".backdrop").toggleClass("active")
	})
}

function onBackdropClick() {
	$("body").on("click", ".backdrop", function () {
		$(this).removeClass("active"), $(".mobile-header").removeClass("active"), $(".sub-menu-1").removeClass("active"), $(".sub-menu-2").removeClass("active")
	})
}

function bannerHomeInit() {
	return new Swiper(".banner-trangchu .swiper-container", {
		spaceBetween: 0,
		speed: 1e3,
		loop: !0,
		autoplay: !0,
		pagination: {
			el: ".banner-trangchu .swiper-pagination",
			type: "bullets",
			clickable: !0
		}
	})
}

function toggleTab() {
	$("body").on("click", ".tab-link", function () {
		var e = "#" + $(this).attr("data-tab");
		$(this).siblings().removeClass("active"), $(this).addClass("active"), $(e).siblings().fadeOut(0), $(e).fadeIn(250)
	})
}

function activeFirstTab() {
	$(".tab-headers").length && $(".tab-headers").each(function (e, t) {
		$(t).children().last().children().first().click()
	})
}

function projectHomeSliderInit() {
	return new Swiper(".home-4 .swiper-container", {
		spaceBetween: 40,
		speed: 1e3,
		centeredSlides: !0,
		slidesPerView: 1.5,
		initialSlide: 1,
		loop: !0,
		loopAdditionalSlides: 2,
		autoplay: !0,
		navigation: {
			nextEl: ".home-4 .swiper-button-next",
			prevEl: ".home-4 .swiper-button-prev"
		},
		pagination: {
			el: ".home-4 .swiper-pagination",
			type: "fraction",
			clickable: !0
		},
		breakpoints: {
			480: {
				slidesPerView: 1
			}
		}
	})
}

function objectFitPolyfill() {
	var e = !!document.documentMode,
		t = !e && !!window.StyleMedia;
	!0 !== e && !0 !== t || $("[data-object-fit-cover]").each(function (e, t) {
		var n = $(t).attr("data-src");
		void 0 === n && (n = $(t).attr("src")), $(t).css("display", "none"), $(t).parent().css({
			"background-image": "url('" + n + "')",
			"background-repear": "no-repeat",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
}

function customPopupV1(e) {
	var t = $(e).attr("data-src");
	$.fancybox.open({
		src: t,
		type: "inline",
		opts: {
			baseClass: "popup-chungnhan"
		}
	})
}

function selectNavNavigation() {
	$("body").on("change", ".selectNav", function () {
		var e = $(this).val();
		null == e && (e = "/"), window.location.href = e
	}), $("body").on("change", ".selectNavWithNewTab", function () {
		var e = $(this).val();
		null == e && (e = "/"), $('<a href="' + e + '" target="_blank"></a>')[0].click()
	})
}

function dropdownMenuClick() {
	$("body").on("click", "header div[data-href]", function (e) {
		e.preventDefault(), e.stopPropagation();
		var t = $(this).attr("data-href");
		null == t && (t = "/"), window.location.href = t
	})
}
var productDetailSliderInit = function () {
		try {
			var e = new Swiper(".product-thumbs .swiper-container", {
					slidesPerView: 3,
					spaceBetween: 10,
					centeredSlides: !0,
					slideToClickedSlide: !0,
					initialSlide: 1
				}),
				t = new Swiper(".product-images .swiper-container", {
					slidesPerView: 1,
					spaceBetween: 0,
					initialSlide: 1,
					navigation: {
						nextEl: ".product-images .btn-next",
						prevEl: ".product-images .btn-prev"
					}
				});
			t.controller.control = e, e.controller.control = t
		} catch (e) {}
	},
	projectDetailSliderInit = function () {
		try {
			var e = new Swiper(".project-thumbs .swiper-container", {
					slidesPerView: 4,
					spaceBetween: 10,
					centeredSlides: !0,
					slideToClickedSlide: !0,
					initialSlide: 1
				}),
				t = new Swiper(".project-images .swiper-container", {
					slidesPerView: 1,
					spaceBetween: 0,
					initialSlide: 1,
					navigation: {
						nextEl: ".project-images .btn-next",
						prevEl: ".project-images .btn-prev"
					}
				});
			t.controller.control = e, e.controller.control = t
		} catch (e) {}
	};

function projectDetailSliderInit2() {
	return new Swiper(".duan-ct .other-news .swiper-container", {
		spaceBetween: 30,
		speed: 1e3,
		slidesPerView: 3,
		autoplay: !0,
		navigation: {
			nextEl: ".other-news .btn-other-next",
			prevEl: ".other-news .btn-other-prev"
		},
		breakpoints: {
			992: {
				slidesPerView: 2
			},
			768: {
				slidesPerView: 1
			}
		}
	})
}

function ShowMoreProductDetails(e) {
	if ($(e).length) {
		var t = $(e);
		t.css({
			opacity: "0"
		}), setTimeout(function () {
			t.css({
				height: "auto",
				opacity: "1",
				"padding-bottom": "50px"
			}), t.children(".btn-viewmore").remove()
		}, 250)
	}
}

function sidenavMapping() {
	$(".sidenav").length && $(".sidenav").detach().insertBefore(".sidebar")
}

function sidenavToggle() {
	$("body").on("click", ".zone-parent", function (e) {
		e.preventDefault(), $(this).hasClass("active") ? ($(".sidenav .zone-parent").removeClass("active"), $(".sidenav .zone-list").removeClass("active")) : ($(".sidenav .zone-parent").removeClass("active"), $(".sidenav .zone-list").removeClass("active"), $(this).toggleClass("active"), $(this).next().toggleClass("active"))
	})
}

function sidenavParentLinkClick() {
	$("body").on("click", ".zone-parent>a>span", function () {
		window.location.href = $(this).parent().attr("href")
	})
}

function projectDetailSliderFancybox() {
	$("body").on("click", ".project-images a", function (e) {
		var t = "[data-fancybox='" + e.currentTarget.dataset.fancybox + "']",
			n = e.currentTarget.parentElement.parentElement.parentElement.swiper;
		$(t).fancybox({
			beforeClose: function (e) {
				n.slideTo(e.currIndex)
			}
		})
	})
}

function productDetailSliderFancybox() {
	$("body").on("click", ".product-images a", function (e) {
		var t = "[data-fancybox='" + e.currentTarget.dataset.fancybox + "']",
			n = e.currentTarget.parentElement.parentElement.parentElement.swiper;
		$(t).fancybox({
			beforeClose: function (e) {
				n.slideTo(e.currIndex)
			}
		})
	})
}

function faqsToggle() {
	$("body").on("click", ".question", function () {
		var e = $(this).parent(),
			t = $(this).next();
		e.hasClass("active") ? (e.removeClass("active"), t.slideUp(250)) : ($(".question").each(function (e, t) {
			$(t).parent().removeClass("active"), $(t).next().slideUp(250)
		}), e.addClass("active"), t.slideDown(250))
	})
}

function downloadDocumentClick() {
	$("body").on("click", ".download_document", function (e) {
		var t = e.currentTarget,
			n = t.dataset.href,
			a = t.dataset.mimetype,
			o = t.dataset.filename,
			i = new XMLHttpRequest;
		i.open("GET", n, !0), i.responseType = "blob", i.onload = function (e) {
			download(e.target.response, o + "." + a, a)
		}, i.send()
	})
}

function onContactMapItemClick() {
	$("body").on("click", ".contact-map .item", function () {
		var e = $(this).children(".map-iframe").html();
		$("#contactMap").html(e), $(".contact-map .item").removeClass("active"), $(this).addClass("active"), $(window).outerWidth() < 992 && $.fancybox.open({
			src: "#contactMap",
			type: "inline",
			opts: {
				baseClass: "contact-map-popup"
			}
		})
	})
}

function navLinksDropdown() {
	$(window).outerWidth() > 992 && $("body").on("click", ".nav-links-wrapper>.nav-links>.icon", function () {
		$(this).toggleClass("active"), $(this).parent().next().toggleClass("active")
	})
}

function headerNavLinksDropdownPositioning1() {
	var e = $(window).outerWidth();
	if (e >= 992)
		for (var t = $("header .has-sub-1").get(), n = null, a = 0, o = t.length; a < o; a++) !((n = t[a]).clientWidth / 2 + n.offsetLeft + 150 <= e) && ($(n).children(".sub-menu-1").css({
			transform: "translateX(0%)",
			right: "0px",
			left: "auto"
		}), $(n).children(".sub-menu-1").children().eq(1).addClass("isOverflow"))
}

function headerNavLinksDropdownPositioning2() {
	var e = $(window).outerWidth();
	if (e >= 992)
		for (var t, n = $("header .has-sub-2").get(), a = null, o = 0, i = n.length; o < i; o++) a = n[o], !((t = $(a).parent().parent()[0]).clientWidth / 2 + t.offsetLeft + 150 + 300 <= e) && $(a).children(".sub-menu-2").css({
			right: "auto",
			left: "-303px"
		})
}

function mobileHeaderNavigation() {
	$(window).outerWidth() < 992 && ($("body").on("click", "header .has-sub-1>.parent-link-1>em", function (e) {
		e.preventDefault(), $(e.currentTarget).parent().next().addClass("active")
	}), $("body").on("click", "header .previous-link-1", function (e) {
		e.preventDefault(), $(e.currentTarget).parent().removeClass("active")
	}), $("body").on("click", "header .has-sub-2>.parent-link-2>em", function (e) {
		e.preventDefault(), $(e.currentTarget).parent().next().addClass("active")
	}), $("body").on("click", "header .previous-link-2", function (e) {
		e.preventDefault(), $(e.currentTarget).parent().removeClass("active")
	}))
}

function fullpageInit() {
	if ($(".home-page").length && $(window).outerWidth() > 992) {
		var e = $("footer").detach()[0].outerHTML;
		$(e).insertAfter(".home-6"), $("#fullpage").fullpage({
			licenseKey: "A3DA879C-B1254377-8A906973-AAE812EA",
			navigation: !0,
			navigationPosition: "right",
			paddingBottom: 0,
			paddingTop: 0,
			scrollingSpeed: 800,
			sectionSelector: ".fullpage-section",
			afterRender: function () {
				var e = $(".banner-trangchu").outerHeight(),
					t = $(window).outerHeight(),
					n = $("header").outerHeight(),
					a = $("footer").outerHeight();
				$(".Module-210>.ModuleContent>.row").css("height", t - n - e), $(".home-6").css("height", t - a - n), $(".backtotop").click(function () {
					fullpage_api.moveTo(1)
				})
			}
		})
	}
}

function otherFieldsMapping() {
	if ($(".linhvuc-page").length && $(".other-fields-wrapper").length) {
		var e = $(".other-fields-wrapper").detach()[0].outerHTML;
		$(e).appendTo(".linhvuc .row.items")
	}
}

function toggleSelect() {
	$("body").on("click", ".current-option", function () {
		$(this).toggleClass("active"), $(this).parent(".custom-select").find(".options").toggleClass("active")
	})
}

function customOptionClicked() {
	$("body").on("click", ".custom-option", function () {
		$(this).parent().parent().find(".current-option span").html($(this).html()), $(this).parent().removeClass("active"), $(this).parent().parent().find(".current-option").removeClass("active")
	})
}

function backToTop() {
	$(".backtotop").click(function () {
		$("html,body").animate({
			scrollTop: 0
		}, 1200)
	})
}
//# sourceMappingURL=main.min.js.map