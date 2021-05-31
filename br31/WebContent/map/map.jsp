<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*! scaffolding */
a{text-decoration:none;font-family:"맑은 고딕"}img{border:0}ol,ul{list-style:none}address{font-style:normal;font-weight:400}hr{display:none}fieldset{border:0}legend{visibility:hidden;font-size:0;line-height:0}input[type=search],input[type=text],input[type=tel],input[type=password],textarea{box-sizing:border-box}input[type=checkbox],input[type=radio]{margin:4px 0 0;line-height:normal}[role=button]{cursor:pointer}.sr_only{overflow:hidden;position:absolute;width:1px;height:1px;margin:-1px;padding:0;border:0;clip:rect(0,0,0,0)}.table{width:100%;border-collapse:collapse;border-spacing:0}.table caption{visibility:hidden;font-size:0;line-height:0}

/*! common */

/*= slide Nav */
.dslide {opacity:1; -webkit-transform:translate3d(0,0,0); text-align:center;}
.dslide a {display:inline-block; position:relative; width:10px; height:10px; margin:0 10px; cursor:pointer; text-decoration:none; text-indent:-9999em;}
.dslide a span {position: absolute; left:50%; top:50%; z-index:1; height:6px; width:6px; margin:-3px 0 0 -3px; border-radius:50%; border:0; background-color: #cdccd5; -webkit-transition: all 0.1s ease-in-out; -moz-transition: all 0.1s ease-in-out; transition: all 0.1s ease-in-out;}
.dslide a.active span,
.dslide a:hover  span,
.dslide a:hover a.active span {width:9px; height:9px; margin:-4px 0px 0px -4px; background-color: #301d17;}

.slidesNav {opacity:1; -webkit-transform:translate3d(0,0,0);}
.slidesNav ul li {display:inline-block; position:relative; width:10px; height:10px; margin:0 10px;}
.slidesNav ul li a {display: block; position:relative; z-index:1;width:100%;height:100%; cursor:pointer; text-decoration:none;}
.slidesNav ul li a span,
.fp-slidesNav ul li a span {position: absolute; left:50%; top:50%; z-index:1; height:6px; width:6px; margin:-3px 0 0 -3px; border-radius:50%; border:0; background-color: #cdccd5; -webkit-transition: all 0.1s ease-in-out; -moz-transition: all 0.1s ease-in-out; transition: all 0.1s ease-in-out;}
.slidesNav ul li a.active span,
.slidesNav ul li:hover a span,
.slidesNav ul li:hover a.active span {width:9px; height:9px; margin:-4px 0px 0px -4px; background-color: #301d17;}


/*= bg, title */
.page_header {min-width:1200px;}
.page_header .inner {height:310px; background-repeat:no-repeat; background-position:50% 0; text-indent:-9999em; }
.br_menu_main .page_header .inner {height:310px; background-image:url(/asset/images/menu/bg_main_menu.gif);}
#br_menu .page_header.type_A .inner {background-image:url(/asset/images/menu/bg_icecream_menu.gif);}
#br_menu .page_header.type_B .inner {background-image:url(/asset/images/menu/bg_icecreamcake_menu.gif);}
#br_menu .page_header.type_C .inner {background-image:url(/asset/images/menu/bg_beverage_menu.gif);}
#br_menu .page_header.type_D .inner {background-image:url(/asset/images/menu/bg_coffee_menu.gif?v=210107);}
#br_menu .page_header.type_E .inner {background-image:url(/asset/images/menu/bg_dessert_menu.gif);}
#br_menu .btn_list {text-align:center; margin-top:158px;}
#br_menu .btn_list a {display:inline-block; font-size:17px; font-weight:700; border:2px solid #f56f98; line-height:50px; width:178px; height:50px; text-align:center; color:#f56f98; border-radius:25px;}

/*= tab */
.tabmenu {border:1px solid #eaeaea; border-bottom:2px solid #ff7c98; border-radius:14px 14px 0 0; padding:9px 0; text-align:center;}
.tabmenu li {display:inline-block; box-sizing:border-box; margin:0 20px;}
.tabmenu li a {text-indent:-9999em; display:block; height:40px; padding:0 22px; border-radius:20px;}
/*>아이스크림 리스트 */
#br_menu .tabmenu li a {background:url(/assets/images/menu/bg_icecream_tab.png) no-repeat; border-radius:20px;}
#br_menu .tabmenu li a:hover,
#br_menu .tabmenu li a.on {background-color:#ff7c98;}
#br_menu .tabmenu li.all a {width:64px; background-position:0 0;}
#br_menu .tabmenu li.all a:hover, #br_menu .tabmenu li.all a.on {background-position:0 -40px;}
#br_menu .tabmenu li.fom a {width:66px; background-position:-185px 0;}
#br_menu .tabmenu li.fom a:hover, #br_menu .tabmenu li.fom a.on {background-position:-185px -40px;}
#br_menu .tabmenu li.season a {width:82px; background-position:-372px 0;}
#br_menu .tabmenu li.season a:hover, #br_menu .tabmenu li.season a.on {background-position:-372px -40px;}
#br_menu .tabmenu li.standard a {width:82px; background-position:-563px 0;}
#br_menu .tabmenu li.standard a:hover, #br_menu .tabmenu li.standard a.on {background-position:-563px -40px;}
#br_menu .tabmenu li.pack a {width:82px; background-position:-763px 0;}
#br_menu .tabmenu li.pack a:hover, #br_menu .tabmenu li.pack a.on {background-position:-763px -40px;}
#br_menu .tabmenu li.superb a {width:103px; background-position:-933px 0;}
#br_menu .tabmenu li.superb a:hover, #br_menu .tabmenu li.superb a.on {background-position:-933px -43px;}
/*>이벤트 */
#br_event .tabmenu li a {background:url(/assets/images/event/bg_event_tab.png) no-repeat 0 0;}
#br_event .tabmenu li a:hover,
#br_event .tabmenu li a.on {background-color:#ff7c98;}
#br_event .tabmenu li.all a {width:64px; background-position:0 0;}
#br_event .tabmenu li.all a:hover, #br_event .tabmenu li.all a.on {background-position:0 -40px;}
#br_event .tabmenu li.store a {width:114px; background-position:-146px 0;}
#br_event .tabmenu li.store a:hover, #br_event .tabmenu li.store a.on {background-position:-146px -40px;}
#br_event .tabmenu li.online a {width:115px; background-position:-339px 0;}
#br_event .tabmenu li.online a:hover, #br_event .tabmenu li.online a.on {background-position:-339px -40px;}
#br_event .tabmenu li.mobile a {width:109px; background-position:-537px 0;}
#br_event .tabmenu li.mobile a:hover, #br_event .tabmenu li.mobile a.on {background-position:-537px -40px;}
#br_event .tabmenu li.happypoint a {width:156px; background-position:-726px 0;}
#br_event .tabmenu li.happypoint a:hover, #br_event .tabmenu li.happypoint a.on {background-position:-726px -40px;}

/*>크리스마스 이벤트 추가 */
#br_christmas .tabmenu li a {background:url(/assets/images/christmas/bg_christmas_tab.png) no-repeat 0 0;}
#br_christmas .tabmenu li a:hover,
#br_christmas .tabmenu li a.on {background-color:#ff7c98;}
#br_christmas .tabmenu li.all a {width:77px; background-position:0 -4px;}
#br_christmas .tabmenu li.all a:hover, #br_christmas .tabmenu li.all a.on {background-position:0 -46px;}
#br_christmas .tabmenu li.online a {width:145px; background-position:-140px -4px;}
#br_christmas .tabmenu li.online a:hover, #br_christmas .tabmenu li.online a.on {background-position:-140px -46px;}
#br_christmas .tabmenu li.happypoint a {width:163px; background-position:-350px -4px;}
#br_christmas .tabmenu li.happypoint a:hover, #br_christmas .tabmenu li.happypoint a.on {background-position:-350px -46px;}
#br_christmas .tabmenu li.partner a {width:140px; background-position:-576px -4px;}
#br_christmas .tabmenu li.partner a:hover, #br_christmas .tabmenu li.partner a.on {background-position:-576px -46px;}
/*>크리스마스 이벤트 추가 끝*/

/*>ABOUT 점포개설문의 */
#br_about  .tabmenu {margin-top:40px; text-align:center;}
#br_about .tabmenu li {margin:0 9px;}
#br_about .tabmenu li a {background:url(/assets/images/about/bg_shopopen_inquiry_tab.png) no-repeat 0 0;}
#br_about .tabmenu li a:hover,
#br_about .tabmenu li a.on {background-color:#ff7c98;}
#br_about .tabmenu li.brsystem a {width:94px; background-position:0 0;}
#br_about .tabmenu li.brsystem a:hover, #br_about .tabmenu li.brsystem a.on {background-position:0 -40px;}
#br_about .tabmenu li.f_process a {width:81px; background-position:-161px 0;}
#br_about .tabmenu li.f_process a:hover, #br_about .tabmenu li.f_process a.on {background-position:-161px -40px;}
#br_about .tabmenu li.f_condition a {width:78px; background-position:-309px 0;}
#br_about .tabmenu li.f_condition a:hover, #br_about .tabmenu li.f_condition a.on {background-position:-309px -40px;}
#br_about .tabmenu li.counsel_info a {width:95px; background-position:-445px 0;}
#br_about .tabmenu li.counsel_info a:hover, #br_about .tabmenu li.counsel_info a.on {background-position:-445px -40px;}
#br_about .tabmenu li.f_faq a {width:87px; background-position:-611px 0;}
#br_about .tabmenu li.f_faq a:hover, #br_about .tabmenu li.f_faq a.on {background-position:-611px -40px;}
#br_about .tabmenu li.loan_info a {width:93px; background-position:-760px 0;}
#br_about .tabmenu li.loan_info a:hover, #br_about .tabmenu li.loan_info a.on {background-position:-760px -40px;}
/*>my br */
#br_mybr .tabmenu li {margin:0 10px;}
#br_mybr .tabmenu li a {background:url(/assets/images/mybr/bg_mybr_tab.png) no-repeat 0 0;}
#br_mybr .tabmenu li a:hover,
#br_mybr .tabmenu li a.on {background-color:#ff7c98;}
#br_mybr .tabmenu li.point a {width:103px; background-position:0 0;}
#br_mybr .tabmenu li.point a:hover, #br_mybr .tabmenu li.point a.on {background-position:0 -40px;}
#br_mybr .tabmenu li.coupon a {width:95px; background-position:-165px 0;}
#br_mybr .tabmenu li.coupon a:hover, #br_mybr .tabmenu li.coupon a.on {background-position:-165px -40px;}
#br_mybr .tabmenu li.store a {width:83px; background-position:-326px 0;}
#br_mybr .tabmenu li.store a:hover, #br_mybr .tabmenu li.store a.on {background-position:-326px -40px;}
#br_mybr .tabmenu li.flavor a {width:84px; background-position:-480px 0;}
#br_mybr .tabmenu li.flavor a:hover, #br_mybr .tabmenu li.flavor a.on {background-position:-480px -40px;}
#br_mybr .tabmenu li.event a {width:64px; background-position:-630px 0;}
#br_mybr .tabmenu li.event a:hover, #br_mybr .tabmenu li.event a.on {background-position:-630px -40px;}
#br_mybr .tabmenu li.modify a {width:88px; background-position:-768px 0;}
#br_mybr .tabmenu li.modify a:hover, #br_mybr .tabmenu li.modify a.on {background-position:-768px -40px;}
#br_mybr .tabmenu li.leave a {width:88px; background-position:-928px 0;}
#br_mybr .tabmenu li.leave a:hover, #br_mybr .tabmenu li.leave a.on {background-position:-928px -40px;}

/*>고객센터 */
#br_customer .tabmenu li {margin:0 5px;}
#br_customer .tabmenu li a {background:url(/assets/images/customer/bg_customer_tab.png) no-repeat 0 0;}
#br_customer .tabmenu li a:hover,
#br_customer .tabmenu li a.on {background-color:#ff7c98;}
#br_customer .tabmenu li.ccm a {width:148px; background-position:0 0;}
#br_customer .tabmenu li.ccm a:hover, #br_customer .tabmenu li.ccm a.on {background-position:0 -40px;}
#br_customer .tabmenu li.faq a {width:111px; background-position:-244px 0;}
#br_customer .tabmenu li.faq a:hover, #br_customer .tabmenu li.faq a.on {background-position:-244px -40px;}
#br_customer .tabmenu li.praise a {width:76px; background-position:-453px 0;}
#br_customer .tabmenu li.praise a:hover, #br_customer .tabmenu li.praise a.on {background-position:-453px -40px;}
#br_customer .tabmenu li.voc a {width:145px; background-position:-623px 0;}
#br_customer .tabmenu li.voc a:hover, #br_customer .tabmenu li.voc a.on {background-position:-623px -40px;}
#br_customer .tabmenu li.my-voc a {width:88px; background-position:-832px 6px;}
#br_customer .tabmenu li.my-voc a:hover, #br_customer .tabmenu li.my-voc a.on {background-position:-832px -46px;}



/*> 게시판 tabel */
.borad_table {width:100%; margin-top:10px; border-top:2px solid #ff7c98; border-spacing:0;}
.borad_table td {border-bottom:1px solid #dadada; text-align:center; color:#2f231c; font-size:13px;}
.borad_table .title {display:table-cell; height:76px; padding-left:20px; text-align:left; vertical-align:middle;}
.borad_table .title .tit {color:#948780; font-size:17px;}
.borad_table .top .title .tit {color:#2f231c;}
.borad_table .num,
.borad_table .period {color:#948780; font-weight:300;}
.borad_table .period {font-size:12px;}
.borad_table .icon_notice {display:block; width:49px; height:20px; margin:0 auto; border-radius:10px; background-color:#ff7c98; color:#fff; font-weight:bold; font-size:11px; text-align:center; line-height:22px;}
.borad_table .addfile {display:inline-block; width:16px; height:16px; margin-left:10px; background:url(/assets/images/about/icon_file.png) 0 50% no-repeat; text-indent:-9999em;}
.borad_table .icon_new {display:inline-block; width:28px; height:28px; margin-left:10px; border-radius:14px; background-color:#ffb400; color:#fff; font-weight:bold; text-align:center; line-height:30px;}

/*= selectbox ui */
.ui-widget {font-size:13px!important; font-family:"Nanum Barun Gothic", "나눔고딕", "NanumGothic", "돋움", "Dotum", sans-serif!important;}
.ui-state-default {background:#fff;}
.ui-state-default .ui-icon,
.ui-state-hover .ui-icon {background:url(/assets/images/common/icon_selectbox.png) 0 50% no-repeat;}
.ui-selectmenu-button span.ui-icon {position:absolute; top:50%; right:3%; left:auto; margin-top:-8px;}
.ui-selectmenu-button span.ui-selectmenu-text {padding:8px 0 8px 10px;}
.ui-state-default {width:70px!important; border-top:0; border-color:#d1cecc; vertical-align:middle; -webkit-box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8);
	-moz-box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8); box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8);}
.ui-state-default,
.ui-state-hover {border:1px solid #d1cecc; color:#636363;}
.ui-state-focus, .ui-widget-content .ui-state-focus {color:#636363;}
.ui-widget-content .ui-state-focus {border:0; background:#f5f5f5; color:#636363;}
.ui-widget-content {border-color:#d1cecc; color:#636363;}
.ui-selectmenu-menu .ui-menu {border-bottom:;}
.ui-menu .ui-menu-item {padding:4px 0 4px 13px!important;}
.ui-menu .ui-state-focus, .ui-menu .ui-state-active {margin:0;}

/*= modal */
.modal,
.modal_bg {position:fixed; top:0; right:0; bottom:0; left:0;}
.modal {display:none; overflow:auto; z-index:1050;}
.modal_bg {background:#000; opacity:0; -webkit-transition:opacity .8s ease; transition:opacity .8s ease;}
.modal_container {position:relative; max-width:1200px; margin:70px auto; opacity:0; -webkit-transition:all .4s ease .1s; transition:all .4s ease .1s; -webkit-transform:translate(0,-50px);  transform:translate(0,-50px);}
.modal_content {position:relative; border-radius:5px; background:#fff;}
.modal_close {position:absolute; top:19px; right:-103px;}
.modal_close a {display:block; overflow:hidden; width:87px; height:87px;}
.open_modal {/*overflow:hidden;*/ position:relative;}
.open_modal .modal.in {display:block;}
.open_modal .modal.on {opacity:1;}
.open_modal .modal.on .modal_bg {opacity:.5; filter:alpha(opacity=50);}
.open_modal .modal.on .modal_container {opacity:1; -webkit-transform:translate(0,0); transform:translate(0,0);}

/*= 검색하기 */
input.inline,
input.inline,
input.inline,
input.inline,
select.inline {display:inline-block; width:auto;}
.my-placeholder {color:#ff7c98 !important; font-weight:normal !important; font-size:13px !important;}
.my-placeholder::-webkit-input-placeholder {color:#ff7c98 !important; font-weight:normal; font-size:13px;}
.my-placeholder::-moz-placeholder {color:#ff7c98 !important; font-weight:normal; font-size:13px;}
#modal_search .modal_bg {top:186px !important;}
#modal_search .modal_container {width:100%; max-width:100% !important; margin:186px 0 0 0;}
#modal_search .modal_content {border-radius:0;}
#modal_search .modal_body {width:1200px; margin:0 auto; position:relative;}
#modal_search .modal_close {left:50%; margin-left:546px; top:42px; width:54px; height:54px; z-index:999;}
#modal_search, #modal_search .modal_bg{position:absolute;}
#modal_search .modal_body {padding:25px 0;}
/*.search_product .table {float:left; width:1053px;}*/
.search_product  .table th,
.search_product  .table td {vertical-align: top;}
.search_product  .table th {text-align:left; font-size:14px; color:#2f231c; font-weight:normal; padding-top:8px;}
.search_product  .table select {background:#fff; border:1px solid #d1cecc; border-radius:4px; width:128px; color:#636363; margin-right:14px;}
.search_product  .table input[type="text"] {width:260px;}
.search_product  .table input.my-placeholder {width:540px !important;}
.search_product  .submit {padding-top:25px; text-align:center;}
.search_product  .submit button {width:147px; height:37px; background:#ff7c98; color:#fff; font-size:15px; line-height:37px; border-radius:18px; border:0; cursor:pointer;}
.search_product  .table .hashtag {display:inline-block; vertical-align:middle; margin:10px 0 0 14px;}
.search_product  .table .hashtag dt, .search_product  .table .hashtag dd {float:left;}
.search_product  .table .hashtag dt {color:#9c9c9c; margin-right:10px;}
.search_product  .table .hashtag dt:before {margin-right:6px; content:"\00b7";}
.search_product  .table .hashtag dd a {color:#ff7c98; margin-right:6px; display:inline-block;}
.search_product  .allergie {float:left;}
.search_product  .allergie:after {display:table; clear:both; content:"";}
.search_product  .allergie label {float:left; width:70px; margin-top:8px; cursor:pointer;}
.search_product  .allergie label.clear_label {clear:both;}
.search_product  .allergie input[type="checkbox"]+span {display:block; padding-left:22px; background-image:url(/assets/images/search/bg_check_off.gif); background-repeat:no-repeat; color:#39261f; font-size:13px; line-height:17px;}
.search_product  .allergie input[type="checkbox"]:checked+span {background-image:url(/assets/images/search/bg_check_on.gif);}
/*= pagination */
.pagination {padding-top:25px; text-align:center;}
.btn_group + .pagination {padding-top:0;}
.pagination ul {display:inline-block;}
.pagination ul:after {display:table; clear:both; content:""}
.pagination li {float:left}
.pagination a,
.pagination span,
.pagination strong {display:block; width:45px; height:45px; margin:0 7px; border-radius:23px; border:1px solid #e4dbd7; color:#2f231c; font-size:12px; line-height:46px;}
.pagination strong {border:1px solid #f56f98; background:#f56f98; color:#fff;}
.pagination .bu a {text-indent:-9999em;}
.pagination .prev {background:url(/assets/images/common/ico_p_prev.gif) no-repeat 50% 50%;}
.pagination .next {background:url(/assets/images/common/ico_p_next.gif) no-repeat 50% 50%;}
.pagination .first {background:url(/assets/images/common/ico_p_first.gif) no-repeat 50% 50%;}
.pagination .last {background:url(/assets/images/common/ico_p_last.gif) no-repeat 50% 50%;}


/*! layout */
body {color:#483834; font-size:13px; font-family:"Nanum Barun Gothic", "나눔고딕", "NanumGothic", "돋움", "Dotum", sans-serif; line-height:1.5; letter-spacing:-.05em;}
a {color:#483834;}
:hover, :focus {outline:0;}
h1, h2, h3, h4, h5, h6 {color:#2f231c;}
input[type="search"],
input[type="text"],
input[type="tel"],
input[type="password"],
select {width:100%; height:32px; padding:8px 1px 8px 10px; border:0; background:#efefef; font-size:13px; line-height:16px; box-sizing:border-box;}
select {padding:0 1px 0 10px; background:#fff; line-height:normal;}
select::-ms-expand {border:0; background-color:transparent;}

#header {min-width:1200px; border-top:3px solid #ff7c98; border-bottom:1px solid #3f291a; background:url(/assets/images/common/bg_header.gif) 50% 0 repeat-x;}
#header .inner_header {}
#header .top_area {border-bottom:1px solid #e2d9d6;}
#header .top_area .inner {position:relative; width:1200px; height:114px; padding-top:21px; margin:0 auto;}
#header .logo {width:92px; height:92px; margin:0 auto;}
#header .logo a {display:block; width:100%; height:100%; background:url(/assets/images/common/logo_baskinrobbins.png) no-repeat; text-indent:-9999em;}
#header .sns,
#header .etc {position:absolute; top:50px;}
#header .sns {top:50px; left:0;}
#header .sns ul:after,
#header .etc ul:after {display:table; clear:both; content:"";}
#header .sns li {float:left; padding-right:10px;}
#header .etc {top:39px; right:0; height:54px; line-height:54px;}
#header .etc li {float:left; padding-left:20px; font-size:11px;}
#header .etc a {color:#4a3d39; }
#header .etc .search {padding-left:26px;}
#header .etc .search a {display:inline-block; width:54px; height:54px; background:url(/assets/images/common/icon_search.png) no-repeat; text-indent:-9999em;}
#header .etc .search a.on {background:url(/assets/images/common/icon_modal_close.gif) no-repeat;}

#header .menu_area .inner {width:1200px; margin:0 auto;}
#header .menu_area .inner:after,
#header .member ul:after,
#gnb .gnb_wrap > ul:after {display:table; clear:both; content:"";}
#header .member,
#header .member li {float:left;}
#header .member a {float:left; display:block; padding:0 23px;}
#header .member span {display:block; height:46px; background:url(/assets/images/common/gnb_menu.png) no-repeat; text-indent:-9999em;}
#header .member .login a {padding-left:0;}
#header .member .login span {width:35px; background-position:0px -1px;}
#header .member .join span {width:27px; background-position:-97px -1px;}
#header .member .logout span {width:47px; background-position:0 -47px;}
#header .member .mypage span {width:50px; background-position:-42px -1px;}

#gnb {float:right;}
#gnb .gnb_wrap > ul:after {display:table; clear:both; content:"";}
#gnb .gnb_wrap > ul > li {float:left; position:relative;}
#gnb .gnb_main a {display:block; padding:0 59px;}
#gnb .gnb_flavor .gnb_main a {padding-left:0;}
#gnb .gnb_about .gnb_main a {padding-right:0;}
#gnb .gnb_nutrition .gnb_main a {padding:0 27.5px;}
#gnb .gnb_main span {display:block; height:46px; background:url(/assets/images/common/gnb_menu.png) no-repeat; text-indent:-9999em; line-height:46px;}
#gnb .gnb_flavor .gnb_main span {width:164px; background-position:-133px -3px;}
#gnb .gnb_menu .gnb_main span {width:42px; background-position:-415px -3px;}
#gnb .gnb_nutrition .gnb_main span {width: 105px; background-position: -545px -3px;}
#gnb .gnb_event .gnb_main span {width:42px; background-position:-737px -3px;}
#gnb .gnb_store .gnb_main span {width:49px; background-position:-897px -3px;}
#gnb .gnb_about .gnb_main span {width:49px; background-position:-1057px -3px;}
#gnb .gnb_flavor .gnb_sub {padding-top:2px; opacity:0; -webkit-transition:opacity .3s ease; transition:opacity .3s ease;}
#gnb .gnb_flavor .gnb_sub a {padding:0;}
#gnb .gnb_menu .gnb_sub {margin-left:35px;}
 
#gnb .gnb_nutrition .gnb_sub {margin-left:50px;}
 
#gnb .gnb_event .gnb_sub {margin-left:43px;}
#gnb .gnb_store .gnb_sub {margin-left:57px;}
#gnb .gnb_about .gnb_sub {margin-left:55px;}
#gnb .gnb_about .gnb_sub {text-align:right; margin-left:0; width:100%; padding-left:30px;}
#gnb .gnb_about .gnb_sub li {white-space:nowrap; text-align:center;}

#gnb .gnb_sub {overflow:hidden; position:absolute; top:100%; left:0; height:0;  z-index:1000; font-size:14px; font-weight:300; text-align:center; -webkit-transition:height .5s ease; transition:height .5s ease;}
#gnb .gnb_sub li {padding-bottom:12px;}
#gnb .gnb_sub li:first-child {padding-top:40px;}
#gnb .gnb_sub a {display:block; padding:5px 0; color:#7b7b7b; line-height:1.2; opacity:0; text-transform:uppercase; -webkit-transition:opacity .3s linear; transition:opacity .3s linear;}
#gnb .gnb_bg {overflow:hidden; position:absolute; top:185px; left:0; height:0; z-index:999; min-width:100%; border-bottom:1px solid #693337; background:#fff; -webkit-transition:height .5s ease; transition:height .5s ease;}
#gnb .gnb_bg div {width:1200px; height:204px; margin:0 auto; background:url(/assets/images/common/img_happypoint_app.jpg) no-repeat 0 65px;}
#gnb:hover .gnb_sub,
#gnb:hover .gnb_bg {height:275px;}
#gnb:hover .gnb_bg {margin-top:1px;}
#gnb:hover .gnb_sub {overflow:visible;}
#gnb:hover .gnb_sub a {color:#948780; opacity:1; -webkit-transition:opacity .5s linear; transition:opacity .5s linear;}
#gnb:hover .gnb_sub a:hover {color:#ff75ac;}
#gnb:hover .gnb_flavor .gnb_sub {margin-left:-44px; opacity:1; -webkit-transition-delay:.3s; transition-delay:.3s;}
/* 크리스마스 이벤트 추가 */
#gnb .gnb_christmas .gnb_sub {margin-left:20px;}
#gnb .gnb_christmas .gnb_main span {width:79px; height:46px; background:url(/assets/images/common/gnb_christmas.png) no-repeat; text-indent:-9999em; line-height:46px; background-position: 0 18px;}
/* 크리스마스 이벤트 추가 끝 */

#container {min-width:1200px;}
#content {width:1200px; margin:0 auto; padding:0 0 160px;}

#footer {min-width:1200px; padding-bottom:60px; border-top:1px solid #feaf2b;}
#footer .policy,
#footer .brand_family .inner,
#footer .info {width:1200px; margin:0 auto;}
#footer nav ul:after {display:table; clear:both; content:"";}
#footer .policy {padding:0 80px; height:77px; line-height:77px; box-sizing:border-box;}
#footer .policy li {float:left; width:16.66%; text-align:center;}
#footer .policy a {color:#726454; font-size:14px;}
#footer .policy .privacy a {color:#ff7c98;font-weight:bold;}
#footer .brand_family {background-color:#f9f8f7;}
#footer .brand_family .inner {position:relative; height:75px;}
#footer .brand ul {padding:22px 0 0 222px;}
#footer .brand li {float:left;}
#footer .brand .li_1 {width:111px;}
#footer .brand .li_2 {width:118px;}
#footer .brand .li_3 {width:182px;}
#footer .brand .li_4,
#footer .brand .li_5 {padding-right:9px;}
#footer .familysite {position:absolute; top:21px; right:196px; width:150px; background-color:#fff;}
#footer .familysite button {width:100%; height:32px; padding-left:11px; border-radius:5px; border:1px solid #d1cecc; background:transparent url(/assets/images/common/family_size_off.png) no-repeat 100% 0; color:#b1ab9f; font-size:11px; text-align:left; -webkit-box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8);
	-moz-box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8); box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8);}
#footer .familysite button.on {background-image:url(/assets/images/common/family_size_on.png);}
#footer .familysite ul {display:none; position:absolute; left:0; bottom:28px; width:100%; padding:5px 0; border-radius:5px 5px 0 0; border:1px solid #d1cecc; background:#fff; box-sizing:border-box;}
#footer .familysite .on + ul {display:block;}
#footer .familysite a {display:block; height:25px; padding-left:15px; color:#726454; line-height:25px;}
#footer .familysite a:hover,
#footer .familysite a:focus {background:#efefef;}
#footer .info {padding-top:48px; color:#635b56; font-size:11px; text-align:center;}
#footer .info .logo {padding-bottom:35px;}
#footer .info > div p,
#footer .info > div address {display:inline-block; padding-bottom:3px;}
#footer .info > div p {padding-right:15px;}
#footer .info .copyright {padding-top:12px; color:#b1adab; font-size:11px;}

/*! content */
/*= 메인 */
#br_main #content {width:auto; min-width:1200px; padding-bottom:130px;}
#br_main h3.title {text-align:center;}
#br_main .br_menu .menu_list,
#br_main .store_delivery,
#br_main .snsbox,
#br_main .br_event {position:relative; width:1200px; margin:0 auto;}
#br_main .main_banner {position:relative;}
#br_main .flavor_month .top a,
#br_main .flavor_month .flavor_banner a {display:block; text-indent:-9999em}
#br_main .flavor_month .top a {height:150px; margin-bottom:3px; background:#f0dcb6 url(/assets/images/main/img_flaovr_month_top.png) 50% 0 no-repeat;}
#br_main .flavor_month .flavor_banner {position:absolute; top:0; left:0; width:100%; z-index:10;}
#br_main .flavor_month .flavor_banner a {height:854px; background:#513529 url(/assets/images/main/img_flavor_month.png) 50% 0 no-repeat;}
#br_main .flavor_month .flavor_banner a.on {height:0; -webkit-transition:height 1s ease; transition:height 1s ease;}
#br_main .banner_slide {position:relative; /*max-width:1600px;*/ min-width:1200px; margin:0 auto;}
#br_main .banner_slide ul:after {display:table; clear:both; content:"";}
#br_main .banner_slide li {float:left;}
#br_main .banner_slide li a {display:block; height:697px; background-repeat:no-repeat; background-position:50% 0; text-indent:-9999em;}
#br_main .banner_slide .banner_1 a {background-color:#fed104; background-image:url(/assets/images/main/banner/img_main_banner_1.jpg);}
#br_main .banner_slide .banner_2 a {background-color:#68d9d7; background-image:url(/assets/images/main/banner/img_main_banner_2.jpg);}
#br_main .banner_slide .banner_3 a {background-color:#f6f6f6; background-image:url(/assets/images/main/banner/img_main_banner_3.jpg);}
#br_main .banner_slide .banner_4 a {background-color:#eedfe2; background-image:url(/assets/images/main/banner/img_main_banner_4.jpg);}
#br_main .banner_slide .banner_5 a {background-color:#ff70a8; background-image:url(/assets/images/main/banner/img_main_banner_5.jpg);}
#br_main .banner_slide .banner_6 a {background-color:#91c534; background-image:url(/assets/images/main/banner/img_main_banner_6.jpg);}
#br_main .banner_slide .dslide {margin-top:-40px;}
#br_main .banner_slide .dslide a {width:14px; height:14px;}
#br_main .banner_slide .dslide a span {height:10px; width:10px; margin:-5px 0 0 -5px; background-color:#fff;}
#br_main .banner_slide .dslide a.active span,
#br_main .banner_slide .dslide a:hover  span,
#br_main .banner_slide .dslide a:hover a.active span {width:13px; height:13px; margin:-6px 0px 0px -6px; background-color:#301d17;}
#br_main .banner_slide .btns {}
#br_main .banner_slide .btns a {display:block; position:absolute; top:50%; margin-top:-54px;}
#br_main .banner_slide .btns .prev {left:20px;}
#br_main .banner_slide .btns .next {right:20px;}
#br_main .br_event {height:721px;}
#br_main .br_event > .title {padding:100px 0 50px;}
#br_main .br_event .list_product {overflow:hidden;}
#br_main .br_event ul {margin-left:-16px;}
#br_main .br_event ul:after {display:table; clear:both; content:"";}
#br_main .br_event li {float:left; width:25%; min-height:465px; padding-left:16px; box-sizing:border-box;}
#br_main .br_event li a {display:block;}
#br_main .br_event li span {display:block;}
#br_main .br_event figure {box-sizing:border-box;}
#br_main .br_event figure img {width:286px; border-radius:3px; border:1px solid #eaeaea;}
#br_main .br_event .type {margin:22px 0 8px 0;}
#br_main .br_event .title {color:#2f231c; font-size:17px; line-height:23px;}
#br_main .br_event .period {margin:11px 0; font-weight:300; color:#948780;}
#br_main .br_menu {position:relative; height:1157px; background:url(/assets/images/main/bg_menu.jpg) 50% 0 no-repeat;}
#br_main .br_menu .menu_list {height:1066px; background:url(/assets/images/main/img_menu_list.png?ver=210501) 50% 0 no-repeat; margin-top:-89px;}
#br_main .br_menu .title {padding-top:78px;}
#br_main .br_menu .menu_list > div {position:absolute; }
#br_main .br_menu a {display:block; background-color:#000; opacity:0; filter:alpha(opacity=0);}
#br_main .br_menu .icecream {top:50px; left:319px;}
#br_main .br_menu .icecream a {width:395px; height:302px;}
#br_main .br_menu .icecreamcake {top: 50px;left: 752px;}
#br_main .br_menu .icecreamcake a {width:276px; height:472px;}
#br_main .br_menu .baverage {top: 390px;left: 117px;}
#br_main .br_menu .baverage a {width:230px; height:366px;}
#br_main .br_menu .coffee {top: 390px; left: 385px;}
#br_main .br_menu .coffee a {width:329px; height:292px;}
#br_main .br_menu .dessert {top: 721px; left: 385px;}
#br_main .br_menu .dessert a {width:329px; height:177px;}
#br_main .br_menu .gift {top: 560px;left: 752px;}
#br_main .br_menu .gift a {width:276px; height:183px;}
#br_main .store_delivery {height:547px; box-sizing:border-box;}
#br_main .store_delivery:after {display:table; clear:both; content:"";}
#br_main .store_delivery .store,
#br_main .store_delivery .order {float:left; width:50%;}
#br_main .store_delivery .title {padding:95px 0 50px;}
#br_main .snsbox .title {padding-bottom:26px;}
#br_main .snsbox ul:after {display:table; clear:both; content:"";}
#br_main .snsbox .sns {width:400px; margin:0 auto; padding-bottom:35px;}
#br_main .snsbox .sns li {float:left; padding:0 9px;}
#br_main .main_insta li {float:left; width:16.666%;}
#br_main .main_insta li img {width:100%;}
#br_main .snsbox .dslide {padding-top:40px;}

/* = 검색결과 */
.br_search_result .content_header {position:relative; padding-top:85px;}
.br_search_result .stit_about {padding:10px 0 40px; color:#483834; font-size:17px; text-align:center;}
.br_search_result .stit_about span {color:#ff5a7d;}
.br_search_result .result_total {padding-bottom:30px; text-align:center;}
.br_search_result .result_total a {display:inline-block; width:180px; height:46px; border-radius:35px; background-color:#ff7c98; color:#fff; font-weight:300; font-size:18px; text-align:center; line-height:46px;}
.br_search_result .inner_content {border-top:2px solid #ff7c98;}

.br_search_result .search_product_total .search_product,
.br_search_result .search_product_total.on .result_total:after,
.br_search_result .search_product_total.on .result_total a {display:none;}
.br_search_result .search_product_total.on .search_product {display:block;}

/* 영양정보 */
/*= 상단 타이틀 */
#br_menunutrition .line_title_nutrition {text-align:center; width:1200px; padding:80px 0 10px; display:table-cell; vertical-align:middle; color:#483834; font-size:17px; font-weight:normal;}
#br_menunutrition .line_title_nutrition span {display:block; margin-bottom:10px;}
#br_menunutrition .line_title_nutrition span img {vertical-align:middle;}
#br_menunutrition .line_title_nutrition span:before,
#br_menunutrition .line_title_nutrition span:after{display:inline-block; width:36px; height:11px; vertical-align:middle; content:"";}
#br_menunutrition .line_title_nutrition span:before {margin-right:10px; background:url(/assets/images/common/icon_title_1.png) no-repeat;}
#br_menunutrition .line_title_nutrition span:after {margin-left:10px; background:url(/assets/images/common/icon_title_2.png) no-repeat;}
#br_menunutrition .nutrition_p {color:#483834; font-size:17px; text-align:center;}
#br_menunutrition .nutrition_search {margin-top:60px; padding:30px 0 20px; border:1px solid #d8d1cc; border-radius:5px; box-sizing:border-box;}
#br_menunutrition .search_table {width:856px; margin:0 auto;}
#br_menunutrition .search_table table {width:100%; border-collapse:collapse;}
#br_menunutrition .search_table th {color:#2f231c; font-size:15px; text-align:left;}
#br_menunutrition .product_input {padding-right:40px;}
#br_menunutrition .product_input input {border:1px solid #d8d1cc; border-radius:5px; background:#fff;}
#br_menunutrition .ingredient select {display:inline-block; width:154px; padding-left:10px; border:1px solid #d8d1cc; border-radius:5px;}
#br_menunutrition .allergy {padding-top:20px}
#br_menunutrition .allergy label {cursor:pointer;}
#br_menunutrition .allergy span {display:inline-block; padding:0 24px 0 22px; color:#39261f; font-size:13px; line-height:17px;}
#br_menunutrition .allergy input[type="checkbox"]+span {background:url(/assets/images/search/bg_check_off.gif) no-repeat;}
#br_menunutrition .allergy input[type="checkbox"]:checked+span {background:url(/assets/images/search/bg_check_on.gif) no-repeat;}
#br_menunutrition .allergy .sup {padding-top:20px; color:#9d9d9d; font-size:13px;}
#br_menunutrition .search_btn {margin-top:32px;}
#br_menunutrition .search_btn a {display:block; width:180px; height:50px; margin:0 auto; border-radius:25px; background:#ff7c98; color:#fff; font-size:18px; line-height:50px; text-align:center;}
#br_menunutrition .search_btn button {display:block; width:180px; height:50px; margin:0 auto; border:0; border-radius:25px; background:#ff7c98; color:#fff; font-size:18px; line-height:50px; text-align:center; cursor:pointer;}
#br_menunutrition .inner_content {padding-top:60px;}
#br_menunutrition .list_product header {position:relative; text-align:center;}
#br_menunutrition .list_product .stit_about {margin-top:10px; color:#372317; font-size:15px;}
#br_menunutrition .list_product .stit_about span {color:#ff7c98;}
#br_menunutrition .result_list {margin-top:15px;}
#br_menunutrition .result_list table {width:100%; border-top:2px solid #ff7c98; border-collapse:collapse;}
#br_menunutrition .result_list th {border-bottom:1px solid #d8d1cc; color:#ff7c98; font-size:13px; line-height:42px;}
#br_menunutrition .result_list td {border-bottom:1px solid #d8d1cc; color:#2f231c; font-size:13px; text-align:center; line-height:46px;}
#br_menunutrition .result_list td:nth-child(even) {background:#f7f7f7;}

/*= MENU */
/*> 리스트 */
.br_menu_main .menu_more {display:block; width:70px; height:20px; margin:10px auto 25px; border-radius:25px; border:2px solid #ece2de; color:#a48e74; font-size:11px; line-height:22px;}

#br_menu #content {width:auto;}
#br_menu #content .inner_content {width:1200px; margin:0 auto;}
.best_icecream .title {padding:90px 0 45px; text-align:center;}
.best_icecream .slider {overflow:hidden; position:relative; min-width:1200px; height:193px;}
.best_icecream .list_wrap {/* position:absolute; */ margin:0 auto; text-align:center;}
.best_icecream .list_wrap ul {display:inline-block;}
.best_icecream .list_wrap ul:after {display:table; clear:both; content:"";}
.best_icecream .list_wrap li {float:left; width:218px; text-align:center;}
.best_icecream .list_wrap a {display:block; margin:0 27px;}
.best_icecream .list_wrap .img {position:relative; width:164px; height:164px; margin:5px 0 7px; border-radius:82px; background:#f4f4f4 url(/assets/images/menu/bg_icecream_corn.png) 50% 100% no-repeat; background-size:40px auto; text-align:center; line-height:82px;}
.best_icecream .list_wrap .img:before {position:absolute; top:-5px; left:50%; width:31px; height:38px; margin:0px 0 0 -15px; background:url(/assets/images/menu/icon_rank_4.png) no-repeat; content:"";}
.best_icecream .list_wrap .top0 .img {background-color:#ffe1e7;}
.best_icecream .list_wrap .top1 .img {background-color:#ffd884;}
.best_icecream .list_wrap .top2 .img {background-color:#e3d2bd;}
.best_icecream .list_wrap .top0 .img:before {background-image:url(/assets/images/menu/icon_rank_1.png);}
.best_icecream .list_wrap .top1 .img:before {background-image:url(/assets/images/menu/icon_rank_2.png);}
.best_icecream .list_wrap .top2 .img:before {background-image:url(/assets/images/menu/icon_rank_3.png);}
.best_icecream .list_wrap .img strong {display:inline-block; position:absolute; top:6px; left:68px; width:30px; color:#fff; font-size:11px; font-weight:normal; text-align:center; line-height:11px; letter-spacing:-.01em}
.best_icecream .list_wrap .img img {width:140px; margin-top:22px;}
.best_icecream .list_wrap .ice_name {color:#918983;}

#br_menu .tabmenu {margin-top:0;}
.br_menu_main .list_product .list {margin-top:0; border-left:1px solid #ebebeb; }
.list_product .list:after {display:table; clear:both; content:"";}
.list_product .list .item {position:relative; float:left; width:25%; margin-top:-1px; border:1px solid #ebebeb; border-width:1px 1px 1px 0px; text-align:center; box-sizing:border-box;}
.br_search_result .list {border-left:1px solid #ebebeb;}
.br_search_result .list .item {margin-top:0; border-width:0 1px 1px 0px;}
.br_menu_list .list_product .list .item {border-width:0 1px 1px 0;}

/* 명예의 전당 백그라운드 추가 */
.list_product .list .item > div:after {position:absolute; left:10px; top:10px; width:279px; height:278px; background:#fff; content:""; z-index:-1; border-radius:10px;}
.list_product .list .item .plan:after {background:#f4f4f4;}
.list_product .list .item .decide:after {background:#ffebf0;}

.list_product .icon-txt {position:absolute; top:120px; right:32px; width:69px; height:24px; line-height:24px; font-size:12px; border-radius:35px; background:#fff;}
.list_product .review .icon-txt {border:2px solid #d2a976; color:#d1a773;}
.list_product .plan .icon-txt {border:2px solid #ff852a; color:#ff8830;}
.list_product .decide .icon-txt {border:2px solid #ff7c98; color:#ff436b;}
.list_product .review .icon-txt:before {position:absolute; top:24px; left:20px; border:5px solid transparent; border-top:5px solid #d1a773; border-left:5px solid #d1a773; content:"";}
.list_product .review .icon-txt:after {position:absolute; left:22px; top:21px; border:4px solid transparent; border-top:4px solid #fff; border-left:4px solid #fff; content:"";}
.list_product .plan .icon-txt:before {position:absolute; top:24px; left:20px; border:5px solid transparent; border-top:5px solid #ff8830; border-left:5px solid #ff8830; content:"";}
.list_product .plan .icon-txt:after {position:absolute; left:22px; top:21px; border:4px solid transparent; border-top:4px solid #fff; border-left:4px solid #fff; content:"";}
.list_product .decide .icon-txt:before {position:absolute; top:24px; left:20px; border:5px solid transparent; border-top:5px solid #ff436b; border-left:5px solid #ff436b; content:"";}
.list_product .decide .icon-txt:after {position:absolute; left:22px; top:21px; border:4px solid transparent; border-top:4px solid #fff; border-left:4px solid #fff; content:"";}

.br_menu_list .list_product .list {overflow:hidden; margin-top:0; border-left:1px solid #ebebeb; border-top:1px solid #ebebeb;}
.br_menu_list .list_product .list li {/*margin-left:-1px;*/}
.br_menu_list .list_product .list:after {content:""; display:table; clear:both;}
.list_product .list .product {display:block; height:298px; }
.list_product figure {font-size:18px;}
.list_product figure figcaption {display:table; width:100%; height:56px; font-weight:normal; line-height:1.2;}
.list_product figure figcaption span {display:table-cell; vertical-align:bottom;}
.list_product figure .img {display:block; position:absolute; top:120px; left:50%; width:160px; margin-left:-80px; text-align:center;}
.list_product figure img {width:160px;}
.list_product .icecream {background:url(/assets/images/menu/bg_icecream_corn_2.png) 50% 100% no-repeat; background-size:50px auto;}
.list_product .icecream figure .img {display:block; position:absolute; top:111px; left:50%; width:180px; margin-left:-90px; text-align:center;}
.list_product .icecream figure img {width:180px;}
.list_product .hashtag_buy {position:absolute; top:57px; left:0; width:100%;}
.list_product .hashtag {margin:0 auto;}
.list_product .hashtag,
.list_product .hashtag ul:after {display:table; clear:both; content:"";}
.list_product .hashtag ul,
.list_product .hashtag .btns {float:left;}
.list_product .hashtag li {display:inline-block; padding-right:5px;}
.list_product .hashtag li a {color:#9d9d9d; font-weight:300;}
.list_product .hashtag .btns {width:17px;}
.list_product .hashtag .btns a {display:block; height:17px; background:url(/assets/images/common/icon_more.gif) no-repeat; text-indent:-9999em;}
.list_product .buy {width:58px; padding-top:7px; margin:0 auto;}
.list_product .buy a {display:block; width:100%; height:21px; border-radius:10px; background-color:#d3c1ab; color:#fff; font-size:11px; text-align:center; line-height:23px;}
/*> 해시태그 레이어 */
.hashbox {position:absolute; top:0px; left:0;}
.hashbox .modal_container {width:auto; margin:55px auto;}
.hashbox  .modal_content {position:relative; margin:0 40px; padding:13px 19px 13px 13px; border-radius:0; border:1px solid #cecece; background-color:#fff;}
.hashbox .modal_content ul:after {display:table; clear:both; content:"";}
.hashbox .modal_content li {float:left; padding-right:7px;}
.hashbox  .modal_content li a {color:#9d9d9d; font-weight:300;}
.hashbox  .modal_close {position:absolute; top:4px; right:4px;}
.hashbox  .modal_close a {display:block; width:15px; height:15px; background-color:#d3c1ab; text-align:center; line-height:17px;}
.hashbox  .modal_close span {color:#fff;}

/* 명예의 전당 추천하기 버튼 */
.btn_recommend {position:absolute; left:50%; top:88px; margin-left:-40px;}
.btn_recommend span {display:block; padding-left:30px; height:21px; line-height:27px; background:url(/assets/images/common/btn_like.png) no-repeat; color:#9d9d9d; font-size:15px;}
.btn_recommend span.full-off {background-position:0 -42px;}
.btn_recommend span.full-on {background-position:0 -63px; color:#ff7c98;}
.btn_recommend span.on {background-position:0 -21px; color:#ff7c98;}

/*> 상세페이지 */
#br_menu .view_wrap {width:900px; margin:45px auto 0;}
.view_product .header {padding:52px 0 0 0; text-align:center; background:url(/assets/images/common/icon_title_top.png) 50% 0 no-repeat; position:relative;}
.view_product .header .name {color:#2f231c; font-size:57px; font-weight:200; line-height:1.2;}
.view_product .header .name small {display:block; padding-bottom:3px; font-weight:normal; font-size:11px; color:#cc9b3b; line-height:11px;  text-transform:uppercase;}
.view_product .content {color:#948780; font-weight:300; font-size:16px; text-align:center; line-height:20px;}
.view_product .photo {text-align:center; border-bottom:2px solid #ff7c98; height:400px;}
.view_product.icecream .photo {background:url(/assets/images/menu/img_con.png) 50% 220px no-repeat; background-size:110px auto;}
.view_product.icecream .photo img {margin-top:-33px;}
.view_product .photo img {margin-top:5px;}
/*> 이전/다음 */
.page_prevnext {position:absolute; top:460px; left:50%; width:1200px; margin-left:-600px; height:0; z-index:999;}
.page_prevnext a {overflow:hidden; position:relative; width:73px; height:73px; border:1px solid #bbb; border-radius:36px; box-sizing:border-box; background-color:#fff; -webkit-transition:width .2s ease; transition:width .2s ease;}
.page_prevnext .prev a {float:left;}
.page_prevnext .next a {float:right;}
.page_prevnext a:before {color:#d1cab7; position:absolute; top:35px; line-height:0; font-size:16px;}
.page_prevnext .prev a:before {left:32px; content:"<";}
.page_prevnext .next a:before {right:32px; content:">";}
.page_prevnext a:hover:before {color:#ff99bf; font-weight:700;}

.page_prevnext div {position:absolute; top:15px; width:190px; background:#fff; opacity:0; border-radius:34px 34px; filter:alpha(opacity=0); -webkit-transition:opacity .25s ease; transition:opacity .25s ease;}
.page_prevnext div:after {display:table; clear:both; content:"";}
.page_prevnext .prev div {left:60px;}
.page_prevnext .next div {right:60px;}
.page_prevnext .prev span {float:left;}
.page_prevnext .next span {float:right;}
.page_prevnext .image {display:inline-block; height:56px;}
.page_prevnext.icecream .image {background:url(/assets/images/menu/img_con.png) 50% 100% no-repeat; background-size:17px auto;}
.page_prevnext .image img {width:45px; height:45px;}
.page_prevnext .title {display:inline-block; overflow:hidden; width:118px; min-height:48px; padding:0 10px 0; font-size:13px; color:#2f231c; text-align:center; text-overflow:ellipsis; white-space:nowrap; line-height:48px;}
.page_prevnext a:hover,
.page_prevnext a:focus {width:275px; border:1px solid #f37da0;}
.page_prevnext a:hover div,
.page_prevnext a:focus div {opacity:1; filter:alpha(opacity=100);}

.view_product .buy {position:absolute; left:0; bottom:-23px;width:100%; z-index:9;}
.view_product .buy a {display:inline-block; font-size:17px; font-weight:700; background:#f56f98; line-height:50px; width:178px; height:50px; text-align:center; color:#fff; border-radius:25px;}
.view_product .prdinfo {padding:49px 0 45px 0; border-bottom:1px solid #dadada; font-size:14px; position:relative; overflow:hidden; margin-bottom:80px;}
.view_product .prdinfo p,
.view_product .prdinfo .consist,
.view_product .prdinfo .material {line-height:27px; color:#2f231c;}
.view_product .prdinfo p strong,
.view_product .prdinfo .consist strong,
.view_product .prdinfo .material strong {color:#948780; font-weight:normal; display:inline-block; min-width:38px; margin-right:20px;}
.view_product .material {width:550px;}
.view_product .material:after {display:table; content:""; clear:both;}
.view_product .material strong,
.view_product .material p {display:block; float:left;}
.view_product .material p {width:460px;}
.view_product .material span {white-space:nowrap;}
.view_product .prdinfo .consist li span {color:#948780; font-weight:normal; display:inline-block; width:100px;}
.view_product .prdinfo .consist {overflow:hidden; width:550px;}
.view_product .prdinfo .consist strong {float:left;}
.view_product .prdinfo .consist span {float:left; width:490px;}
.view_product .prdinfo .bg_con { position:absolute; left:50%; top:-180px; margin-left:-55px; opacity:.5; filter:alpha(opacity=50); display:none;}
.view_product.icecream .prdinfo .bg_con {display:block;}
.view_product .bg_con img {width:110px;}
.view_product .link .rig {position:absolute; right:0; top:49px;}
.view_product .link.coffee {width:100%; height:35px; margin-bottom:35px;}
.view_product .link .btn_store {display:none;}
.view_product .link.coffee .btn_store {display:block;}
.view_product .link p,
.view_product .link .sns,
.view_product .link li {float:left;}
.view_product .link p {margin-right:24px;}
.view_product .link li + li {margin-left:8px;}
.link .favorite a {display:block; width:35px; height:35px; background:url(/assets/images/common/ico_favorite.png) 0 0; position:relative;}
.link .favorite a:hover,
.link .favorite a.on {background:url(/assets/images/common/ico_favorite_on.png) 0 0;}
.link .favorite a span {visibility:hidden; display:block; position:absolute; top:-32px; left:50%; width:130px; height:20px; margin:0 0 6px -70px; border-radius:10px; border:1px solid #e1e0e1; background:#fff; color:#a79c8e; text-align:center; line-height:22px; font-size:11px;}
.link .favorite a span:after {position:absolute; top:20px; left:50%; height:6px; background:url(/assets/images/store/bg_tooltip_arrow.png) 50% 100% no-repeat; content:""; width:5px;}
.link .favorite a:hover span {visibility:visible;}

/* 메이커스 기능 추가 */
.markers {margin-bottom:190px;}
.markers .txt {margin-bottom:30px; color:#786960; font-size:22px; font-weight:300; text-align:center;}
.markers .txt span {color:#ff3762;}
.markers .btn_view_like {margin-bottom:45px; text-align:center;}
.markers .btn_view_like span {position:relative; display:inline-block; width:154px; height:46px; padding-left:20px; line-height:46px; background:#fff; border:2px solid #cdc2bc; border-radius:23px; color:#cdc2bc; font-size:17px;}
.markers .btn_view_like span:after {position:absolute; left:38px; top:11px; width:23px; height:22px; background:url(/assets/images/common/btn_view_like.png) no-repeat; content:"";}
.markers .btn_view_like span.on {border-color:#f56f98; color:#f56f98;}
.markers .btn_view_like span.on:after {background-position:0 -22px;}
.markers .btn_view_like span.full-off:after {background-position:0 -44px;}
.markers .btn_view_like span.full-on {border-color:#f56f98; color:#f56f98;}
.markers .btn_view_like span.full-on:after {background-position:0 -66px;}

.markers .info-graph {position:relative; padding:132px 100px 0;}
.markers .info-graph .info {position:relative; z-index:10; }
.markers .info-graph .info li {width:110px; padding-top:30px; position:absolute; left:25.3%; top:0px; color:#786960;}
.markers .info-graph .info li:after {position:absolute; left:50%; bottom:55px; margin-left:-17px; display:block; width:18px; height:16px; background:url(/assets/images/common/icon_ice.png) no-repeat; content:"";}
.markers .info-graph .info li:before {position:absolute; left:50%; top:-7px; width:1px; height:27px; margin-left:-8px; background:#786960; content:"";}
.markers .info-graph .info li + li {left:100%; margin-left:-47px; color:#f56f98;}
.markers .info-graph .info li + li:after {background-position:0 -16px;}
.markers .info-graph .graph {position:relative; height:12px; border:1px solid #c7c4bc; border-right:0; border-radius:6px 0 0 6px;}
.markers .info-graph .graph > div {position:relative; height:12px; background:#ffb4c3; border-radius:6px 0 0 6px; z-index:-1;}
.markers .info-graph .bubble {position:absolute; top:-133px; right:0; width:200px; margin-right:-110px; padding:18px 0 20px; border:1px solid #cdc2bc; border-radius:44px; text-align:center;}
.markers .info-graph .bubble:before {width:11px; height:11px; position:absolute; left:50%; bottom:-11px; margin-left:-11px; background:url(/assets/images/common/bg_arrow.png) no-repeat; content: "";}
.markers .info-graph .bubble p {color:#786960;}
.markers .info-graph .bubble p + p {font-size:22px; font-weight:300;}
.markers .info-graph .bubble p + p span {color:#ff3762;}
.markers .txt-list {margin-top:90px;}
.markers .txt-list span {position:relative; padding:0 25px 0 17px; color:#786960;}
.markers .txt-list span:before {position:absolute; left:0; top:2px; width:11px; height:11px; border-radius:50%; content:""; background:#e3d2bd;}
.markers .txt-list span + span:before {background:#f56f98;}
.markers .txt-list ul {margin-top:20px;}
.markers .txt-list ul li {margin-bottom:10px; padding-left:8px; color:#786960; background:url(/assets/images/common/bg_dot.gif) 0 7px no-repeat;}
.markers .txt-list ul li em {color:#f56f98; font-style:normal;}

.view_price {margin:0 0 98px 0;}
.view_price section {float:left; width:408px;}
.view_price .concup {width:424px; margin-right:63px;}
.view_price:after {display:table; content:""; clear:both;}
.view_price h2 {text-align:center; margin-bottom:33px; font-weight:normal;}
.view_price li {float:left; width:152px; padding:14px 0 0 60px; font-size:11px; color:#aca09a; line-height:16px; min-height:127px;}
.view_price .handpack li {padding-left:78px; width:125px;}
.view_price li span {display:block; font-size:14px; color:#837e7c; margin-bottom:9px;}
.view_price li strong {display:block; color:#ffa94c; font-size:12px; margin-top:10px;}
.view_price li.c2, .view_price li.c4 {padding-left:67px; width:145px;}
.view_price li.c1 {background:url(/assets/images/menu/ico_c1.gif) no-repeat 3px 21px;}
.view_price li.c2 {background:url(/assets/images/menu/ico_c2.gif) no-repeat 3px 17px;}
.view_price li.c3 {background:url(/assets/images/menu/ico_c3.gif) no-repeat 3px 12px;}
.view_price li.c4 {background:url(/assets/images/menu/ico_c4.gif) no-repeat 3px 0;}
.view_price li.p1 {background:url(/assets/images/menu/ico_p1.gif) no-repeat 5px 19px;}
.view_price li.p2 {background:url(/assets/images/menu/ico_p2.gif) no-repeat 2px 19px;}
.view_price li.p3 {background:url(/assets/images/menu/ico_p3.gif) no-repeat 5px 14px;}
.view_price li.p4 {background:url(/assets/images/menu/ico_p4.gif) no-repeat 0 14px;}

.view_coffee {margin:0 0 98px 0; text-align:center;}
.view_coffee h2 {text-align:center; margin-bottom:33px; font-weight:normal;}
.view_coffee .hot {margin-top:65px;}
.view_coffee .ice {margin-top:50px;}
.view_coffee .coffee-list {overflow:hidden; position:relative; min-width:900px; height:200px; margin-top:15px;}
.view_coffee .coffee-list .list_wrap {position:absolute; width:100%; margin:0 auto; text-align:center;}
.view_coffee .coffee-list ul {display:inline-block; margin:0 -2px 0 -3px;}
.view_coffee .coffee-list ul:after {display:table; clear:both; content:"";}
.view_coffee .coffee-list .wrap_li {float:left; padding:0 2px 0 3px; box-sizing:border-box;}

.view_flavor {height:260px; margin-bottom:156px; overflow:hidden;}
.view_flavor.consist {height:auto;}
.swipe {visibility:hidden; overflow:hidden; position:relative;}
.swipe_wrap {overflow:hidden; position:relative;}
.swipe_wrap > div, .swipe_wrap > ul, .swipe_wrap > li {float:left; position:relative;}
.view_flavor .list_product {height:181px; overflow:hidden; margin-bottom:27px; padding:0!important; text-align:center;}
.view_flavor.consist .list_product {height:auto; overflow:auto;}
.view_flavor h2 {font-size:17px; width:900px; color:#2f231c; text-align:center; font-weight:normal; margin-bottom:15px;}
/*.view_flavor .list_product ul {float:left; width:895px; margin:0; border:none;}*/
.view_flavor .list_product ul {display:inline-block; margin:0; border:none;}
.view_flavor .list_product ul li {float:left; text-align:center; width:179px; height:179px; position:relative; overflow:hidden; box-sizing:border-box; background:url(/assets/images/menu/img_con.png) 50% 120px no-repeat; background-size:35px auto;border:1px solid #e3e7e7;}
.view_flavor .list_product ul li span {display:table-cell; width:100%; vertical-align:middle; height:62px;}
.view_flavor .list_product ul li a {color:#94927b;}
.view_flavor .list_product ul li + li {margin-left:-1px;}
.view_flavor .list_product ul li:nth-child(5n+1) {margin-left:0;}
.view_flavor .list_product ul li img {width:112px; position:absolute; left:50%; margin-left:-56px; top:57px;}
.view_flavor .slidesNav {text-align:center;}

.view_insta {height:260px; position:relative; overflow:hidden;}
.view_insta .list_product {overflow:hidden; float:left; height:181px; padding:0!important; width:900px;}
.view_insta h2 {font-size:17px; width:900px; color:#2f231c; text-align:center; font-weight:normal; margin-bottom:15px;}
.view_insta .list_product ul {float:left; width:895px; margin:0;}
.view_insta .list_product ul li {float:left; text-align:center; width:179px; height:179px; position:relative; overflow:hidden; box-sizing:border-box;}
.view_insta .list_product ul li a {display:block; width:100%; height:100%;}
.view_insta .list_product ul li img {width:179px;}
.view_insta .slidesNav {text-align:center;}
.br_menu_view .view_insta .dslide {margin-top:25px;}

.br_menu_view .view_insta .list_product figure {display:table; height:100%;}
.br_menu_view .view_insta .list_product figure a {display:table-cell; vertical-align:middle;}
.br_menu_view .view_insta .list_product ul {border-left:none;}

.view_detail_insta .insta_header {text-align:center;}
.view_detail_insta h2 {font-size:17px; color:#2f231c; font-weight:normal; margin-bottom:10px;}
.view_detail_insta p {margin-bottom:20px; color:#ff75ac; font-size:14px;}

/*= EVENT */
/* 이벤트 페이지 */
.br_event_list .tabmenu {margin-bottom:40px;}
.br_event_list .event_list {overflow:hidden;}
.br_event_list .event_list ul {width:1214px; margin-left:-14px;}
.br_event_list .event_list ul:after {display:table; content:""; clear:both;}
.br_event_list .event_list li {float:left; width:25%; min-height:500px; padding-left:14px; box-sizing:border-box;}
.br_event_list .event_list li a {display:block;}
.br_event_list .event_list li span {display:block;}
.br_event_list .event_list figure {overflow:hidden; border-radius:5px; box-sizing:border-box; border:1px solid #eaeaea;}
.br_event_list .event_list .type {margin:22px 0 8px 0;}
.br_event_list .event_list .period {margin:11px 0;}
.br_event_list .event_list .title {color:#2f231c; font-size:17px; line-height:23px;}
.br_event_list .event_list .winner a {display:inline-block; background:#d3c1ab; color:#fff; font-weight:bold; padding:5px 19px; border-radius:15px; font-size:11px;}
/* 크리스마스 이벤트 페이지 */
.br_christmas_list .tabmenu {margin-bottom:40px;}
.br_christmas_list .event_list {overflow:hidden;}
.br_christmas_list .event_list ul {width:1214px; margin-left:-14px;}
.br_christmas_list .event_list ul:after {display:table; content:""; clear:both;}
.br_christmas_list .event_list li {float:left; width:25%; min-height:500px; padding-left:14px; box-sizing:border-box;}
.br_christmas_list .event_list li a {display:block;}
.br_christmas_list .event_list li span {display:block;}
.br_christmas_list .event_list figure {overflow:hidden; border-radius:5px; box-sizing:border-box; border:1px solid #eaeaea;}
.br_christmas_list .event_list .type {margin:22px 0 8px 0;}
.br_christmas_list .event_list .period {margin:11px 0;}
.br_christmas_list .event_list .title {color:#2f231c; font-size:17px; line-height:23px;}
.br_christmas_list .event_list .winner a {display:inline-block; background:#d3c1ab; color:#fff; font-weight:bold; padding:5px 19px; border-radius:15px; font-size:11px;}
/*> 당첨자 리스트 */
.br_event_winner .tabmenu {margin-bottom:40px;}
.br_event_winner .event_list {overflow:hidden;}
.br_event_winner .event_list ul {width:1214px; margin-left:-14px;}
.br_event_winner .event_list ul:after {display:table; content:""; clear:both;}
.br_event_winner .event_list li {float:left; width:25%; min-height:500px; padding-left:14px; box-sizing:border-box;}
.br_event_winner .event_list li a {display:block;}
.br_event_winner .event_list li span {display:block;}
.br_event_winner .event_list figure {overflow:hidden; border-radius:5px; box-sizing:border-box; border:1px solid #eaeaea;}
.br_event_winner .event_list .type {margin:22px 0 8px 0;}
.br_event_winner .event_list .period {margin:11px 0;}
.br_event_winner .event_list .title {color:#2f231c; font-size:17px; line-height:23px;}
.br_event_winner .event_list .winner a {display:inline-block; background:#d3c1ab; color:#fff; font-weight:bold; padding:5px 19px; border-radius:15px; font-size:11px;}
/*> 이벤트 페이지 상세페이지 */
.br_event_view .event_view_wrap {width:900px; margin:0 auto;}
.br_event_view .event_title {text-align:center; padding:59px 0 0 0; color:#cc9b3b; font-size:17px; font-weight:normal; height:112px;}
.br_event_view .event_title span {display:block; line-height:0;}
.br_event_view .event_title span.txt {margin:12px 0 5px 0;}
.br_event_view .event_view_header .subtit {position:relative; padding:24px 0;}
.br_event_view .event_view_header:after {display:table; content:""; clear:both;}
.br_event_view .event_view_header h4.name {color:#2f231c; font-size:31px; line-height:38px; font-weight:normal; text-align:center; border-bottom:2px solid #ff7c98; padding-bottom:22px;}
.br_event_view .event_view_header .period {color:#948780; font-size:17px; text-align:left;}
.br_event_view .event_view_header .sns {position:absolute; right:0; top:17px;}
.br_event_view .event_view_header .sns li {float:left; margin-left:7px;}
.br_event_view .event_view_content img {border:1px solid #f3f3f3;}
.br_event_view .event_view_service p {display:inline-block; margin-right:7px;}
.br_event_view .event_view_alert {position:relative; padding-bottom:25px;}
.br_event_view .event_view_service {position:absolute; right:0; top:0;}
.br_event_view .event_view_alert .title {font-size:17px; color:#837e7c; font-weight:normal; line-height:54px;}
.br_event_view .event_view_alert .content:after {display:table; content:""; clear:both;}
.br_event_view .event_view_alert .content div {float:left; width:100%;}
.br_event_view .event_view_alert .content div + div {margin-left:24px;}
.br_event_view .event_view_alert .content li {background:url(/assets/images/common/ico_ln_br.gif) 2px 4px no-repeat; padding-left:9px; font-size:12px; color:#aca09a; line-height:14px; margin-bottom:6px;}
.br_event_view .event_view_btn {margin-top:20px; padding-top:18px; text-align:center;border-top:1px solid #dadada;}
.br_event_view .event_view_btn a {display:inline-block; padding:17px 0; width:178px; border-radius:30px; background:#f56f98; color:#fff; font-size:17px;}
/*> 크리스마스 이벤트 페이지 상세페이지 */
.br_christmas_view .event_view_wrap {width:900px; margin:0 auto;}
.br_christmas_view .event_title {text-align:center; padding:59px 0 0 0; color:#cc9b3b; font-size:17px; font-weight:normal; height:112px;}
.br_christmas_view .event_title span {display:block; line-height:0;}
.br_christmas_view .event_title span.txt {margin:12px 0 5px 0;}
.br_christmas_view .event_view_header .subtit {position:relative; padding:24px 0;}
.br_christmas_view .event_view_header:after {display:table; content:""; clear:both;}
.br_christmas_view .event_view_header h4.name {color:#2f231c; font-size:31px; line-height:38px; font-weight:normal; text-align:center; border-bottom:2px solid #ff7c98; padding-bottom:22px;}
.br_christmas_view .event_view_header .period {color:#948780; font-size:17px; text-align:left;}
.br_christmas_view .event_view_header .sns {position:absolute; right:0; top:17px;}
.br_christmas_view .event_view_header .sns li {float:left; margin-left:7px;}
.br_christmas_view .event_view_content img {border:1px solid #f3f3f3;}
.br_christmas_view .event_view_service p {display:inline-block; margin-right:7px;}
.br_christmas_view .event_view_alert {position:relative; padding-bottom:25px;}
.br_christmas_view .event_view_service {position:absolute; right:0; top:0;}
.br_christmas_view .event_view_alert .title {font-size:17px; color:#837e7c; font-weight:normal; line-height:54px;}
.br_christmas_view .event_view_alert .content:after {display:table; content:""; clear:both;}
.br_christmas_view .event_view_alert .content div {float:left; width:410px;}
.br_christmas_view .event_view_alert .content div + div {margin-left:24px;}
.br_christmas_view .event_view_alert .content li {background:url(/assets/images/common/ico_ln_br.gif) 2px 4px no-repeat; padding-left:9px; font-size:12px; color:#aca09a; line-height:14px; margin-bottom:6px;}
.br_christmas_view .event_view_btn {margin-top:20px; padding-top:18px; text-align:center;border-top:1px solid #dadada;}
.br_christmas_view .event_view_btn a {display:inline-block; padding:17px 0; width:178px; border-radius:30px; background:#f56f98; color:#fff; font-size:17px;}
.btn.style_2 {text-align:right; padding-right:15px;}
.btn.style_2 a {display:inline-block; border:1px solid #ebe1dc; color:#473732; font-weight:bold; padding:5px 14px; border-radius:7px; font-size:13px;}
/*> 이전/다음 */
.page_prevnext2 {position:absolute; top:500px; left:50%; width:1200px; margin-left:-600px;}
.page_prevnext2 a {overflow:hidden; position:relative; width:106px; height:106px; border:1px solid #ebe4e1; border-radius:54px; box-sizing:border-box; -webkit-transition:width .2s ease; transition:width .2s ease;}
.page_prevnext2 .prev a {float:left; background:#fff url(/assets/images/menu/btn_page_prev.gif) no-repeat 50% 58px;}
.page_prevnext2 .next a {float:right; background:#fff url(/assets/images/menu/btn_page_next.gif) no-repeat 50% 58px;}
.page_prevnext2 a:before {color:#d1cab7; position:absolute; left:50px !important; top:39px; line-height:0;}
.page_prevnext2 .prev a:before {content:"<";}
.page_prevnext2 .next a:before {content:">";}
.page_prevnext2 a:hover:before {color:#ff99bf; font-weight:700;}
.page_prevnext2 div {position:absolute; top:10px; width:222px; height:83px; opacity:0; border-radius:45px; filter:alpha(opacity=0); -webkit-transition:opacity .25s ease; transition:opacity .25s ease; display:table; background:none; overflow:hidden;}
.page_prevnext2 div:after {display:table; clear:both; content:"";}
.page_prevnext2 .prev div {left:10px;}
.page_prevnext2 .next div {right:10px;}
.page_prevnext2 .prev span {float:left;}
.page_prevnext2 .next span {float:right;}
.page_prevnext2 .image {background:none; border:none; border-radius:45px; height:85px;}
.page_prevnext2 .image img {width:85px; height:85px; border-radius:45px;}
.page_prevnext2 .title {overflow:hidden; width:115px; height:90px; background:#fff; border-radius:45px; letter-spacing:-0.05em;}
.page_prevnext2 .title strong {display:table-cell; vertical-align:middle; height:83px; font-weight:normal; font-size:13px; color:#2b2219; line-height:17px;}
.page_prevnext2 .prev .title {padding-left:10px;}
.page_prevnext2 .next .title {padding-right:10px;}
.page_prevnext2 a:hover,
.page_prevnext2 a:focus {width:248px;}
.page_prevnext2 a:hover:before,
.page_prevnext2 a:focus:before {opacity:0;}
.page_prevnext2 a:hover div,
.page_prevnext2 a:focus div {opacity:1; filter:alpha(opacity=100);}
/*>당첨자발표 */
#modal_winner .modal_container {width:787px; margin:233px auto 0 auto;}
#modal_winner .title {padding:26px 0 24px 100px; background:#ff7c98 url(/assets/images/event/ico_winner.png) no-repeat 50px 28px; color:#fff; font-size:29px; border-radius:5px 5px 0 0;}
#modal_winner .modal_body {background:#fff;}
#modal_winner .search {padding:30px 40px 50px;}
#modal_winner .search:after {display:table; clear:both; content:"";}
#modal_winner .search * {vertical-align:top;}
#modal_winner .search label {display:inline-block; width:60px; height:32px; color:#39261f; font-size:15px; line-height:32px;}
#modal_winner .search input {width:290px; height:35px; vertical-align:top; margin-right:8px;}
#modal_winner .search button,
#modal_winner .search a {display:inline-block; width:147px; height:37px; border-radius:17px; border:0; background:#d3c1ab; color:#fff; font-weight:bold; line-height:37px; text-align:center; vertical-align:top;}
#modal_winner .search a {background:#c1ae96;}
#modal_winner .list {overflow:auto; max-height:360px; margin:0 15px;}
#modal_winner .cont {overflow:auto; padding:20px; max-height:400px; border-radius:5px;}
#modal_winner .cont table {width:100%!important;}
#modal_winner .cont table td {border:0!important; padding:5px 0 0 5px!important;}
#modal_winner .list li {float:left; width:25%; height:40px; padding-left:30px; box-sizing:border-box; color:#928883; font-size:14px;}
#modal_winner .list li:before {float:left; margin-left:-10px; /*content:"\00b7";*/}
/*>행사제외매장 */
#modal_storeout .modal_container {width:787px; margin:233px auto 0 auto; background:#fff;}
#modal_storeout .modal_body {position:relative; padding-bottom:31px;}
#modal_storeout .modal_body .style_2 {position:absolute; right:20px; top:20px;}
#modal_storeout .title {padding:32px 0 31px 100px; background:#ff7c98 url(/assets/images/event/ico_storeout.png) no-repeat 50px 32px; color:#fff; font-size:28px; line-height:47px;}
#modal_storeout .search {padding:20px 40px 50px;}
#modal_storeout .search:after {display:table; clear:both; content:"";}
#modal_storeout .search * {vertical-align:top;}
#modal_storeout .search label {display:inline-block; width:60px; height:32px; color:#39261f; font-size:15px; line-height:32px;}
#modal_storeout .search input {width:290px; height:35px; vertical-align:top; margin-right:8px;}
#modal_storeout .search button,
#modal_storeout .search a {display:inline-block; width:147px; height:37px; border-radius:17px; border:0; background:#35221c; color:#fff; font-weight:bold; line-height:37px; text-align:center; vertical-align:top;}
#modal_storeout .search a {background:#c1ae96;}
#modal_storeout .list {overflow:auto; max-height:360px; margin:0 15px;}
#modal_storeout .list li {float:left; width:25%; line-height:31px; padding-left:30px; box-sizing:border-box; color:#928883; font-size:14px;}
#modal_storeout .list li:before {float:left; margin-left:-10px; /*content:"\00b7";*/}

/*= STORE*/
/*> 매장 */
#br_store .br_store_map #content {margin:0; width:auto; min-width:1200px; padding-bottom:80px;}
.br_store_map #content {width:auto; min-width:1200px; padding-top:0;}
.br_store_map .map_wrap {position:relative; height:750px; background:#eee;}
.br_store_map .store_map {height:750px;}

.br_store_map .tab {height:53px; border-bottom:1px solid #e1e1e1; line-height:53px;}
.br_store_map .tab ul:after {display:table; clear:both; content:"";}
.br_store_map .tab li {float:left; width:50%; color:#2f231c; font-weight:300; font-size:13px; text-align:center; }
.br_store_map .tab li:first-child {border-right:1px solid #e1e1e1; box-sizing:border-box;}
.br_store_map .tab a {display:inline-block; width:100%;}
.br_store_map .tab a.on {border-bottom:1px solid #ff7c98;}


.br_store_map .store_search {position:absolute; top:15px; left:30px; z-index:10; width:260px; border-radius:5px; border:1px solid #ddd2ca; background:#fff; color:#948780;}
.br_store_map .store_search .title {padding:30px 0 0 20px;}
.br_store_map .store_search .form {padding:20px 12px 0; font-weight:300;}
.br_store_map .store_search .form .name,
.br_store_map .store_search .form .options {margin-top:5px;}
.br_store_map .store_search .form select,
.br_store_map .store_search .form input {color:#948780; font-size:12px; border:1px solid #e0e2e3;}
.br_store_map .store_search .form input {background-color:#fff;}
.br_store_map .store_search .form input::-webkit-input-placeholder,
.br_store_map .store_search .form input::-moz-input-placeholder {color:#948780 !important;}
.br_store_map .store_search .form .location:after {display:table; clear:both; content:"";}
.br_store_map .store_search .form .location span {float:left; width:50%; box-sizing:border-box;}
.br_store_map .store_search .form .location span:first-child {padding-right:5px;}
.br_store_map .store_search .form .options {position:relative; z-index:100; border:1px solid #e0e2e3;}
.br_store_map .store_search .form .options a {display:block; height:36px; padding-left:10px; color:#948780; font-size:12px; line-height:36px; background:url(/assets/images/store/bu_option.gif) 98% 50% no-repeat; }
.br_store_map .store_search .form .options .on + .inner {display:block;}
.br_store_map .store_search .form .options .inner {display:none; overflow:auto; position:absolute; top:100%; right:-1px; left:-1px; max-height:490px; margin-top:-3px; padding:15px; border-radius:0 0 5px 5px; border:1px solid #d1cccb; border-width:0 1px 1px 1px; background:#fff; font-size:12px;}
.br_store_map .store_search .form .options .inner dl + dl {margin-top:30px;}
.br_store_map .store_search .form .options .inner dt {padding-bottom:10px; color:#ff8a00; font-size:11px;}
.br_store_map .store_search .form .options .inner dd {color:#311b14; font-weight:300;}
.br_store_map .store_search .form .options .inner dd + dd {margin-top:5px}
.br_store_map .store_search .form .options .inner dd label  {position:relative; display:inline-block; margin-right:10px; padding-left:19px; margin-bottom:0; vertical-align:middle; cursor:pointer;}
.br_store_map .store_search .form .options .inner dd input[type="checkbox"] {display:none;}
.br_store_map .store_search .form .options .inner dd input[type="checkbox"] + span:before {position:absolute; left:0; top:50%; width:14px; height:14px; margin-top:-7px; background-repeat:no-repeat; background-position:0 50%; content:"";}
.br_store_map .store_search .form .options .inner dd input[type="checkbox"] + span:before {background-image:url(/assets/images/common/bg_agree_checkbox.gif);}
.br_store_map .store_search .form .options .inner dd input[type="checkbox"]:checked + span:before {background-image:url(/assets/images/common/bg_agree_checkbox_on.gif)}
.br_store_map .store_search .form .search {padding:18px 0 6px 0; text-align:center;}
.br_store_map .store_search .form .search button,
.br_store_map .store_search .form .search a {display:inline-block; width:197px; height:37px; border-radius:18px; border:0; background:#ff7c98; color:#fff; font-weight:bold; line-height:37px; text-align:center; vertical-align:top; margin-bottom:2px; cursor:pointer;}
.br_store_map .store_search .form .search button + a {margin-left:3px;}
.br_store_map .store_search .find_box .info {height:28px; padding-left:11px; color:#626c75; font-weight:300; font-size:12px; line-height:28px;}
.br_store_map .store_search .find_box .info span {display:inline-block; padding-left:5px;}
.br_store_map .store_search .find_box .total {visibility:; padding-bottom:10px; margin-top:-3px; font-weight:300; color:#00182f; font-size:14px; text-align:center;}
.br_store_map .store_search .find_box .total strong {color:#ff00ae; font-size:16px; font-weight:normal;}
.br_store_map .store_search .find_box .total.show {visibility:visible;}
.br_store_map .store_search .favorite_box {display:none; padding:25px 12px; color:#311b14; font-weight:300; font-size:13px; text-align:center;}
.br_store_map .store_search .favorite_box a {display:block; width:117px; height:33px; margin:15px auto 0; border-radius:5px; border:1px solid #cecbca; color:#ff7c98; font-weight:bold; text-align:center; line-height:33px; letter-spacing:.02em}
.br_store_map .store_search .favorite_box .f_total span {display:block;}
.br_store_map .store_search .favorite_box .f_total strong {color:#ff649b; font-weight:300;}

.br_store_map .store_search .list .scroll {overflow:auto; height:440px; border-top:1px solid #d2cecd;}
.br_store_map .store_search .list .scroll .title {padding:0px; font-weight:normal;}
.br_store_map .store_search .list .scroll .title:before {margin-right:2px; content:"\00b7";}
.br_store_map .store_search .list li {position:relative; padding:20px 20px 20px 40px; font-size:12px;}
.br_store_map .store_search .list li + li {border-top:1px solid #d2cecd;}
.br_store_map .store_search .list li a {color:#948780;}
.br_store_map .store_search .list .name,
.br_store_map .store_search .list .name_hide {font-weight:200; font-size:20px;}
.br_store_map .store_search .list .name_hide {position:absolute; top:20px; left:40px;}
.br_store_map .store_search .list .name_hide > a {background:#fff; color:#2f231c;}
.br_store_map .store_search .list .name_hide .favorite {display:inline-block; width:28px; height:28px; margin-left:4px; background:url(/assets/images/store/ico_store_favorite.png) 0 50% no-repeat; text-indent:-9999em;}
.br_store_map .store_search .list .name_hide .favorite:hover,
.br_store_map .store_search .list .name_hide .favorite.on {background-image:url(/assets/images/store/ico_store_favorite_on.png);}

/*리스트 좌측 아이콘*/
.br_store_map .store_search .list .name small {position:absolute; top:22px; left:12px; width:18px; height:18px; border-radius:9px; border:1px solid #828e99; color:#00182f; font-weight:bold; font-size:11px; text-align:center; line-height:18px;}
.br_store_map .store_search .list .name a {color:#2f231c;}
.br_store_map .store_search .list .name .favorite {display:inline-block; width:28px; height:28px; margin-left:4px; background:url(/assets/images/store/ico_store_favorite.png) 0 50% no-repeat; text-indent:-9999em;}
.br_store_map .store_search .list .name .favorite:hover,
.br_store_map .store_search .list .name .favorite.on {background-image:url(/assets/images/store/ico_store_favorite_on.png);}
.br_store_map .store_search .list .address .title {display:block;}
.br_store_map .store_search .list .tel .title,
.br_store_map .store_search .list .time .title {float:left; margin-left:-55px;}
.br_store_map .store_search .list .service {display:none;}
.br_store_map .store_info {position:relative; width:230px; padding:15px; background:#fff; font-size:12px;}
.br_store_map .store_info .name {padding:10px 0 15px; font-weight:200; font-size:25px; text-align:center;}
.br_store_map .store_info th,
.br_store_map .store_info td {padding:3px 0; font-weight:300; text-align:left; vertical-align:top;}
.br_store_map .store_info th {color:#928581; white-space:nowrap;}
.br_store_map .store_info td {padding-left:10px; color:#2f231c; white-space:normal; word-wrap:break-word; word-break:break-all;}
.br_store_map .store_info .detail {padding-top:20px; text-align:center;}
.br_store_map .store_info .detail a {display:inline-block; height:33px; padding-left:41px; background:url(/assets/images/store/ico_more.png) 0 50% no-repeat; color:#2f231c; font-size:13px; line-height:33px;}
.br_store_map .store_search label input[type="checkbox"] {vertical-align:middle; margin-top:-2px;}

.br_store_map .promotion {width:916px; margin:0 auto; padding-bottom:160px;}
.br_store_map .promotion > .title {padding-bottom:30px; font-size:17px; text-align:center;}
.br_store_map .event_list li {min-height:400px!important;}
.br_store_map .promotion .dslide {margin-top:10px; padding-top:28px; border-top:1px solid #dadada;}

/*= ABOUT */
#br_about #content {width:916px; margin:0 auto;}
/*> NOTICE */
#br_about .inner_content {position:relative;}
#br_about .list_search {text-align:right; line-height:35px;}
#br_about .list_search select {background:#fff; border:1px solid #d1cecc; border-radius:4px; width:128px; color:#636363; margin-right:5px; box-shadow:0 0 5px 0 rgba(0, 0, 0, 0.2);}
#br_about .list_search input[type="text"] {width:236px; height:34px;}
#br_about .submit {display:inline-block;}
#br_about .submit button {width:115px; height:35px; margin-left:3px; border-radius:3px; border:0; background:#d3c1ab; color:#fff; font-size:15px; line-height:35px;}
#br_about .noresult {padding:200px 0; text-align:center; font-size:17px;}
#br_about .result_num {margin-top:-21px; color:#2f231c; font-size:14px;}
#br_about .result_num span {color:#ff7c98; font-weight:bold;}
#br_about .noresult {margin-top:20px; border:1px solid #dadada; border-width:1px 0 1px 0;}
#br_about .pagination {padding-top:30px;}
/*> 점포개설문의 */
#br_about .inner_content {position:relative;}
#br_about .introduce {color:#aca09a; font-weight:300; font-size:12px; text-align:center;}
#br_about .online_school {position:absolute; top:2px; right:28px;}
.open_inquiry {padding-top:55px; font-size:;12px;}
.open_inquiry .tit_cont {font-size:17px; padding-bottom:12px;}
.open_inquiry .header {text-align:center;}
.open_inquiry .stit_faq {color:#2f231c; font-weight:300; font-size:13px;}
#br_about .open_inquiry {padding-top:90px;}

#BRsystem .tit_cont {margin-bottom:19px;  padding-bottom:75px; background:url("/assets/images/about/division.gif") 134px bottom no-repeat; font-size:0px; text-align:center; line-height:0px;}
#BRsystem ul {width:100%;}
#BRsystem ul:after {display:block; clear:both;content:"";}
#BRsystem li {float:left; text-align:center;}
#BRsystem .area1 p {background:url("/assets/images/about/brsub_img_1.gif") center top no-repeat; }
#BRsystem .area2  {margin-left:73px;}
#BRsystem .area2 p {background:url("/assets/images/about/brsub_img_2.gif") center top no-repeat; }
#BRsystem .area3 {float:right;}
#BRsystem .area3 p {background:url("/assets/images/about/brsub_img_3.gif") center top no-repeat; }
#BRsystem span {display:block; margin-bottom:10px; font-size:0px; line-height:0px;}
#BRsystem h4 {color:#2f231c; font-weight:normal; font-size:31px;}
#BRsystem p {padding-top:150px; margin-top:33px; font-size:13px; line-height:160%; letter-spacing:-1px; }

#f_process {padding-bottom:568px; background:url("/assets/images/about/fp_img.gif") center bottom no-repeat; }
#f_process .tit_cont {padding-bottom:0px; font-size:0px; text-align:center; line-height:0px;}

#f_condition h3 {font-size:0px; text-align:center; line-height:0px;}
#f_condition .tit_cont {margin-bottom:15px; padding-bottom:75px;  background:url("/assets/images/about/division2.gif") 107px bottom no-repeat; }
#f_condition .condition {margin-bottom:30px; width:100%;}
#f_condition .condition:after {display:block; clear:both; content:"";}
#f_condition .condition li {float:left;  width:25%; color:#2f231c; font-size:15px; text-align:center; }
#f_condition .btn_box {margin-bottom:58px; text-align:center;}
#f_condition p.caption {text-align:right; padding-bottom:1%;}
#f_condition a,#f_condition span {display:inline-block; margin:0px 5px; border-radius:5px; }
#f_condition span { width:223px; height:38px; border:1px solid #d0c8c2; color:#2f231c; font-size:15px; text-align:center; line-height:38px; }
#f_condition span img {margin-left:10px;vertical-align:middle;}
#f_condition .btn2 {width:127px; height:24px; background:#d0c8b3; color:#fff; font-size:12px; line-height:24px;}
#f_condition .tit_cont2 {margin-bottom:30px;}
#f_condition .table_wrap {overflow:hidden; border:1px solid #d0c8c2; border-radius:5px; }
#f_condition table {width:100%;}
#f_condition table caption {display:none;}
#f_condition td, #f_condition th {text-align:center;}
#f_condition th  {height:40px; background:#c7c4bc;color:#fff; font-weight:bold; font-size:15px;}
#f_condition th.center {border-right:1px solid #e6e5e2; border-left:1px solid #e6e5e2;}
#f_condition td.center {border-right:1px solid #dadada; border-left:1px solid #dadada; color:#2f231c;}
#f_condition td {height:34px; border-bottom:1px solid #dadada; color:#948780; font-size:13px;}
/* 2021-04-13 수정 시작 */
#f_condition td.table_inner_tit {border-right: 1px solid #dadada; font-weight: 600; font-size: 14px; color: #2f231c;}
#f_condition td.table_inner_bg {background: rgba(167,158,144,0.2);}
#f_condition td.table_inner_bg2 {background: rgba(167,158,144,0.5);}
/* 2021-04-13 수정 끝 */
#f_condition .last td {border-bottom:0px;}
#f_condition .info {margin-top:22px; color:#948780; }
#f_condition .info li {position:relative; margin:3px 0px; padding-left:12px;font-size:13px; line-height:160%;}
#f_condition .info li:after {display:block; position:absolute; top:6px; left:0px; width:4px; height:4px;  border-radius:50%;  background:#ff7c98; content:"";}
#f_condition .modal_header {padding-left:30px; height:91px; background:#ff7c98;line-height:91px;}
#f_condition .modal_header h2 { color:#fff; font-weight:bold; font-size:25px; }
#f_condition .modal_container {width:747px; }
#f_condition .modal_body {padding:30px; background:#fff;}
#f_condition .modal_body figcaption {margin-top:35px;}
#f_condition .modal_body dl {margin-left:5px;}
#f_condition .modal_body dt {margin-bottom:8px; color:#a79c8e; font-weight:bold; font-size:15px;}
#f_condition .modal_body dd {color:#2f231c; font-size:13px; line-height:150%;}
#f_condition .modal_body dd div.txt{margin-left:31px;}
#f_condition .gap {margin-bottom:15px;}
#f_condition .modal_close {right:-139px;}
#f_condition .modal_close a {width:87px; height:87px; border:3px solid #666666; border-radius:50%; text-align:center;}
#f_condition .modal_close img {position:relative; top:24px; }

#counsel_info .tit_cont {padding-bottom:23px; font-size:0px; text-align:center; line-height:0px;}
#counsel_info ul {margin-bottom:70px; padding:10px 0px 0px 140px; background:url("/assets/images/about/counsel_img.gif") 32px top no-repeat;}
#counsel_info li {margin-bottom:8px;padding-left:27px;  background:url("/assets/images/about/counsel_point.gif") 0px 2px no-repeat; color:#2f231c; font-size:13px; }
#counsel_info table {width:100%;}
#counsel_info table caption {display:none;}
#counsel_info .table_wrap {overflow:hidden; border:1px solid #d0c8c2; border-radius:5px; }
#counsel_info .table_wrap th {height:40px; background:#c7c4bc;color:#fff; font-weight:bold; font-size:15px;}
#counsel_info th.center {border-right:1px solid #e6e5e2; border-left:1px solid #e6e5e2;}
#counsel_info .type1 {margin-bottom:44px;}
#counsel_info td, #counsel_info th {text-align:center;}
#counsel_info .type1 td {height:34px; border-bottom:1px solid #dadada; color:#948780; font-size:13px;}
#counsel_info .type1 td.center {border-right:1px solid #dadada; border-left:1px solid #dadada; color:#2f231c;}
#counsel_info .type2 th {border-right:1px solid #e6e5e2;}
#counsel_info .type2 th.none {border-right:0px;}
#counsel_info .type2 td {padding:20px 0px;border-right:1px solid #dadada;  border-bottom:1px solid #dadada;font-size:13px; line-height:18px;}
#counsel_info .type2 td a {color:#948780; font-size:13px;}
#counsel_info .type2 td.color {color:#948780;}
#counsel_info .type2 td.left {padding-left:17px;text-align:left;}
#counsel_info .last td, #counsel_info .noline  {border-bottom:0px !important;}

#loan_info dl {margin-bottom:50px;padding-left:226px; background:url("/assets/images/about/loan_info1_img1.gif") 103px top no-repeat;}
#loan_info dt {margin-bottom:5px; color:#ff7c98; font-size:15px;}
#loan_info dd {color:#2f231c; font-size:13px; line-height:150%;}
#loan_info #tap {margin-bottom:60px;width:100%;}
#loan_info #tap:after {display:block; clear:both;content:"";}
#loan_info #tap li {overflow:hidden; float:left; }
#loan_info #tap li a {display:block;  height:47px; background:url("/assets/images/about/loan_info_title.gif") 0 0 no-repeat; text-indent:-9999px;}
#loan_info #tap .tap1 a {width:306px;}
#loan_info #tap .tap2 a {width:304px;  background-position:-306px 0px;}
#loan_info #tap .tap3 a {width:306px;  background-position:right 0px;} {}
#loan_info #tap .tap1 a.on, #loan_info #tap .tap1 a:hover {background-position:0px bottom;}
#loan_info #tap .tap2 a.on, #loan_info #tap .tap2 a:hover {background-position:-306px bottom;}
#loan_info #tap .tap3 a.on, #loan_info #tap .tap3 a:hover {background-position:right bottom;}
#loan_info h3 {padding-bottom:32px; font-size:0px; text-align:center; line-height:0px;}
#loan_info .table_wrap {overflow:hidden; margin-bottom:48px; border:1px solid #d0c8c2; border-radius:5px; }
#loan_info table {width:100%;}
#loan_info table caption {display:none;}
#loan_info table thead th {height:40px; background:#c7c4bc;color:#fff; font-weight:bold; font-size:15px;}
#loan_info table thead th.line {border-right:1px solid #e6e5e2;}
#loan_info table tbody th {border-right:1px solid #dadada;  border-bottom:1px solid #dadada; color:#948780; font-weight:normal; font-size:13px;}
#loan_info table tbody td  {padding:20px 0px 20px 39px;border-right:1px solid #dadada;  border-bottom:1px solid #dadada;font-size:13px; }
#loan_info table tbody tr.last th ,#loan_info table tbody tr.last td {border-bottom:0px;}
#loan_info .tap_area {display:none;}
#loan_info .tap_area.on {display:block;}
#loan_info .counsel h3 {padding-bottom:63px;}
#loan_info .counsel ol {display:table; margin-bottom:70px;width:100%;}
#loan_info .counsel ol:after {display:block; clear:both; content:"";}
#loan_info .counsel ol li {position:relative; display:table-cell;width:83px; height:67px; border:2px solid #d3c8c2; border-radius:5px; color:#756b66; font-weight:bold; font-size:13px; text-align:center; line-height:160%; vertical-align:middle;}
#loan_info .counsel ol li em {position:absolute; top:-33px;  left:0px;width:100%; font-weight:bold; font-style:normal; color:#ff7c98;}
#loan_info .counsel ol li.gap {width:31px; height:71px; border:0px; font-size:0px;}
#loan_info .counsel ul {padding-left:295px; background:url("/assets/images/about/counsel_info_img.gif") 156px 28px no-repeat;}
#loan_info .counsel ul li {margin-bottom: 8px; padding-left: 27px; background: url("/assets/images/about/counsel_point.gif") 0px 2px no-repeat;color: #2f231c; font-size: 13px;}

#f_faq .header {padding-bottom:45px;}
#f_faq .btn_inquiry {padding-top:20px; text-align:center;}
#f_faq .btn_inquiry a {display:inline-block; width:147px; height:34px; border-radius:5px; background-color:#ffb900; color:#fff; font-size:12px; line-height:34px; text-align:center;}
#f_faq .list_wrap li,
.br_customer_faq .list_wrap li {border-top:1px solid #dadada;}
#f_faq .list_wrap li:first-child,
.br_customer_faq .list_wrap li:first-child {border-top:2px solid #dadada;}
#f_faq .list_wrap li:last-child,
.br_customer_faq .list_wrap li:last-child {border-bottom:1px solid #dadada;}
#f_faq .list_wrap li.on:first-child,
.br_customer_faq .list_wrap li.on:first-child,
#f_faq .list_wrap li.on:last-child,
.br_customer_faq .list_wrap li.on:last-child {border-color:#ff7c98;}
#f_faq .list_wrap li a,
.br_customer_faq .list_wrap li a {display:block; position:relative; padding:25px 65px 25px 68px; color:#2f231c; font-size:17px; background:url(/assets/images/about/icon_question.gif) 20px 50% no-repeat; word-wrap:break-word; word-break:break-all;}
#f_faq .list_wrap li a:after,
.br_customer_faq .list_wrap li a:after {position:absolute; top:50%; right:14px; width:21px; height:12px; margin-top:-6px; background:url(/assets/images/about/icon_faq_list.gif) no-repeat; background-position:0 0; content:"";}
#f_faq .list_wrap li.on,
#f_faq .list_wrap li.on + li,
.br_customer_faq .list_wrap li.on,
.br_customer_faq .list_wrap li.on + li {border-top:1px solid #ff7c98;}
#f_faq .list_wrap li.on a,
.br_customer_faq .list_wrap li.on a {color:#ff7c98;}
#f_faq .list_wrap li.on a:after,
.br_customer_faq .list_wrap li.on a:after {background-position:0 -12px;}
#f_faq .list_wrap li .answer,
.br_customer_faq .list_wrap li .answer {display:none; padding-left:68px; background:url(/assets/images/about/icon_answer.gif) 20px 35px no-repeat; color:#2f231c; font-weight:300; font-size:14px; line-height:1.8;}
#f_faq .list_wrap li .answer > div,
.br_customer_faq .list_wrap li .answer > div {padding:30px 70px 45px 0; border-top:1px solid #e0e0e0;}

#inquiry_write {display:none;}
#inquiry_write .table {margin-top:40px; border-collapse:separate; color:#636363;}
#inquiry_write .table th {width:10%; border-top:1px solid #e9e8e5;}
#inquiry_write .table td {padding:8px 18px 8px 8px; border:1px solid #dadada; border-width:0 1px 1px 0;}
#inquiry_write .table tr:first-child th {border-top-left-radius:5px;}
#inquiry_write .table tr:first-child td {border-top-right-radius:5px; border-top:1px solid #dadada;}
#inquiry_write .table tr:last-child th {border-bottom-left-radius:5px;}
#inquiry_write .table tr:last-child td {border-bottom-right-radius:5px; }
#inquiry_write .table th {color:#fff; background-color:#c7c4bc;}
#inquiry_write .table td select {display:inline; width:175px; border:1px solid #d2cecb; -webkit-box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8);
	-moz-box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8); box-shadow:2px 2px 2px 0px rgba(234,233,232,0.8); margin-right:10px; border-radius:3px;}
#inquiry_write .table .email select {width:130px;}
#inquiry_write .table .ui-state-default {width:150px!important;}
#inquiry_write .table .name {width:33%;}
#inquiry_write .table .name + th {border-top:0;}
#inquiry_write .table .store_have span {display:inline-block; margin-right:50px;}
#inquiry_write .table .email input {width:30%;}
#inquiry_write .table .email input#textUrl {display:none;}
#inquiry_write .table .email input#textUrl {float:right; width:29%;}
#inquiry_write .table .email .ui-state-default {width:130px!important;}
#inquiry_write .table .email .icon {display:inline-block; padding:0 3px;}
#inquiry_write .table .content textarea {width:100%; height:253px; padding:15px; border:0; box-sizing:border-box; background-color:#efefef; color:#636363;  font-family:"Nanum Barun Gothic", "나눔고딕", "NanumGothic", "돋움", "Dotum", sans-serif;}
#inquiry_write .table .agree_box {overflow:auto; width:100%; height:150px; padding:15px; box-sizing:border-box; background-color:#efefef;}
#inquiry_write .table .agree_chk {padding:13px 0; text-align:center;}
#inquiry_write .table .agree_chk a {padding-left:25px; margin:0 5px; background:url(/assets/images/about/bg_agree_checkbox.gif) 0 50% no-repeat;}
#inquiry_write .table .agree_chk a.on {background-image:url(/assets/images/about/bg_agree_checkbox_on.gif);}
#inquiry_write .btns {padding-top:15px; text-align:center;}
#inquiry_write .btns button {width:115px; height:35px; margin:0 6px; border-radius:5px; border:0; background-color:#ff7c98; color:#fff; font-weight:bold; font-size:14px; line-height:35px; text-align:center; cursor:pointer;}
#inquiry_write .btns button.cancel {background-color:#d3c1ab;}


/*= 고객센터*/
#br_customer .s_text {padding-top:10px; font-size:17px; text-align:center;}
#br_customer .stitle {padding-top:48px; text-align:center;}
.br_customer_faq .inner_tab {padding:45px 0 35px;}
.br_customer_faq .inner_tab ul {border-radius:5px; border:1px solid #d0c8c2;}
.br_customer_faq .inner_tab ul:after {display:table; clear:both; content:"";}
.br_customer_faq .inner_tab li {float:left; width:20%;}
.br_customer_faq .inner_tab a,
.br_customer_faq .inner_tab a:hover,
.br_customer_faq .inner_tab a.on {display:block; float:left; width:100%; height:15px; padding:15px 0; }
.br_customer_faq .inner_tab a span,
.br_customer_faq .inner_tab a:hover span,
.br_customer_faq .inner_tab a.on span {display:block; background:url(/assets/images/customer/bg_faq_tab.png) 0 15px no-repeat; margin:0 auto; text-indent:-9999em;}
.br_customer_faq .inner_tab a:hover,
.br_customer_faq .inner_tab a.on {background-color:#92867f;}
.br_customer_faq .inner_tab .all a span {width:27px; background-position:0 0;}
.br_customer_faq .inner_tab .all a:hover span,
.br_customer_faq .inner_tab .all a.on span {background-position:0 -15px;}
.br_customer_faq .inner_tab .product a span {width:28px; background-position:-168px 0;}
.br_customer_faq .inner_tab .product a:hover span,
.br_customer_faq .inner_tab .product a.on span {background-position:-168px -15px;}
.br_customer_faq .inner_tab .point  a  span{width:41px; background-position:-349px 0;}
.br_customer_faq .inner_tab .point a:hover span,
.br_customer_faq .inner_tab .point a.on  span{background-position:-349px -15px;}
.br_customer_faq .inner_tab .member a span {width:27px; background-position:-542px 0;}
.br_customer_faq .inner_tab .member a:hover span,
.br_customer_faq .inner_tab .member a.on span {background-position:-542px -15px;}
.br_customer_faq .inner_tab .etc a span {width:27px; background-position:-730px 0;}
.br_customer_faq .inner_tab .etc a:hover span,
.br_customer_faq .inner_tab .etc a.on span {background-position:-730px -15px;}
.br_customer_faq .pagination {padding-top:50px;}
/*> 칭찬점포 */
.br_customer_praise .inner_content {width:918px; margin:0 auto;}
.praise_content header {text-align:center;}
.praise_content header h4 {padding:40px 0 10px;}
.praise_content header p {padding-bottom:35px; border-bottom:1px solid #c6bfb3; font-size:13px;}
.praise_content header h5 {height:65px; color:#483834; font-weight:normal; font-size:20px; line-height:65px;}
.praise_content header form {height:50px; margin-top:-65px; padding-top:15px; text-align:right;}
.praise_content header label {padding-right:5px; color:#a09189; font-weight:bold; font-size:12px;}
.praise_content header select {display:inline-block; width:150px; border:1px solid #d1cecc;}
.praise_content .list li + li {padding-top:13px;}
.praise_content .list a {display:block; position:relative; padding:35px 150px 35px 190px; border-radius:10px; border:1px solid #e0d6d1; background:url(/assets/images/customer/icon_praise_detail.png) no-repeat 800px 50%;}
.praise_content .list .title {padding:0 0 2px 45px; background:url(/assets/images/customer/icon_praise.png) no-repeat 0 0; color:#2f231c; font-weight:normal; font-size:25px; line-height:1.4;}
.praise_content .list .title small {display:block; height:18px; color:#948780; font-size:13px;}
.praise_content .list .photo {overflow:hidden; position:absolute; top:35px; left:35px; width:135px; height:135px; border-radius:3px;}
.praise_content .list .photo img {width:100%;}
.praise_content .list .content {overflow:hidden; height:80px; font-size:13px; line-height:1.5384615384615385; word-wrap:break-word; word-break:keep-all;}
#modal_praise .modal_container {width:750px;}
#modal_praise .modal_header {padding:20px 35px; border-radius:5px 5px 0 0; background:#ff7c98;}
#modal_praise .modal_header h2 {padding:0 0 2px 45px; background:url(/assets/images/customer/icon_praise.png) no-repeat 0 0; color:#fff; font-weight:normal; font-size:25px; line-height:1.4;}
#modal_praise .modal_header h2 small {display:block; height:18px; color:#87514d; font-size:13px;}
#modal_praise .modal_body {position:relative; padding:30px 35px 50px 220px; border-radius:0 0 5px 5px; background:#fff;}
#modal_praise h3 {padding-bottom:20px; color:#2f231c; font-weight:normal; font-size:26px;}
#modal_praise .photo {overflow:hidden; position:absolute; top:30px; left:35px; width:150px; border-radius:3px;}
#modal_praise .photo img {width:100%;}
#modal_praise .content {overflow:auto; max-height:360px; font-size:13px; line-height:1.5384615384615385; word-wrap:break-word; word-break:keep-all;}
#modal_praise .content p + p {margin-top:20px;}


/*= 로그인 */
.sso_login_wrap .content_header {padding:133px 0 35px; text-align:center;}
.sso_login_wrap .welcome {padding-top:10px; font-size:20px;}
.sso_login_wrap .inner_content {width:916px; margin:0 auto; color:#2f231c;}
.sso_login_wrap .login_box {padding:46px 0 47px; border-top:2px solid #ff99bf; border-bottom:1px solid #dadada;}
.sso_login_wrap .login_box:after {display:table; clear:both; content:"";}
.sso_login_wrap .cont_1,
.sso_login_wrap .cont_2 {float:left;}
.sso_login_wrap .cont_1 {width:458px;border-right:1px solid #e1e3e5;}
.sso_login_wrap .cont_2 {width:422px; padding-left:35px;}
.sso_login_wrap .title {font-weight:normal; font-size:17px;}
.sso_login_wrap .form .title {padding-bottom:20px;}
.sso_login_wrap .form .title span {display:block; color:#ff7c98; font-size:18px; font-weight:300;}
.login_wrap form {position:relative;}
.login_wrap input[type="text"],
.login_wrap input[type="password"] {position:relative; width:284px; height:49px; padding:17px 15px; color:#696663; font-size:15px; line-height:22px; vertical-align:top;}
.login_wrap #loginid {margin-bottom:9px;}
.login_wrap input::-webkit-input-placeholder {position:relative; min-height:22px; padding-left:30px; color:#696663; letter-spacing:-.08em; background-repeat:no-repeat; font-size:13px;}
.login_wrap #loginid::-webkit-input-placeholder {background-image:url(/assets/images/sso/ico_id.png);}
.login_wrap #loginpw::-webkit-input-placeholder {background-image:url(/assets/images/sso/ico_pw.png);}
.login_wrap input::-moz-placeholder {position:relative; min-height:22px; padding-left:30px; color:#696663; letter-spacing:-.08em; background-repeat:no-repeat; font-size:13px;}
.login_wrap #loginid::-moz-placeholder {background-image:url(/assets/images/sso/ico_id.png);}
.login_wrap #loginpw::-moz-placeholder {background-image:url(/assets/images/sso/ico_pw.png);}
.login_wrap input[type="text"] {display:block;}
.login_wrap button {position:absolute; top:-6px; right:30px; width:118px; height:118px; border-radius:59px; border:0; background:#f56f98; color:#fff; font-weight:bold; font-size:17px; line-height:59px; cursor:pointer !important;}
.login_wrap nav {padding-top:26px;}
.login_wrap ul:after {display:table; clear:both; content:"";}
.login_wrap li {position:relative; float:left; width:70px; font-weight:300; box-sizing:border-box;}
.login_wrap li a {color:#2f231c;}
.login_wrap li.li_2 {width:115px; padding-left:20px;}
.login_wrap li.li_3 {width:105px; padding-left:22px;}
.login_wrap li:before {position:absolute; top:0; left:0; width:1px; height:8px; color:#ccc; content:"|"}
.login_wrap li.li_1:before {content:"";}
.sso_login_wrap .form .text {padding-top:12px;}
.sso_login_wrap .form .text,
.sso_login_wrap .service .text,
.sso_login_wrap .center dt {color:#948780;}
.sso_login_wrap .cont_2 .service {padding-bottom:50px; font-weight:300;}
.sso_login_wrap .cont_2 .title {padding-bottom:7px;}
.sso_login_wrap .center dt {clear:left; width:73px; padding-left:2px; font-weight:300;}
.sso_login_wrap .center dt,
.sso_login_wrap .center dd {float:left; padding-bottom:4px;}
.sso_login_wrap .benefit {padding-top:30px;}
.sso_login_wrap .benefit .title {padding-bottom:32px; font-weight:300; font-size:16px; text-align:center;}
.sso_login_wrap .benefit ul:after {display:table; clear:both; content:"";}
.sso_login_wrap .benefit li {float:left; min-height:80px; padding-left:103px; box-sizing:border-box;}
.benefit .li_1 {width:348px; background:url(/assets/images/sso/ico_benefit_1.png) no-repeat;}
.sso_login_wrap .benefit .li_2 {width:316px; background:url(/assets/images/sso/ico_benefit_2.png) no-repeat;}
.sso_login_wrap .benefit .li_3 {background:url(/assets/images/sso/ico_benefit_3.png) no-repeat;}
.sso_login_wrap .benefit dl {padding-top:7px;}
.sso_login_wrap .benefit dt {padding-bottom:7px; font-size:17px;}
.sso_login_wrap .benefit dd {color:#948780;}

/*= MY BR */
#br_mybr .content_header .member {padding-top:10px; font-size:17px; text-align:center;}
#br_mybr .inner_content {width:916px; margin:0 auto;}
/*>해피포인트*/
.br_mybr_happypoint .mypoint_box {position:relative; margin-top:78px; border-radius:5px; border:1px solid #c6bfb3;}
.br_mybr_happypoint .mypoint_box h3 {position:absolute; top:-18px; left:50%; width:181px; height:31px; margin-left:-90px; background:url(/assets/images/mybr/h_happypoint.png) no-repeat; text-indent:-9999em;}
.br_mybr_happypoint .card_info {padding:33px 0 29px 152px; border-bottom:1px solid #c6bfb3;}
.br_mybr_happypoint .card_info:after {display:table; clear:both; content:"";}
.br_mybr_happypoint .card_num {float:left; width:174px; height:131px; background:url(/assets/images/mybr/img_happypoint_card.png) no-repeat;}
.br_mybr_happypoint .card_num span {display:block; width:138px; padding:105px 0 0 13px; color:#2f231c; text-align:center;}
.br_mybr_happypoint .name {float:left; padding:25px 0 0 34px; color:#2f231c; font-weight:300; font-size:30px;}
.br_mybr_happypoint .name span {color:#a5a5a5; font-size:30px;}
.br_mybr_happypoint .name strong {color:#ff7c98;}
.br_mybr_happypoint .card_point {padding:40px 40px 40px 45px;}
.br_mybr_happypoint .card_point:after {display:table; clear:both; content:"";}
.br_mybr_happypoint .card_issue,
.br_mybr_happypoint .point_info {float:left;}
.br_mybr_happypoint .card_issue {width:465px;}
.br_mybr_happypoint .card_issue dl {padding-bottom:13px;}
.br_mybr_happypoint .card_issue dt {min-height:32px; padding:0 0 15px 77px; background:url(/assets/images/mybr/icon_happypoint.png) no-repeat; color:#2f231c; font-size:17px; line-height:32px;}
.br_mybr_happypoint .card_issue dd {color:#948780;}
.br_mybr_happypoint .card_issue a {display:inline-block; height:24px; border-radius:3px; border:1px solid #ff7c98; font-size:12px; text-align:center; line-height:26px;}
.br_mybr_happypoint .btn_register {width:132px; color:#ff7c98;}
.br_mybr_happypoint a.btn_detail {width:148px; border-color:#e0d6d1; color:#473732;}
.br_mybr_happypoint .point_info dt,
.br_mybr_happypoint .point_info dd {float:left; font-size:20px; text-align:right;}
.br_mybr_happypoint .point_info dt {clear:left; width:150px; color:#aca09a; font-weight:300;}
.br_mybr_happypoint .point_info dd {width:174px; padding-right:40px; height:53px; background:url(/assets/images/mybr/icon_point.png) 100% 10% no-repeat; color:#ff8400; font-weight:bold; font-size:33px; line-height:33px;}
.br_mybr_happypoint .point_info dd.total {height:33px; background:url(/assets/images/mybr/icon_price.png) 100% 10% no-repeat; color:#c6bfb3;}
.br_mybr_happypoint h4.title {padding-bottom:25px; font-weight:normal; font-size:17px;}
.br_mybr_happypoint .product_buy {padding-top:80px;}
.br_mybr_happypoint .product_buy .title {padding-bottom:0;}
.br_mybr_happypoint .product_buy .title+p {padding-bottom:30px; color:#948780;}
.br_mybr_happypoint .product_buy ul {margin-left:-5px;}
.br_mybr_happypoint .product_buy ul:after {display:table; clear:both; content:"";}
.br_mybr_happypoint .product_buy li {position:relative; float:left; width:20%; padding:0 0 7px 5px; box-sizing:border-box;}
.br_mybr_happypoint .product_buy li > div {height:200px; border-radius:3px; border:1px solid #e0d6d1; text-align:center;}
.br_mybr_happypoint .product_buy .product {padding-top:14px;}
.br_mybr_happypoint .product_buy .product span {display:block; }
.br_mybr_happypoint .product_buy figcaption {color:#837e7c;}
.br_mybr_happypoint .product_buy figcaption + span {color:#ff91c1;}
.br_mybr_happypoint .product_buy .buy {position:absolute; bottom:18px; left:50%; width:114px; height:24px; margin-left:-57px; border-radius:15px; background-color:#d3c1ab; line-height:26px;}
.br_mybr_happypoint .product_buy .buy a {display:block; width:100%; color:#fff; font-weight:bold; font-size:12px;}
.br_mybr_happypoint .promotion {padding-top:100px;}
.br_mybr_happypoint .event_list,
.br_mybr_happypoint .list_product,
.br_store_map .event_list,
.br_store_map .list_product{overflow:hidden;}
.br_mybr_happypoint .event_list ul,
.br_store_map .event_list ul {margin-left:-26px;}
.br_mybr_happypoint .event_list ul:after,
.br_store_map .event_list ul:after {display:table; content:""; clear:both;}
.br_mybr_happypoint .event_list li,
.br_store_map .event_list li {float:left; width:33.33%; min-height:450px; padding-left:26px; box-sizing:border-box;}
.br_mybr_happypoint .event_list li a,
.br_store_map .event_list li a {display:block;}
.br_mybr_happypoint .event_list li span,
.br_store_map .event_list li span {display:block;}
.br_mybr_happypoint .event_list figure,
.br_store_map .event_list figure {box-sizing:border-box;}
.br_mybr_happypoint .event_list figure img,
.br_store_map .event_list figure img {width:286px; border-radius:3px; border:1px solid #eaeaea;}
.br_mybr_happypoint .event_list .type,
.br_store_map .event_list .type {margin:22px 0 8px 0;}
.br_mybr_happypoint .event_list .title,
.br_store_map .event_list .title {color:#2f231c; font-size:17px; line-height:23px;}
.br_mybr_happypoint .event_list .period,
.br_store_map .event_list .period {margin:11px 0; font-weight:300; color:#948780;}
/*>해피쿠폰*/
.period_search {height:113px; line-height:113px; border-bottom:1px solid #c6bfb3;}
.period_search label {display:inline-block; width:74px; font-size:17px;}
.period_search .txt {display:inline-block; padding:0 13px 0 5px; color:#2f231c; font-size:14px;}
.period_search .icon {display:inline-block; width:19px; height:0; margin:0 16px 1px 5px; border:1px solid #2f231c; text-indent:-9999em; vertical-align:middle;}
#s_years + span.ui-state-default,
#e_years + span.ui-state-default {width:90px!important;}
.period_search .submit {float:right; width:114px; height:37px; margin-top:40px; border-radius:5px; border:0; background-color:#d3c1ab; color:#fff; font-size:14px; font-weight:bold; text-align:center; line-height:37px;}
.br_mybr_happycoupon .coupon_list {padding:20px 0 25px;}
.br_mybr_happycoupon .coupon_list ul {margin-left:-20px;}
.br_mybr_happycoupon .coupon_list ul:after {display:table; clear:both; content:"";}
.br_mybr_happycoupon .coupon_list li {float:left; width:50%; padding:0 0 16px 20px; box-sizing:border-box;}
.br_mybr_happycoupon .coupon_list .coupon_box {position:relative; padding:45px 110px 0 35px; height:150px;}
.br_mybr_happycoupon .coupon_list span {display:block;}
.br_mybr_happycoupon .coupon_list .title {width:215px; height:73px; color:#a39489; font-weight:normal; font-size:17px;}
.br_mybr_happycoupon .coupon_list .num {position:absolute; top:22px; left:35px; font-weight:300;}
.br_mybr_happycoupon .coupon_list .brand_name {position:absolute; top:21px; right:110px; }
.br_mybr_happycoupon .coupon_list .brand_name,
.br_mybr_happycoupon .coupon_list .period {font-size:14px;}
.br_mybr_happycoupon .coupon_list .period {padding-bottom:20px;}
.br_mybr_happycoupon .use .coupon_box {background:url(/assets/images/mybr/bg_use_coupon.png) no-repeat; color:#a39489; }
.br_mybr_happycoupon .use .period {font-weight:300;}
.br_mybr_happycoupon .use .use_unused {color:#2f231c; font-weight:300; font-size:12px;}
.br_mybr_happycoupon .unused .coupon_box {background:url(/assets/images/mybr/bg_unused_coupon.png) no-repeat;}
.br_mybr_happycoupon .unused .num {color:#948780;}
.br_mybr_happycoupon .unused .title {color:#2f231c;}
.br_mybr_happycoupon .unused .brand_name,
.br_mybr_happycoupon .unused .use_unused {color:#ff7c98;}
.br_mybr_happycoupon .unused .period {color:#837e7c;}

/*>자주가는 매장*/
.br_mybr_store .store_wrap {padding-top:30px;}
.br_mybr_store .store_wrap .text {color:#86746a; font-size:15px; text-align:center;}
.br_mybr_store .store_wrap .text strong {color:#ff7c98;}
.br_mybr_store .store_list ul {padding-top:30px; margin-left:-21px;}
.br_mybr_store .store_list ul:after,
.br_mybr_store .store_list .tel:after {display:table; clear:both; content:"";}
.br_mybr_store .store_list li {float:left; padding:0 0 32px 21px;}
.br_mybr_store .store_list .list_box {width:290px; height:265px; background:url(/assets/images/mybr/bg_store_list.png) no-repeat; text-align:center;}
.br_mybr_store .store_list .store_name {height:81px; padding-top:20px; font-weight:normal; font-size:25px;}
.br_mybr_store .store_list .img img {width:122px; height:84px; border-radius:5px; border:1px solid #e0d6d1;}
.br_mybr_store .store_list .tel {text-align:center; padding:7px 0;}
.br_mybr_store .store_list .tel dt,
.br_mybr_store .store_list .tel dd {display:inline-block;}
.br_mybr_store .store_list .tel dt {width:65px; color:#837e7c;}
.br_mybr_store .store_list .tel dd {color:#2f231c; font-size:15px;}
.br_mybr_store .store_info a {display:block; width:104px; height:24px; margin:0 auto; border-radius:17px; background-color:#d3c1ab; color:#fff; font-size:12px; line-height:26px;}

/*>매장 상세정보*/
#store_details {display:block; height:0; }
#store_details .modal_bg {display:none;}
#store_details.on {height:auto !important;}
#store_details.on .modal_bg {display:block;}
#store_details .modal_container {opacity:1;}
.store_details .modal_container {width:747px;}
.store_details .modal_header {height:91px; padding-left:35px; border-radius:5px 5px 0 0; background-color:#ff7c98; line-height:91px;}
.store_details .store_name {color:#fff; font-weight:bold; font-size:25px;}
.store_details .sns {position:absolute; top:29px; right:30px;}
.store_details .sns ul:after {display:table; clear:both; content:"";}
.store_details .sns li {float:left; margin-left:10px;}
.store_details .sns li.favorite {position:relative;}
.store_details .sns .favorite a {display:block; min-width:35px; height:35px; background:url(/assets/images/mybr/icon_favorite_off.png) no-repeat;}
.store_details .sns .favorite a:hover,
.store_details .sns .favorite a.on {background:url(/assets/images/mybr/icon_favorite_on.png) no-repeat;}
.store_details .sns .favorite a span {display:block; height:35px; text-indent:-9999em;}
.store_details .sns .favorite a:hover:before {position:absolute; top:-32px; left:50%; width:108px; height:20px; margin-left:-54px; border-radius:10px; border:1px solid #e1e0e1; background-color:#fff; color:#a79c8e; font-size:11px; text-align:center; line-height:22px; content:"자주가는 매장 등록"}
.store_details .sns .favorite a:hover:after {position:absolute; top:-11px; left:50%; width:108px; height:6px; margin-left:-54px; background:url(/assets/images/store/bg_tooltip_arrow.png) 50% 0 no-repeat; content:"";}

.store_details .inner_store {padding:30px; border-radius:0 0 5px 5px;}
.store_details .store_box:after,
.store_details .store_box .info:after {display:table; clear:both; content:"";}
.store_details .store_box .img,
.store_details .store_box .info {float:left;}
.store_details .store_box .img {width:311px;}
.store_details .store_box .img img {width:288px; height:207px; border:1px solid #e0d6d1;}
.store_details .store_box .info {width:376px;}
.store_details .store_box .info dt,
.store_details .store_box .info dd {float:left; padding-bottom:10px;}
.store_details .store_box .info dt {clear:left; width:67px; padding-left:9px; background:url(/assets/images/store/bu_store_list.png) 0 6px no-repeat; color:#a79c8e; font-weight:bold; font-size:12px;}
.store_details .store_box .info dd {width:300px; color:#2f231c;}

.store_details .service_title {margin-top:6px;}
.store_details .mn_service {margin-top:-2px;}
.store_details .mn_service ul {margin-left:-10px;}
.store_details .mn_service ul:after {display:table; clear:both; content:"";}
.store_details .mn_service li {position:relative; float:left; padding:0 10px;}
.store_details .mn_service span {display:block; height:33px; background-position:0 50%; background-repeat:no-repeat; color:#a79c8e; font-size:11px; line-height:35px;}
.store_details .special_mn .a span {padding-left:31px; background-image:url(/assets/images/store/ico_afocato.png);} /* 아포가토 */
/* .store_details .special_mn .c span {padding-left:31px; background-image:url(/assets/images/store/ico_cafebris_breeze.png); background-position:left top 5px;} */ /* 카페브리즈 브리즈 빙수 사라지면 주석 해제 (이미지 재업로드) */
.store_details .special_mn .c span {padding-left:37px; background-image:url(/assets/images/store/ico_cafebris_breeze.png); background-position:left top -2px;} /* 카페브리즈 브리즈 빙수 사라지면 삭제 */

.store_details .special_mn .b span {padding-left:33px; background-image:url(/assets/images/store/ico_abing.png);} /* 아빙 */
.store_details .special_mn .d span {padding-left:33px; background-image:url(/assets/images/store/ico_container.png);} /* 딜리셔스 콘테이너 */
/* .store_details .special_mn .e span {padding-left:33px; background-image:url(/assets/images/store/ico_cafebris_sunny.png); background-position:left top 1px;} 카페브리즈 써니 빙수 사라지면 주석 해제 */

.store_details .store_service .a span {padding-left:38px; background-image:url(/assets/images/store/ico_delivery.png);} /* 딜리버리 */
.store_details .store_service .b span {padding-left:26px; background-image:url(/assets/images/store/ico_parking.png);} /* 주차가능 */
.store_details .store_service .c span {padding-left:26px; background-image:url(/assets/images/store/ico_happypoint.png);} /* 해피포인트 적립가능 */
.store_details .store_service .d span {padding-left:28px; background-image:url(/assets/images/store/ico_happyorder.png);} /* 해피오더 주문가능 */
.store_details .store_service .e span {padding-left:28px; background-image:url(/assets/images/store/ico_baemin.png);} /* 배달의 민족 */
.store_details .store_service .f span {padding-left:38px; background-image:url(/assets/images/store/ico_yogiyo.png);} /* 요기요 */

.store_details .event_ongoing,
.store_details .store_hashtag {padding-top:40px;}
.store_details .title {padding:0 0 8px 9px; background:url(/assets/images/store/bu_store_list.png) 0 6px no-repeat; color:#a79c8e; font-size:12px;}
.store_details .event_ongoing {position:relative; width:100%; padding-bottom:35px;}
.store_details .event_ongoing .swipe_wrap {overflow:hidden; width:100%; height:139px;}
.store_details .event_ongoing .swipe_wrap > div {width:686px;}
.store_details .event_ongoing ul:after {display:table; clear:both; content:"";}
.store_details .event_ongoing li {float:left; width:50%;}
.store_details .event_ongoing figure,
.store_details .event_ongoing .event_period {float:left;}
.store_details .event_ongoing figure img {width:137px; height:137px; border-radius:3px; border:1px solid #eaeaea;}
.store_details .event_ongoing .event_period {width:159px; padding:20px 30px 0 15px;}
.store_details .event_ongoing .event_title {display:block; padding-bottom:10px; font-size:18px; line-height:20px;}
.store_details .event_ongoing .event_title a {color:#2f231c;}
.store_details .event_ongoing .period {color:#a79c8e; font-size:12px;}
.store_details .event_ongoing .dslide {display:none;}
.store_details .prev_next {position:absolute; top:40px; left:96px;}
.store_details .prev_next a {display:block; float:left; height:17px; background:url(/assets/images/store/btn_event_prevnext.png) no-repeat; text-indent:-9999em;}
.store_details .prev_next .prev {width:17px; background-position:0 0;}
.store_details .prev_next .next {width:16px; background-position:-17px 0;}
.store_details .service_wrap {padding:27px 0 20px; border-radius:0 0 5px 5px; background-color:#f8f8f8; font-weight:300; font-size:11px;}
.store_details .service_wrap ul {width:690px; margin:0 auto;}
.store_details .service_wrap ul:after {display:table; clear:both; content:"";}
.store_details .service_wrap li {float:left; margin: 0 2px; text-align:center;}
.store_details .service_wrap a {color:#665a4c;}
.store_details .service_wrap dt {padding-bottom:10px;}
.store_details .service_wrap strong {color:#31190a; font-weight:300;}
.store_details .service_wrap span {color:#ff7c98; font-weight:400;}

/*>좋아하는 플레이버*/
.br_mybr_flavor .re_flavor {margin:80px 0 120px 0; overflow:hidden;}
.br_mybr_flavor .re_flavor .list_product {margin-bottom:27px; padding:0;}
.br_mybr_flavor .re_flavor h2 {font-size:17px; width:900px; color:#2f231c; text-align:left; font-weight:normal; margin-bottom:15px;}
.br_mybr_flavor .re_flavor .list_product ul {float:left; margin:0;}
.br_mybr_flavor .re_flavor .list {border:none;}
.br_mybr_flavor .re_flavor .list_product ul li {float:left; position:relative; overflow:hidden; margin-left:-1px; margin-bottom:30px; width:183px; overflow:hidden;}
.br_mybr_flavor .re_flavor .list_product ul li span {display:table-cell; width:183px; vertical-align:middle; height:62px; text-align:center;}
.br_mybr_flavor .re_flavor .list_product ul li:nth-child(5n+1) {margin-left:0;}
.br_mybr_flavor .re_flavor .list_product ul li > a.ice {display:block; width:183px; height:183px; border:1px solid #e3e7e7; color:#94927b; box-sizing:border-box; background:url(/assets/images/menu/img_con.png) 50% 134px no-repeat; background-size:35px auto;}
.br_mybr_flavor .re_flavor .list_product ul li > a.ice_pack {display:block; width:183px; height:183px; border:1px solid #e3e7e7; color:#94927b; box-sizing:border-box;}
.br_mybr_flavor .re_flavor .list_product ul li img {width:112px; position:absolute; left:50%; margin-left:-56px; top:70px;}
.br_mybr_flavor .re_flavor .buy {padding:12px 0;}
.br_mybr_flavor .re_flavor .favorite,
.br_mybr_flavor .re_flavor .recommend {position:absolute; right:5px; top:141px;}
.br_mybr_flavor .re_flavor .favorite a {display:block; width:35px; height:35px; text-indent:-9999em; background:url(/assets/images/common/ico_favorite.png) 0 0;}
.br_mybr_flavor .re_flavor .recommend a {display:block; width:35px; height:35px; text-indent:-9999em; background:url(/assets/images/common/ico_favorite_recommend.png) 0 0;}
.br_mybr_flavor .re_flavor .favorite a:hover, #br_mybr .re_flavor .favorite a.on {background:url(/assets/images/common/ico_favorite_on.png) 0 0;}
.br_mybr_flavor .btn_favor {text-align:center;}
.br_mybr_flavor .favor_slide {text-align:center;}
.br_mybr_flavor .favor_slide .dslide {margin-top:20px;}
.br_mybr_flavor .pagination {margin-top:-120px;}

/*= 구성 팝업 */
#modal_consist .modal_container {width:577px; height:351px; margin:0 auto; position:absolute; top:0; left:50%; margin:175px 0 0 -288px;}
#modal_consist .modal_content {border-radius:0; background:none;}
#modal_consist .modal_body {margin:0 auto; position:relative;}
#modal_consist .modal_close {left:50%; margin-left:300px; top:0; width:54px; height:54px; z-index:999;}
#modal_consist .modal_body {padding:25px 0;}
#modal_consist .photo {position:absolute; left:33px; top:33px; width:215px; height:215px; border:1px solid #e3e7e7; border-radius:5px; background:url(/assets/images/menu/img_con.png) 50% 130px no-repeat; background-size:70px auto;}
#modal_consist .photo img {width:215px; height:215px;}
#modal_consist .prd {position:relative; padding:33px 33px 33px 267px; min-height:215px; background:#fff; border-radius:5px 5px 0 0;}
#modal_consist .prd.sold {border-radius:5px 5px;}
#modal_consist .prd .name {color:#2f231c; font-size:32px; font-weight:200; height:117px; line-height:1.3;}
#modal_consist .prd .name small {display:block; padding-bottom:5px; font-weight:normal; font-size:11px; color:#cc9b3b; line-height:11px; text-transform:uppercase;}
#modal_consist .prd .content {color:#948780; font-weight:300; font-size:16px; line-height:20px; margin-bottom:22px;}
#modal_consist .link {background:#f2f2f2; border-radius:0 0 5px 5px; padding:17px 20px;}
#modal_consist .link:after {display:table; content:""; clear:both;}
#modal_consist .sns ul,
#modal_consist .sns li {float:left;}
#modal_consist .sns li {margin-right:9px;}
#modal_consist .buy {display:inline-block; float:right;}
#modal_consist .buy a {display:block; height:21px; border-radius:25px; background-color:#f56f98; padding:11px 20px; color:#fff; text-align:center; line-height:23px; font-size:13px; font-weight:bold;}

#modal_gift .modal_container {width:747px;}
#modal_gift .modal_content {border-radius:0 0 5px 5px;}
#modal_gift .title {border-radius:5px 5px 0 0; padding:27px 0 0 80px; height:59px; background:#ff7c98 url(/assets/images/menu/ico_gift.gif) no-repeat 20px 34px; color:#fff; font-size:28px;}
#modal_gift .modal_content > div {padding:35px 43px 0 43px;}
#modal_gift .modal_content dt {color:#a79c8e; font-size:15px; font-weight:600; box-sizing:border-box; background:url(/assets/images/menu/dot_pink_s.gif) no-repeat 1px 9px; padding-left:8px; margin-bottom:8px;}
#modal_gift .modal_content dd {color:#2f231c; margin-bottom:8px; padding-left:8px; box-sizing:border-box;}
#modal_gift .modal_content h4 {color:#a79c8e; font-size:15px; font-weight:600;}
#modal_gift .modal_content .company {background:#fff url(/assets/images/menu/img_gift_company.jpg) no-repeat no-repeat 54px 85px; height:412px;}
#modal_gift .modal_content h3 {color:#ff7c98; font-size:18px; font-weight:600;}
#modal_gift .modal_content .company h3 {padding-bottom:210px;}
#modal_gift .modal_content .company dl {float:left; width:50%;}
#modal_gift .modal_content .company:after {display:table; content:""; clear:both;}
#modal_gift .modal_content .personal {min-height:300px; background:url(/assets/images/menu/img_gift_personal.png) no-repeat no-repeat 402px 30px;}
#modal_gift .modal_content .personal h3 {padding-bottom:20px;}
#modal_gift .modal_content .personal dt, #modal_gift .modal_content .personal dd {float:left;}
#modal_gift .modal_content .personal dl {width:360px;}
#modal_gift .modal_content .personal dl:after {display:table; content:""; clear:both;}
#modal_gift .modal_content .personal dt {width:85px;}
#modal_gift .modal_content .personal dd {width:275px;}
#modal_gift .modal_content .personal li span {float:right; color:#ff7c98; font-weight:normal;}
#modal_gift .modal_content .tel {border-top:1px solid #e0dcd8; text-align:center; margin-top:50px; padding-top:20px; color:#2f231c; font-size:16px;}
#modal_gift .modal_content .tel strong {color:#ff7c98;}

#modal_nutrition .modal_container {width:787px;}
#modal_nutrition .modal_content {border-radius:0 0 5px 5px; background:#fff;}
#modal_nutrition .title {border-radius:5px 5px 0 0; padding:33px 0 0 100px; height:57px; background:#ff7c98 url(/assets/images/menu/ico_nutrition.png) no-repeat 47px 24px; color:#fff; font-size:28px; line-height:1;}
#modal_nutrition .content_info {padding:50px 47px 60px;}
#modal_nutrition .content_info dl:after {display:table; clear:both; content:"";}
#modal_nutrition .content_info dt {float:left; width:92px; margin-top:20px; color:#ff7c98}
#modal_nutrition .content_info dt:first-child+dd {margin-bottom:10px;}
#modal_nutrition .content_info dd {float:left; width:100%; margin-top:-19px; padding-left:92px; box-sizing:border-box;}
#modal_nutrition .info-table {width:100%; margin-top:-10px; border-collapse:collapse;}
#modal_nutrition .info-table th,
#modal_nutrition .info-table td {border-bottom:1px solid #d8d1cc; color:#2f231c; font-size:14px; font-style:normal; line-height:40px;}
#modal_nutrition .info-table th {width:100px; background:#f7f7f7;}
#modal_nutrition .info-table td {overflow:hidden; text-align:center;}
#modal_nutrition .info-table .speziell {float:left; padding:0 15px; text-align:left; }
#modal_nutrition .info-table .speziell em {color:#a99b82; font-style:normal;}

/* recruit */
#about_jobs {width:100%;}
#about_jobs:after {display:block; clear:both; content:'';}
#about_jobs section {width:401px; height:471px; border:2px solid #e6e2da; border-radius:5px; text-align:center;}
#about_jobs h3 {margin-bottom:28px;padding-top:48px;  font-size:0px; line-height:0px;}
#about_jobs small {display:block; margin-bottom:15px;}
#about_jobs .type1 {float:left;}
#about_jobs .type2 {float:right;}
#about_jobs p {padding-top:141px; color:#2f231c; font-size:13px; line-height:160%;}
#about_jobs .type1 p {background:url('/assets/images/about/jobs_img_1.jpg') center top no-repeat;}
#about_jobs .type2 p {background:url('/assets/images/about/jobs_img_2.jpg') center top no-repeat;}
#about_jobs a {display:block; position:relative; margin:14px auto 0px; width:118px; height:43px;  background:#ff7c98; color:#fff; font-weight:bold; font-size:17px; line-height:43px;}
#about_jobs a:after {display:block; position:absolute; top:0px; left:-22px;  z-index:-1;width:43px; height:43px; border-radius:50%; background:#ff7c98; clear:both; content:'';}
#about_jobs a:before {display:block; position:absolute; top:0px; right:-22px;  z-index:-1;width:43px; height:43px; border-radius:50%; background:#ff7c98; clear:both; content:'';}

/* contact us */
#about_contact_us figcaption {margin-top:25px;}
#about_contact_us .zip_code {margin-bottom:60px;}
#about_contact_us .zip_code h3,#about_contact_us .way h3 {margin-bottom:15px; font-size:0px; line-height:0px;}
#about_contact_us .zip_code p {color:#2f231c;font-size:14px;line-height:160%;}
#about_contact_us .way {width:100%;}
#about_contact_us dl {display:inline-block; margin:0px 43px 30px 0px;}
#about_contact_us dt {margin-bottom:8px; color:#897b6e; font-weight:bold; font-size:12px;}
#about_contact_us dd {color:#aca09a; font-size:13px;}
#about_contact_us .bus {display:block;}
#about_contact_us .bus dd {position:relative;vertical-align:top;}
#about_contact_us .bus dd:after {display:block; clear:both; content:'';}
#about_contact_us div {position:relative; margin-right:35px; float:left; padding-left:35px; height:40px;}
#about_contact_us em.color {color:#8395b9;}
#about_contact_us em {position:absolute; top:0px; left:0px; color:#5ca65c; font-weight:bold; font-style:normal;font-size:11px;}

/* 개인정보 취급방침 */
.policy_com #content {width:915px; margin:0 auto;}
.policy_info {color:#2f231c; font-size:15px; line-height:22px; padding-bottom:40px; border-bottom:1px solid #dcdcdc; letter-spacing:-0.09em;}
.policy_com .select {border:1px solid #545454; border-radius:4px; width:194px; margin:15px 0; color:#636363; font-size:12px;}
.policy_com .history {text-align:right;}
.history_wrap {color:#948780; line-height:18px; font-size:13px;}
.history_wrap section {padding-bottom:40px;}
.history_wrap table {width:100%;}
.history_wrap table th {background:#f4f2ed; color:#2f231c; font-weight:normal;}
.history_wrap table td {text-align:center; border:1px solid #e6e2d8;}
.history_wrap table td.br_l {border-left:1px solid #e6e2d8;}
.history_wrap table td.br_r {border-right:1px solid #e6e2d8;}
.history_wrap table td, .policy_com .history_wrap table th {padding:7px 0;}
.history_wrap table {border-collapse:collapse; border-spacing:0;}
.history_wrap table caption {display:none; height:0; font-size:0;}
.history_wrap h4 {color:#ff7c98; font-size:17px; font-weight:normal; margin-bottom:12px;}
.history_wrap p + dl {margin-top:10px;}
.history_wrap p.mg {margin-bottom:10px;}
.history_wrap p strong {font-weight:normal;}
.history_wrap dl dt, .history_wrap strong {color:#2f231c;}
.history_wrap dl dd, .history_wrap ul li {margin-bottom:8px;}
.history_wrap ul.mgn li {margin-bottom:0;}
.history_wrap .tri dd, .history_wrap .tri li, .history_wrap dt.tri {padding-left:10px; position:relative;}
.history_wrap .dot li {padding-left:10px; position:relative;}
.history_wrap .tri dd:before, .history_wrap .tri li:before, .history_wrap dt.tri:before {content:"▶"; display:inline-block; font-size:6px; position:absolute; left:0; top:0; color:#948780;}
.history_wrap .dot li:before {content:"•"; display:inline-block; font-size:6px; position:absolute; left:0; top:0;}
.history_wrap .dot li.tri:before {content:"▶"; color:#948780;}
.history_wrap a {color:#948780;}


/* 이메일 무단수집거부 */
#modal_unsubscribe .modal_container {width:787px;}
#modal_unsubscribe .modal_close {top:0;}
#modal_unsubscribe .modal_content {background:#fff;}
#modal_unsubscribe .title {border-radius:5px 5px 0 0; padding:27px 0 0 104px; height:59px; background:#ff7c98 url(/assets/images/common/ico_email.gif) no-repeat 38px 25px; color:#fff; font-size:28px;}
#modal_unsubscribe .modal_body {padding:32px 45px; font-size:14px; color:#928883;}
#modal_unsubscribe dt {margin:26px 0; color:#2f231c; font-size:19px;}
#modal_unsubscribe dd {margin-bottom:18px; line-height:17px;}

/*= 메뉴 상세 하단 공통 */
.br_menu_view {position:relative;}
#br_menu #content {padding-bottom:330px;}
#br_menu .event_delivery {position:absolute; left:0; bottom:389px; background:#f9f8f7; width:100%; height:171px;}
.event_delivery .inner {width:916px; margin:34px auto 0 auto;}
.event_delivery .event {width:476px; float:left;}
.event_delivery .order {width:439px; float:left;}
.event_delivery .event h3 {line-height:33px;}
.event_delivery .event li {line-height:25px; background:url(/assets/images/menu/dot_pink.gif) no-repeat 1px 9px; padding-left:13px;}
.event_delivery .event li a {color:#2f231c;}
.event_delivery .order h3 {line-height:38px;}
.event_delivery .order p {float:left;}
.event_delivery .order p.qr {margin:5px 0 0 26px;}


/*= 상단 타이틀 */
.line_title {text-align:center; height:230px; width:1200px; display:table-cell; vertical-align:middle; color:#483834; font-size:17px; font-weight:normal;}
.line_title span {display:block; margin-bottom:10px;}
.line_title span img {vertical-align:middle;}
.line_title span:before,
.line_title span:after{display:inline-block; width:36px; height:11px; vertical-align:middle; content:"";}
.line_title span:before {margin-right:10px; background:url(/assets/images/common/icon_title_1.png) no-repeat;}
.line_title span:after {margin-left:10px; background:url(/assets/images/common/icon_title_2.png) no-repeat;}


#br_menu .list_product .line_title {padding-top:114px; position:relative; height:76px;} /* menu main */
#br_menu .br_menu_list .list_product .line_title {padding-top:105px;} /* list */
#br_menu .list_product .line_title.top {padding-bottom:25px; height:40px;}
.br_menu_main .list_product .line_title .nutrition {position:absolute; right:0; bottom:-7px;}
.br_menu_list .list_product .line_title .nutrition {position:absolute; right:0; bottom:18px;}
/*
#br_menu .line_title {text-align:center;}
#br_menu .line_title span {display:inline-block;}
#br_menu .line_title span img {vertical-align:middle;}
#br_menu .line_title span:before,
#br_menu .line_title span:after{display:inline-block; width:36px; height:11px; vertical-align:middle; content:"";}
#br_menu .line_title span:before {margin-right:10px; background:url(/assets/images/common/icon_title_1.png) no-repeat;}
#br_menu .line_title span:after {margin-left:10px; background:url(/assets/images/common/icon_title_2.png) no-repeat;}

#br_menu .list_product .line_title {padding-top:120px; position:relative;}
#br_menu .list_product .line_title.top {padding-bottom:25px;}

.br_menu_main .list_product .line_title .nutrition {position:absolute; right:0; bottom:-7px;}
.br_menu_list .list_product .line_title .nutrition {position:absolute; right:0; bottom:18px;}

.br_event_winner .line_title {text-align:center; height:230px; width:1200px; display:table-cell; vertical-align:middle; color:#483834; font-size:17px; font-weight:normal;}
.br_event_winner .line_title span {display:block; margin-bottom:10px;}
.br_event_winner .line_title span img {vertical-align:middle;}
.br_event_winner .line_title span:before,
.br_event_winner .line_title span:after{display:inline-block; width:36px; height:11px; vertical-align:middle; content:"";}
.br_event_winner .line_title span:before {margin-right:10px; background:url(/assets/images/common/icon_title_1.png) no-repeat;}
.br_event_winner .line_title span:after {margin-left:10px; background:url(/assets/images/common/icon_title_2.png) no-repeat;}

.br_customer_policy .line_title {text-align:center; font-weight:normal; height:106px; border-bottom:2px solid #ff7c98; font-size:20px; color:#483834;}
.br_customer_policy .line_title span {display:block; margin-bottom:10px;}
.br_customer_policy .line_title span img {vertical-align:middle;}
.br_customer_policy .line_title span:before,
.br_customer_policy .line_title span:after{display:inline-block; width:36px; height:11px; vertical-align:middle; content:"";}
.br_customer_policy .line_title span:before {margin-right:10px; background:url(/assets/images/common/icon_title_1.png) no-repeat;}
.br_customer_policy .line_title span:after {margin-left:10px; background:url(/assets/images/common/icon_title_2.png) no-repeat;}
*/

/*> 공지사항 상세페이지 */
.br_about_notice_view #content {margin-top:0 !important;}
.board_view_wrap {width:900px; margin:0 auto;}
.board_view_header {border-bottom:1px solid #dadada;}
.board_title {text-align:center; padding:52px 0 0 0; color:#cc9b3b; font-size:17px; font-weight:normal; height:125px;}
.board_title span {display:block; line-height:0;}
.board_title span.txt {margin:12px 0 5px 0;}
.board_view_header .subtit {position:relative; padding:21px 0;}
.board_view_header:after {display:table; content:""; clear:both;}
.board_view_header h4.name {color:#2f231c; font-size:31px; line-height:38px; font-weight:normal; text-align:center; border-bottom:2px solid #ff7c98; padding-bottom:22px;}
.board_view_header .period {padding-left:10px; color:#948780; font-size:17px; text-align:left;}
.board_view_header .sns {position:absolute; right:0; top:17px;}
.board_view_header .sns li {float:left; margin-left:7px;}
.board_view_service {position:absolute; left:0; top:17px;}
.board_view_service p {display:inline-block; margin-right:7px;}
.board_view_content {border-bottom:1px solid #dadada; padding:50px 0; text-align:center;}
.board_view_content .mobile_hidden {display:none;}
.br_about_press_view .borad_file, .br_about_notice_view .borad_file {margin:5px; line-height:22px;}
.br_about_press_view .borad_file img, .br_about_notice_view .borad_file img {margin-right:5px;}
.order_store {text-align:right; margin-top:10px;}
.board_view_btn {text-align:center; margin-top:18px;}
.board_view_btn a {display:inline-block; padding:17px 0; width:178px; border-radius:30px; background:#f56f98; color:#fff; font-size:17px;}

/* 고객센터 */
#br_customer #content {width:916px;}
#customer_ccm .sub_tap {margin-top:42px;width:100%;}
#customer_ccm .sub_tap:after {content:''; display:block; clear:both;}
#customer_ccm .sub_tap li {float:left; width:50%;text-indent:-9999px;}
#customer_ccm .sub_tap li a {display:block; overflow:hidden; width:100%; height:47px;  background:url('/assets/images/customer/ccm_tap.gif') right top no-repeat; }
#customer_ccm .sub_tap li:first-child a {background:url('/assets/images/customer/ccm_tap.gif') 0px top no-repeat; }

#customer_ccm .sub_tap li a:hover , #customer_ccm .sub_tap li a.on {background-position:right bottom;}
#customer_ccm .sub_tap li:first-child a:hover, #customer_ccm .sub_tap li:first-child a.on{background-position:0px bottom;}

#customer_ccm section.ccm {position:relative; margin-top:12px; padding-top:75px; height:266px;}
#customer_ccm section.ccm:after {display:block; position:absolute; top:60px; right:25px; width:409px; height:342px; background:url('/assets/images/customer/ccm_img_1.gif') right top no-repeat; clear:both; content:'';}
#customer_ccm h4 {margin-bottom:15px; color:#2f231c; font-weight:bold; font-size:17px;}
#customer_ccm section.ccm p {color:#2f231c; font-size:13px; line-height:160%;}
#customer_ccm .ccm_info {margin-top:80px;}
#customer_ccm .ccm_info:after {display:block; clear:both; content:'';}
#customer_ccm .area1 {float:left; width:407px;}
#customer_ccm .area1 p {padding-top:170px; background:url('/assets/images/customer/ccm_img_2.jpg') 0 0 no-repeat;color:#2f231c; font-size:13px; line-height:160%;}
#customer_ccm .area2 {float:right;}
#customer_ccm .area2 h4 {margin-bottom:54px;}

#customer_ccm .channel_box {margin-top:60px;}
#customer_ccm .step_box {margin-bottom:79px;}
#customer_ccm .step_box h4 {margin-bottom:45px;}
#customer_ccm .channel {margin-bottom:90px;}
#customer_ccm .step_box ol {display:table; margin-bottom:70px;width:100%;}
#customer_ccm .step_box ol:after {display:block; clear:both; content:"";}
#customer_ccm .step_box ol li {position:relative; display:table-cell;width:103px; height:67px; border:2px solid #d3c8c2; border-radius:5px; color:#756b66; font-weight:bold; font-size:13px; text-align:center; line-height:160%; vertical-align:middle;}/* 2018-10-30 Modify width:83px;*/
#customer_ccm .step_box ol li em {position:absolute; top:-33px;  left:0px;width:100%; font-weight:bold; font-style:normal; color:#ff7c98;}
#customer_ccm .step_box ol li.gap {width:54px; height:71px; border:0px; font-size:0px;}/* 2018-10-30 Modify width:31px;*/

#customer_ccm .channel h4 {margin-bottom:18px;}
#customer_ccm .channel ol {margin-bottom:22px;}
#customer_ccm .channel ol li {margin:4px 0px; color:#2f231c;font-size:13px;}
#customer_ccm .channel ul {width:100%;}
#customer_ccm .channel ul:after {display:block; clear:both; content:'';}
#customer_ccm .channel ul li {float:left; }
#customer_ccm .channel ul .phone {padding-left:89px; background:url('/assets/images/customer/channel_img_1.gif') 0px 5px no-repeat;}
#customer_ccm .channel ul  h5 {margin-bottom:5px;color:#756b66; font-weight:bold; font-size:13px;}
#customer_ccm .channel ul .phone em {color:#ff7c98;font-weight:bold;font-style:normal;font-size:30px;}
#customer_ccm .channel ul li {color:#2f231c; font-size:13px; line-height:180%;}
#customer_ccm .channel ul .internet {margin-left:85px;padding-left:87px;background:url('/assets/images/customer/channel_img_2.gif') 0px 10px no-repeat; }
#customer_ccm .channel ul .internet em, #customer_ccm .channel ul .store em {color:#2f231c;font-weight:bold;font-style:normal;font-size:14px;}
#customer_ccm .channel ul a {display:block; position:relative;margin-top:6px; width:64px; height:24px; background:#d3c1ab; color:#fff;  text-align:center; line-height:24px;}
#customer_ccm .channel ul a:after {display:block; position:absolute; top:0px; left:-12px; z-index:-1; width:24px; height:24px; border-radius:50%; background:#d3c1ab; clear:both;content:'';}
#customer_ccm .channel ul a:before {display:block; position:absolute; top:0px; right:-12px; z-index:-1; width:24px; height:24px; border-radius:50%; background:#d3c1ab; clear:both;content:'';}

#customer_ccm .store {float:right !important; margin-right:5px; padding-left:83px; background:url('/assets/images/customer/channel_img_3.gif') 0px 5px no-repeat;}
#customer_ccm .basic ol {margin-bottom:33px;}
#customer_ccm .basic ol li {margin:4px 0px; color:#2f231c;font-size:13px;}
#customer_ccm table {width:100%;}
#customer_ccm table caption {display:none;}
#customer_ccm table thead th {height:38px;background:#f4f2ed; color:#2f231c; font-size:13px;}
#customer_ccm table tbody th {border:1px solid #e6e2d8; border-top:0px; color:#948780; font-size:13px;}
#customer_ccm table tbody td {padding:16px 0px; border-right:1px solid #e6e2d8; border-bottom:1px solid #e6e2d8; color:#948780; font-size:13px; line-height:160%;text-align:center;}

#customer_ccm .tap_area {display:none;}
#customer_ccm .tap_area.on {display:block;}

/*= 케이터링 */
.br_store_catering .always, .br_store_catering section.order {width:996px; margin:0 auto;}
.br_store_catering .always {border-top:2px solid #ff99bf; padding:86px 0 114px 0;}
.br_store_catering .always {text-align:center;}
.br_store_catering .always p {font-size:15px; color:#2f231c; line-height:22px; padding:10px 0 45px 0;}
.br_store_catering .happyorder {margin-bottom:60px;}
.br_store_catering .happyorder li {display:inline-block; width:79px; padding-top:79px; background:url('/assets/images/store/ico_catering.png') 0 0 no-repeat; margin:0 13px;}
.br_store_catering .happyorder .ico1 {background-position:21px 0;}
.br_store_catering .happyorder .ico2 {background-position:-84px 0;}
.br_store_catering .happyorder .ico3 {background-position:-192px 0;}
.br_store_catering .happyorder .ico4 {background-position:-310px 0;}
.br_store_catering .area {border-top:1px solid #e8e6e5; border-bottom:1px solid #e8e6e5; padding:49px 0 220px 0; text-align:center; background:#fcfcfc url('/assets/images/store/img_party.png') 91px 128px no-repeat;}
.br_store_catering .area li {display:inline-block; width:283px; vertical-align:top;}
.br_store_catering .area li span {display:block; line-height:0; margin-bottom:6px;}
.br_store_catering .area li strong {font-size:30px; color:#2f231c; display:block; font-weight:normal; letter-spacing:-2px;}
.br_store_catering .order {text-align:center; }
.br_store_catering .order li {display:inline-block; vertical-align:top; padding-top:189px; width:320px; font-size:14px; color:#2f231c;}
.br_store_catering .order li figure {line-height:0; vertical-align:top; margin-bottom:13px;}
.br_store_catering .order li.order1 {background:url('/assets/images/store/img_step_1.png') 50% 0 no-repeat;}
.br_store_catering .order li.order1 img {vertical-align: baseline;}
.br_store_catering .order li.order2 {width:346px; background:url('/assets/images/store/img_step_2.png') 50% 0 no-repeat; position:relative;}
.br_store_catering .order li.order3 {background:url('/assets/images/store/img_step_3.png') 50% 0 no-repeat;}
.br_store_catering .order .order2:before, .br_store_catering .order .order2:after {background:url('/assets/images/tore/order_step_next.png') 0 0 no-repeat; width:20px; height:35px; position:absolute; top:77px; content:"";}
.br_store_catering .order .order2:before {left:0;}
.br_store_catering .order .order2:after {right:0;}

.br_store_catering {position:relative;}
.br_store_catering #content {width: auto; padding-bottom:0;}
.br_store_catering .inner_content {width:1200px; margin: auto;}
.br_store_catering .add_benner {width:100%; margin-top: 158px; background: #fff1f4; text-align: center;}
.br_store_catering .app_delivery {background:#f9f8f7; width:100%;}
.app_delivery .inner {overflow:hidden; width:1200px; margin:0 auto;}
.app_delivery .inner img {vertical-align:top;}
.app_delivery .app {float:left; width:555px; padding-left:162px;}
.app_delivery .app h3 {line-height:35px;}
.app_delivery .app p {display:inline-block;}
.app_delivery .app .qr {margin-right:15px;}
.app_delivery .app .qr + p {padding-top:2px;}
.app_delivery .order {float:left; width:307px; text-align:left;}
.app_delivery .order h3 {line-height:38px;}
.app_delivery .order p {float:left;}
.app_delivery .order p.qr {margin:5px 0 0 26px;}


/* 2018-10-26 Main ADD Start */
#br_main h4.title {text-align:center;padding:26px 0 0;margin-bottom: -14px;}
#br_main h4.title:before {position: absolute;top:177px; left:0; display: inline-block; text-align: center;content:""; width: 100%; height:1px;background:#dcd7d1;}  /* background:url('/assets/images/main/tit_sns.png') no-repeat;*/
/*#br_main h4.title:after {display: block; clear: both;content: "";}*/
#br_main h4.title a {position:absolute; top: 125px left:0; margin-left:-149px; display:inline-block; width:298px; height:13px; text-align:center; z-index:9;}

.sns_wrap {display: block; position: relative; margin-top: 20px;width: 100%; overflow: hidden; padding-top: 30px;transition-duration: 0s; transform: translate3d(0px, 0px, 0px);} /*width: 1015%; position: relative; translate3d(-1020px, 0px, 0px);*/ 
.ig-item {position: relative; float: left; list-style: none; position: relative;width: 24%; height: 24%; max-width: 288px; max-height: 288px; margin-right: 16px;} /* width: 288px; height: 288px; height: auto !important; background: #fff;*/
.ig-item:nth-child(4) {margin-right: 0 !important;}
.ig-item .ig-item-a {display: block;}
.ig-item .ig-thumb {width:288px; height:288px;}/*padding: 9px;*/
.ig-item .ig-thumb img {width: 100%;}
.ig-item .ig-more { display: none; position: absolute; top: 0; left: 0; width: 100%; height: 100%;background: rgba(0,0,0,.4);text-align: center;}
.ig-item .ig-btn {display: inline-block;position: absolute;top: 26px;left: 0; bottom: 0; right: 0; width: 147px; height: 44px; margin: 29.1% auto auto; background: #ff8fa7;
    font-size: 16px; color: #fff;text-align: center;line-height: 2.7; border-radius:25px }

.ig-num { position: absolute; top: 60%; left: -2%; right: 0; bottom: 0; font-size: 15px; color: #fff;}
.ig-num .ig-icon {display: inline-block; position: relative; padding-left:25px;}
.ig-num .ig-icon+.ig-icon {margin-left: 30px;}
.ig-num .ig-icon:after{display:block;position:absolute;background:url('/assets/images/main/sns_icon.png') no-repeat;content:""}
.ig-num .ig-icon.ig-like:after{top:0px;left:0;width:19px;height:18px;background-position:0 0}
.ig-num .ig-icon.ig-comments:after{top:0px;left:0;width:19px;height:18px;background-position:-19px 0}
.ig-item .ig-item-a:focus .ig-more {display: block}
.ig-item .ig-item-a:hover .ig-more {display: block}

/* 2018-10-26 영양정보 ADD Start */
#br_nutrition {position: relative;margin-top: -24px }
#br_nutrition:after {display:table; clear:both; content:"";}
#br_nutrition .info_container {position: relative;width:900px; max-width: 1200px;margin: 0 auto;}
#br_nutrition .info_content {background:#fff;} /*border-radius:0 0 5px 5px;*/
#br_nutrition .title {padding:17px 0 0 93px; height:35px; background:#f56f98 url(/assets/images/menu/ico_nutrient.png) no-repeat 56px 10px; border-radius:10px 10px 0 0; color:#fff; font-size:16px; line-height:1.2;} 
#br_nutrition .content_info {padding:20px 0 60px;}
#br_nutrition .content_info dl {padding:0 17px; margin-top:16px;} /*padding:0 43px;*/
#br_nutrition .content_info dl:after {display:table; clear:both; content:"";}
#br_nutrition .content_info dt {float:left; width:92px; font-size:13px;font-weight:600; color:#2f231c; background:url(/assets/images/menu/dot_gray.gif) no-repeat 1px 9px; padding-left:9px;}

#br_nutrition .content_info dt:first-child+dd {margin-bottom:10px;}
#br_nutrition .content_info dd {float:left; width:100%; margin-top:-19px; padding-left:134px; box-sizing:border-box;}
#br_nutrition .info-table {width:100%; margin-top:-10px; border-collapse:collapse;}

#br_nutrition .content_info tr:first-child td {line-height:30px;}

#br_nutrition .info-table th,
#br_nutrition .info-table td {width:150px; border-bottom:1px solid #d8d1cc; color:#2f231c; font-size:14px; font-style:normal; line-height:46px;}
#br_nutrition .info-table th {background:#f7f7f7;}
#br_nutrition .info-table td {overflow:hidden; text-align:center;}

#br_nutrition .info-table .proInfo {position: relative; width:100%; text-align:right;}
#br_nutrition .info-table .speziell:first-child {}
#br_nutrition .info-table .speziell {text-align:right;color:#2f231c; padding-left: 40px; margin-top: 2px;display: inline;}/* float:right; */
#br_nutrition .info-table .speziell em {color:#a79c8e;font-style: normal; font-size:14px;line-height: 2; font-weight:600; background:url(/assets/images/menu/dot_pink_s.gif) no-repeat 1px 7px; padding:0 18px 0 9px;}


/* 2018-10-26 기프트카드 ADD Start */
#br_menu .btn_list.top55 {margin-top:44px}
#br_gift .info_container {width:900px;position: relative;max-width: 1200px; margin: 34px auto 0;}
/*#br_gift .info_content {border-radius:0 0 5px 5px;}*/
#br_menu #br_gift:after {display:table; clear:both; content:"";}
#br_gift .title {padding:17px 0 0 94px; height:35px; background:#f56f98 url(/assets/images/menu/ico_giftCard.png) no-repeat 52px 15px; border-radius:10px 10px 0 0; color:#fff; font-size:16px; line-height:1.2;}
#br_gift .info_content > div {padding:35px 43px 0 17px;}
#br_gift .info_content dt {color:#a79c8e; font-size:14px; font-weight:600; box-sizing:border-box; background:url(/assets/images/menu/dot_pink_s.gif) no-repeat 1px 9px; padding-left:9px; margin-bottom:8px;}
#br_gift .info_content dd {color:#2f231c; margin-bottom:8px; padding-left:8px; box-sizing:border-box;}
#br_gift .info_content .personal {min-height:200px; background:url(/assets/images/menu/img_giftCard.png) no-repeat no-repeat 542px 46px;}
#br_gift .info_content .personal h3 {padding-bottom:20px;}
#br_gift .info_content .personal dt/*, #br_gift .info_content .personal dd */ {float:left;}
#br_gift .info_content .personal dl {width:620px; margin-top:5px}
#br_gift .info_content .personal dl:after {display:table; content:""; clear:both;}
#br_gift .info_content .personal dt {width:134px;}
#br_gift .info_content .personal dd {width:495px;line-height: 1.95;}
#br_gift .info_content .personal li span {float:right; color:#f56f98; font-weight:normal;}
#br_gift .info_content .tel {border-top:1px solid #e0dcd8; text-align:center; margin-top:50px; padding-top:20px; color:#2f231c; font-size:16px;}
#br_gift .info_content .tel strong {color:#f56f98;}

/* 2018-10-26  매장과 딜리버리 배너 ADD Start */
#br_menu .store_delivery {position: relative;width:900px; max-width: 1200px;margin:98px auto 0; box-sizing:border-box;text-align: center;}
#br_menu .store_delivery:after {display:table; clear:both; content:"";}
#br_menu .store_delivery .store,
#br_menu .store_delivery .order {position: relative; display: inline-block; height:407px;/*float:left; width:50%;*/}
#br_menu .store_delivery .title {padding:55px 0 30px;text-align: center;}
#br_menu .store_delivery a {display: block; width: 447px;}
#br_menu .snsbox .title {padding-bottom:26px;}
#br_menu .snsbox ul:after {display:table; clear:both; content:"";}
#br_menu .snsbox .sns {width:320px; margin:0 auto; padding-bottom:35px;}
#br_menu .snsbox .sns li {float:left; padding:0 9px;}
#br_menu .main_insta li {float:left; width:16.666%;}
#br_menu .main_insta li img {width:100%;}
#br_menu .snsbox .dslide {padding-top:40px;}

/* 2019-09-02 공지사항 컨텐츠 추가 */
.notice_20190902 {width:100%; position:relative;}
.notice_20190902 .notice_20190902_ytb {position:absolute; top:1185px; left:104px; width:689px;}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
		
	<!-- content -->
	<div id="content">


	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>


</body>
</html>