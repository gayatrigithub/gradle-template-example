!function(c){var d=function(a){this.element=c(a)};d.prototype={constructor:d,show:function(){var a=this.element,h=a.closest("ul:not(.dropdown-menu)"),i=a.attr("data-target"),b,j;if(!i){i=a.attr("href");i=i&&i.replace(/.*(?=#[^\s]*$)/,"")}if(a.parent("li").hasClass("active")){return}b=h.find(".active a").last()[0];a.trigger({type:"show",relatedTarget:b});j=c(i);this.activate(a.parent("li"),h);this.activate(j,j.parent(),function(){a.trigger({type:"shown",relatedTarget:b})})},activate:function(j,k,a){var l=k.find("> .active"),b=a&&c.support.transition&&l.hasClass("fade");function i(){l.removeClass("active").find("> .dropdown-menu > .active").removeClass("active");j.addClass("active");if(b){j[0].offsetWidth;j.addClass("in")}else{j.removeClass("fade")}if(j.parent(".dropdown-menu")){j.closest("li.dropdown").addClass("active")}a&&a()}b?l.one(c.support.transition.end,i):i();l.removeClass("in")}};c.fn.tab=function(a){return this.each(function(){var b=c(this),f=b.data("tab");if(!f){b.data("tab",(f=new d(this)))}if(typeof a=="string"){f[a]()}})};c.fn.tab.Constructor=d;c(function(){c("body").on("click.tab.data-api",'[data-toggle="tab"], [data-toggle="pill"]',function(a){a.preventDefault();c(this).tab("show")})})}(window.jQuery);