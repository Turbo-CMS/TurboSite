/**
 * Copyright (c) 2018-2024 TurboCMS.
 * https://github.com/Turbo-CMS
 */

(function ($) {

    /*
    // Infinite Scroll
    */

    $('.js_append').on('request.infiniteScroll', function (event, path) {
        $('.more_text_ajax').addClass('loadings');
        $('.module-pagination').hide();
    });

    $('.js_append').on('load.infiniteScroll', function (event, response, path) {
        $('.more_text_ajax').removeClass('loadings');
    });

    $('.js_append').on('append.infiniteScroll', function (event, response, path, items) {
        initCountdown();
    });

    if ($('.arrows-pagination__next').length > 0) {
        $('.js_append').infiniteScroll({
            path: '.arrows-pagination__next',
            append: '.js-infinite',
            button: '.ajax_load_btn',
            scrollThreshold: false,
            status: '.page-load-status',
        });
    }

    /*
    // Comments
    */

    var $form = $('#form_comment_');
    var previousCommentId = null;

    $(document).on('click', '.blog-comment-action__link', function () {
        var $commentId = $(this).data('id');
        var $formContainer = $('#form_comment_' + $commentId);

        if ($formContainer.is(':visible')) {
            $formContainer.hide();
            if (previousCommentId === $commentId) {
                previousCommentId = null;
            }
        } else {
            $('.js-form-comment').hide();
            $form.find('#parent').val($commentId);
            var $formContents = $form.find('#form_c_del').html();
            $formContainer.html($formContents).show();
            $form.show();
            previousCommentId = $commentId;
            $formContainer.find('form').validate();
        }

        return false;
    });

    /*
    // Comments Tab Show
    */

    $(document).ready(function () {
        var activeTab = localStorage.getItem('activeTab');
        if (activeTab) {
            $('.nav-tabs a[href="' + activeTab + '"]').tab('show');
        }
        $('.nav-tabs a').on('shown.bs.tab', function (event) {
            var activeTab = $(event.target).attr('href');
            localStorage.setItem('activeTab', activeTab);
        });
    });

    /*
    // Comment & Post Rate
    */

    $(document).on('click', '.rating-vote a', function (e) {
        e.preventDefault();

        var $this = $(this);
        var $container = $this.closest('.rating-vote');
        var $counter = $container.find('.rating-vote__result');
        var url = $this.attr('href');

        $.ajax({
            url: url
        }).done(function (response) {
            if (response.success) {
                $container.find('.rating-vote__item').removeClass('active');
                $counter.html(response.value);

                if (response.value !== 0) {
                    $this.addClass('active');
                    $counter.addClass('active');
                } else {
                    $counter.removeClass('active');
                }
            } else {
                if (typeof JNoticeSurface === 'function') {
                    let surface = JNoticeSurface.get();
                    surface.onRatingError();
                }
            }
        });
    });

    /*
    // Modal
    */

    $(document).on('click', '.js-sku-props__value--pict', function (e) {
        e.preventDefault();
        var url = $(this).data('url');
        $('.fast_view_frame.jqmWindow.popup.show').load(url);
    });

    /*
    // Validate
    */

    $(document).ready(function () {
        $('form.validate').validate();
    });

})(jQuery);

