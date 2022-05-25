$.fn.rater = function(e) {
    var t = $.extend({}, $.fn.rater.defaults, e);
    return this.each(function() {
        var e = $(this);
        var n = e.find(".rater-starsOn");
        var n1 = e.find(".rater-starsOn").width();
        var r = e.find(".rater-starsOff");
        t.size = n.height();
        if (t.rating == undefined) t.rating = n.width() / t.size;
        r.mousemove(function(e) {
            var i = e.clientX - r.offset().left;
            var s = r.width() - (r.width() - i);
            s = Math.ceil(s / (t.size / t.step)) * t.size / t.step;
            n.width(s)
        }).hover(function(e) {
            n.addClass("rater-starsHover")
        }, function(e) {
            n.removeClass("rater-starsHover");
            n.width(n1);
        }).click(function(i) {
            var s = Math.round(n.width() / r.width() * t.units * t.step) / t.step;
            r.unbind("click").unbind("mousemove").unbind("mouseenter").unbind("mouseleave");
            r.css("cursor", "default");
            n.css("cursor", "default");
            $.fn.rater.rate(e, t, s)
        }).css("cursor", "pointer");
        n.css("cursor", "pointer")
    })
};
$.fn.rater.rate = function(e, t, n) {
    var r = e.find(".rater-starsOn");
    var i = e.find(".rater-starsOff");
    i.fadeTo(600, .4, function() {
        $.ajax({
            url: "ajax/rating.php",
            data: {
                id: e.attr("rel"),
                rating: n
            },
            dataType: "json",
            complete: function(n) {
                if (n.status == 200) {
                    t.rating = parseFloat(n.responseText);
                    if (t.rating > 0) {
                        t.rating = parseFloat(n.responseText);
                        i.fadeTo(600, .1, function() {
                            r.removeClass("rater-starsHover").width(t.rating * t.size);
                            var n = e.find(".rater-rateCount");
                            n.text(parseInt(n.text()) + 1);
                            e.find(".rater-rating").text(t.rating.toFixed(1));
                            i.fadeTo(600, 1)
                        });
                        $('#rate').modal('show');
                    } else if (t.rating == -1) $('#rate_danger').modal('show');
                } else {
                    alert(n.responseText);
                    r.removeClass("rater-starsHover").width(t.rating * t.size);
                    e.rater(t);
                    i.fadeTo(2200, 1)
                }
            }
        })
    })
}

$(document).ready(function() {
    $('.ratings').rater({
        units: 5,
        step: 1
    });
});