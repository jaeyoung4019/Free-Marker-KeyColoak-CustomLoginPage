$(document).ready(function(){
    var body = $('body');
    var hamBtn = $('#ham_btn');
    var navMenu = $('#nav');
    var navClose = $('#nav_close');

    // 유저 메뉴 open이벤트
    $('#user_menu_btn').on("click", function(){
        var memberZone = $(this).closest('.member_zone');
        var windowWidth = $(window).width();

        if(memberZone.hasClass('open')){
            memberZone.removeClass('open');
            memberZone.addClass('close');
            if (windowWidth < 1156) {
                body.removeClass('no-scroll');
            }
        }else{
            memberZone.removeClass('close');
            memberZone.addClass('open');
            if (windowWidth < 1156) {
                body.addClass('no-scroll');
            }
        }
    });

    //모바일 navi open 이벤트
    $(hamBtn).on("click", function(){
        if(navMenu.hasClass('open')){
            navMenu.removeClass('open');
            navMenu.addClass('close');
            body.removeClass('no-scroll');
        }else{
            navMenu.addClass('open');
            navMenu.removeClass('close');
            body.addClass('no-scroll');
        }
    });
    // 모바일 navi close 이벤트
    $(navClose).on("click", function(){
        if(navMenu.hasClass('open')){
            navMenu.removeClass('open');
            navMenu.addClass('close');
            body.removeClass('no-scroll');
        }else{
            navMenu.addClass('open');
            navMenu.removeClass('close');
            body.addClass('no-scroll');
        }
    });

    accordion();

    setScreenSize();
    window.addEventListener('resize', setScreenSize);

    // filter ui
    $('.filter_box').on('click', function(e) {
        toggleFilterList(e, $(this));
    });

    $('.filter_close_btn').on('click', function(){
        var filterWrap = $(this).closest('.filter_wrap');
        var filterList = $(this).closest('.list_wrap');
    
        if (filterList.hasClass('open')) {
            filterWrap.removeClass('open');
            filterList.removeClass('open');
        } else {
            filterWrap.addClass('open');
            filterList.addClass('open');
        }
    });

    $(document).mouseup(closeFilterList);
    lnbFilterInput();

    $('.filter_wrap .filter_list input').change(function(){
        handleFilterInputChange();
        var labelBox = $(this).closest('.label_box');
        if ($(this).is(":checked")) {
            labelBox.addClass('chked');
        } else {
            labelBox.removeClass('chked');
        }
    });
    $('.acc_box .filter_list input').change(function(){
        var labelBox = $(this).closest('.label_box');
        if ($(this).is(":checked")) {
            labelBox.addClass('chked');
        } else {
            labelBox.removeClass('chked');
        }
    });

    // 탭영역 active된 item에 focus
    tabScrollerPosition();

    // avator 이미지 edit 쿼리
    $('#imgSelector').each(function () {
        $(this).change(function () {
            setImageFromFile(this, '#preview');
        });
    });

    //explore lnb 필터영역 모바일 이벤트
    $('#flt_lnb_m .menu_item').each(function(){
        var menuOpenBtn = $(this).find('.cont_tit')
        var menuCloseBtn = $(this).find('.box_close_btn');
        $(menuOpenBtn).on('click', function(){
            if(menuOpenBtn.siblings('.cont_box').hasClass('open')){
                menuOpenBtn.siblings('.cont_box').removeClass('open');
            }else{
                menuOpenBtn.siblings('.cont_box').addClass('open');
            }
        });

        $(menuCloseBtn).on('click', function(){
            if(menuCloseBtn.closest('.cont_box').hasClass('open')){
                menuOpenBtn.siblings('.cont_box').removeClass('open');
            }else{
                menuOpenBtn.siblings('.cont_box').addClass('open');
            }
        });
    });

});

// 높이값 설정 관련 쿼리
setScreenSize = () => {
    let vh = window.innerHeight * 0.01;
    let hdHeight = $('#header').outerHeight();
    let ftHeight = $('#footer').outerHeight();
    let fullHeight = ((vh*100) - (hdHeight + ftHeight));
    let vw = window.innerWidth * 0.01;
    let landFullHeight = ((vw*100) - (hdHeight + ftHeight));
    let contentTop = $('.content_top').outerHeight();
    let wrksHeight = ((vh*100) - (hdHeight + ftHeight + contentTop));
    
    document.documentElement.style.setProperty('--vh', `${vh}px`);
    document.documentElement.style.setProperty('--hdHeight', `${hdHeight}px`);
    document.documentElement.style.setProperty('--ftHeight', `${ftHeight}px`);
    document.documentElement.style.setProperty('--fullHeight', `${fullHeight}px`);
    document.documentElement.style.setProperty('--landHeight', `${landFullHeight}px`);
    document.documentElement.style.setProperty('--wrksHeight', `${wrksHeight}px`);
}

// 아코디언 메뉴
accordion = () => {
    $('.acc_wrap').each(function(){
        var acc_btn = $(this).find('.acc_tit');

        acc_btn.click(function() {
            var acc_box = $(this).parent('.acc_box');
            var acc_cont = acc_box.children('.acc_cont');

            if (acc_box.hasClass("open")) {
                acc_box.removeClass("open");
                acc_cont.slideUp(400);
            } else {
                acc_box.addClass("open");
                acc_cont.slideDown(400);

                var otherAccBoxes = $(this).closest('.acc_wrap').siblings('.acc_wrap').find('.acc_box');
                otherAccBoxes.removeClass("open");
                otherAccBoxes.children('.acc_cont').slideUp(400);
            }
            return false;
        });

        var openAccBox = $(this).find('.acc_box.open');
        if (!openAccBox.length > 0) {
            openAccBox.children('.acc_cont').hide();
        }else{
            openAccBox.children('.acc_cont').show();
        }
    });
};

// sort filter 리스트 open 이벤트
function toggleFilterList(e, element) {
    var filterWrap = element.closest('.filter_wrap');
    var filterList = filterWrap.find('.list_wrap');
    var filterListCloseBtn = filterList.find('.filter_close_btn');

    if (filterList.hasClass('open')) {
        filterWrap.removeClass('open');
        filterList.removeClass('open');
    } else {
        filterWrap.addClass('open');
        filterList.addClass('open');
    }
}

// filter 리스트 영역 이외 클릭시 list 닫힘 이벤트
function closeFilterList(e) {
    $('.filter_wrap').each(function(){
        var filterWrap = $(this);
        var filterList = $(this).find('.list_wrap');

        if (!filterWrap.is(e.target) && filterWrap.has(e.target).length === 0) {
            filterWrap.removeClass('open');
            filterList.removeClass('open');
        }
    });
}

// 선택한 인풋의 벨류값 filter result_txt에 노출 이벤트
function handleFilterInputChange() {
    $('.filter_wrap').each(function () {
        var filterWrap = $(this);
        var filterBox = filterWrap.find('.filter_box');
        var filterName = "Filter : ";
        var checkedInputs = filterWrap.find('.filter_list input:checked');
        var orginTxt = filterWrap.find('.filter_name').attr('filter-name');

        checkedInputs.each(function () {
            var filterValue = $(this).val();
            filterName += filterValue + ", ";
        });
        if (checkedInputs.length > 0) {
            filterWrap.find('.filter_name').text(filterName);
            filterWrap.find('.filter_name').addClass('chked');
            filterBox.addClass('chked');
        } else {
            filterWrap.find('.filter_name').text(orginTxt);
            filterWrap.find('.filter_name').removeClass('chked');
            filterBox.removeClass('chked');
        }
    });
}

// 선택한 인풋의 벨류값 filter result_txt에 노출 이벤트
function lnbFilterInput() {
    $('#flt_lnb_m .menu_item').each(function () {
        var menu = $(this);
        var checkboxes = menu.find('.filter_item input[type="checkbox"]');
        var tit = menu.find('.cont_tit .tit .tit_sta');
        var originalText = menu.find('.menu_tit').text(); // 초기 텍스트 저장

        checkboxes.on('change', function () {
            var selectedValues = [];
            checkboxes.each(function () {
                if ($(this).prop('checked')) {
                    selectedValues.push($(this).val());
                }
            });

            if (selectedValues.length > 0) {
                tit.text(selectedValues.join(', '));
                tit.closest('.cont_tit').addClass('chked');
            } else {
                tit.text(originalText); // 초기 텍스트로 되돌림
                tit.closest('.cont_tit').removeClass('chked');
            }
        });
    });
}

// overflow 탭고정
function tabScrollerPosition() {
    $('.tab_list').each(function() {
        var $li = $(this).find('.tab_item');
        var idx, gap;
        $li.each(function(i) {
            if($(this).hasClass('selected')) idx = i;
            return idx;
        });
        var posX = $li.eq(idx).offset().left;
        var $wrap = $li.closest('.tab_list');
        $wrap.scrollLeft(posX);
    });
}

// 아바타 이미지 input query
function setImageFromFile(input, expression) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $(expression).attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }else{

    }
}


// 레이어팝업 관련 쿼리
function openPopup(popupId) {
    if(popChk()){
        var popup = $('#' + popupId);
        var dim = $('#lyDim');
        var body = $('body');

        if (popup.hasClass('open')) {
            hidePopup(popup);
            body.removeClass('no-scroll');
            if (dim.hasClass('show')) {
                hidePopup(dim);
            }
        } else {
            showPopup(popup);
            showPopup(dim);
            body.addClass('no-scroll');
        }
    }
    
}
function popChk(){
    console.log(123)
    // 오픈되어있는 팝업의 id 추적 후에 
    var findId = $('.ly_pop.open').attr('id');
    var findIdType = $('.ly_pop.open').attr('ly_type');

    if(findIdType == 'multi_type'){
        // hidePopup($('#'+findId));
        $('#'+findId).addClass('displaynone')
    }else if(findIdType == 'only_type'){
        closePopup(findId);
    }
    return true;
}
function closePopup(popupId) {
    var popup = $('#' + popupId);
    var dim = $('#lyDim');
    var body = $('body');
    var openPopups = $('.ly_pop.open');

    if(openPopups.hasClass('displaynone')){
        hidePopup2($('.ly_pop.open:not(.displaynone)').attr('id'));
        showPopup2($('.ly_pop.open.displaynone').attr('id'));

        return true;
    }

    if (popup.hasClass('open')) {
        hidePopup(popup);
        body.removeClass('no-scroll');
        if ($('.popup.open').length === 0) {
            hidePopup(dim);
        }
    }
}
function showPopup(element) {
    element.fadeIn(180).addClass('open');
}
function hidePopup(element) {
    element.fadeOut(180, function() {
        $(this).removeClass('open');
    });
}
function showPopup2(element) {
    var target = $('#'+element);
    target.fadeIn(180).removeClass('displaynone');
}
function hidePopup2(element) {
    var target = $('#'+element);
    target.fadeOut(180, function() {
        $(this).removeClass('open');
    });
}
function closePopupOnDimClick() {
    var dim = $('#lyDim');
    var openPopups = $('.ly_pop.open');
    var body = $('body');

    if(openPopups.hasClass('displaynone')){
        hidePopup2($('.ly_pop.open:not(.displaynone)').attr('id'));
        showPopup2($('.ly_pop.open.displaynone').attr('id'));
        return true;
    }
    
    if (openPopups.length >= 0) {
        hidePopup(openPopups);
        hidePopup(dim);
        body.removeClass('no-scroll');
        
    }
}