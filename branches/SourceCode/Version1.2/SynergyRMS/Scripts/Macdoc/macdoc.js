// my debug stuff...
function DBG(c, x) {
    var dbg = jQuery('#dbg'), len, ct;
    if (!dbg.length) {
        dbg = jQuery('#page')
				.append('<div id="dbg" style="width:350px; position:absolute; top:60px; left:580px; color:#ff0000; font-size:10px; background-color:#ffffff; z-index:50;"></div>')
				.find('#dbg');
    }
    len = dbg.children().length;
    if (!len) {
        dbg.append('<div style="border-bottom:1px solid;"><span id="dbgxy" style="float:right;"></span><a id="dbgclear" href="#">Clear</a>&nbsp;/&nbsp;<a id="dbgdisable" href="#">Disable</a><input type="text" id="dbgct" value="" style="padding:0;margin-left:20px;font-size:10px;width:24px;" /></div>')
			.find('#dbgclear').click(function(e) { dbg.children().slice(1).remove(); return false; }).end()
			.find('#dbgdisable').click(function(e) { jqDockDbg = false; dbg.remove(); return false; }).end();
    }
    ct = $('#dbgct').val() || 0;
    if (x || (ct && len > ct)) {
        dbg.children().slice(1, x ? len : len + 1 - ct).remove();
    }
    dbg.append('<div>' + c + '</div>');
}

jQuery(function($) {
    // sort out the button links to the same pages with the other DOCTYPEs...
    var hasindx = (window.location.href.match(/dt=(\d+)/) || ['', '0'])[1]
		, bmark = window.location.href.split('#')[1] || ''
		, exampleTags = { _index: [] }
		, faqsToggle = 0
		, jqBrowserInfo = []
		, docbuttons, SleepSlider, spookopts, spookopts2
		, scrollSpook = function(tgt) {
		    var container = $('#SpookContent')
					, offset = tgt.length && container.length ? tgt.offset().top - container.offset().top : 0;
		    if (offset) {
		        container.animate({ scrollTop: '+=' + offset });
		    }
		    return false;
		};
    if (hasindx == $('#pagebuttons a.pagelink').length - 1) {
        $('#docbuttons ul').attr('title', 'Please switch to a page with a DOCTYPE')
			.find('a').attr('title', '').addClass('docdisabled').removeClass('doclink')
			.click(function() { this.blur(); return false; });
    }
    $('#pagebuttons a.pagelink:eq(' + hasindx + ')').addClass('currentpage')
		.click(function() { this.blur(); return false; });
    // ...and the button links to documentation content...
    docbuttons = $('#docbuttons a.doclink');
    docSetCurrent = function(item) {
        $('#SpookClick-doclink' + docbuttons.index(item.el)).addClass('doclinkCurrent')
				.siblings('.doclinkCurrent').removeClass('doclinkCurrent');
    };
    spookopts = {
        counter: 2
		, button: { browse: { hide: 1}} // disable browse
		, skipSetup: true
		, onOpen: docSetCurrent
		, onChange: docSetCurrent
		, spookClass: 'wideWhite'
    };
    spookopts2 = { // these override spookopts
        displayNav: 'close browse' // restrict to close and browse
		, button: { browse: true} // enable browse
		, width: 700
		, height: 400
		, spookClass: ''
    };
    // extra buttons; need in reverse order because floated right...
    $.each(docbuttons.get().reverse(), function(i) {
        var me = $(this), j = docbuttons.length - 1 - i;
        spookopts.button['doclink' + j] = {
            top: 1
				, html: '<a id="SpookClick-doclink' + j + '" class="SpookClickNav ' + me.attr('class') + '" href="' +
						me.attr('href') + '" title="' + me.attr('title') + '">' + me.text() + '</a>'
        };
    });
    $('#SpookWrap a.doclink').live('click', function() {
        this.blur();
        return $(this).hasClass('doclinkCurrent') ? false : Spook.change(1 * this.id.match(/(\d+)$/)[1]);
    });
    $('.inPageLink').bind('click', function() {
        $('#SpookWrap a.doclink[title=' + this.title + ']').trigger('click');
        return false;
    });
    $('a.scrollInPage').live('click', function() {
        this.blur();
        return scrollSpook($(this).parents('.docpage:first').find('.scroller_' + ($(this).text() || '') + ':first'));
    });
    $('a.openExample').live('click', function() {
        var tgt = $(this).attr('href').match(/#(.*)$/);
        tgt = tgt ? $("a.moreExamples[href$='f=" + tgt[1] + "']") : 0;
        return (tgt && tgt.length) ? Spook.open(tgt[0]) : false;
    });
    // initialise...
    Spook(spookopts);
    docbuttons.Spook({ width: 900, gallery: 'buttons' });
    $('.moreExamples').attr('title', function() {
        return $(this).find('.examplesTitle').text() || this.href;
    }).Spook(spookopts2);
    $('#doclink2options').click(function() {
        var tgt = docbuttons.filter('[title=Options]').get(0);
        this.blur();
        return tgt ? Spook.open(tgt) : false;
    });

    // snapshots...
    $('.floatSnapshot').live('click', function() { return false; })
		.live('hover', function(ev) {
		    var img = $('img', this), xy;
		    if (ev.type == 'mouseout') {
		        img.hide();
		    } else {
		        xy = $(this).position();
		        xy.left += $(this).width();
		        img.css(xy).show();
		    }
		    return false;
		});

    // advanced pics...
    $('#docAdvSeqIndx a').bind('click', function() {
        var img = $('#docAdvSeqPics img');
        if (!$(this).is('.docAdvSeqAct')) {
            img.eq($(this).index()).add(img.not('.hideThis')).toggleClass('hideThis');
            $(this).siblings('.docAdvSeqAct').andSelf().toggleClass('docAdvSeqAct');
        }
        this.blur();
        return false;
    });
    // examples tags...
    $('#dockexamples .docexample').each(function(n) {
        var self = this
				, tags = ($('div.hideThis', this).attr('title') || '').split(',');
        $.each(tags, function() {
            var w = $.trim(this);
            if (w && w.charAt(0) != '_') {
                if (exampleTags[w]) {
                    exampleTags[w] = exampleTags[w].add(self);
                } else {
                    exampleTags._index.push(w);
                    exampleTags[w] = $(self);
                }
            }
        });
    });
    if (exampleTags._index.length) {
        exampleTags._index.sort();
        exampleTags._html = [];
        $.each(exampleTags._index, function() {
            exampleTags._html.push("<a href='#' class='docexampletag'><span>" + this + '</span><em>(' + exampleTags[this].length + ')</em></a>');
        });
        $('#docexampletags td').html(exampleTags._html.join(' '))
			.find('a.docexampletag').live('click', function() {
			    var on = $(this).toggleClass('taggedon').hasClass('taggedon') ? 1 : -1;
			    exampleTags[$('span', this).text()].each(function() {
			        var ct = 1 * ((this.className.match(/taghilite_ct(\d+)/) || [])[1] || 0);
			        this.className = 'docexample' + ((ct > 1 || on > 0) ? ' taghilite taghilite_ct' + (ct + on) : '');
			    });
			    return false;
			});
    }

    /*******************************
    *  CONTROLLER / DEMONSTRATOR  *
    *******************************/
    // custom easing function for animating the 'receipt of event' indicators (dockshow/sleep/wake)...
    $.easing.slowfast = function(p, n, firstNum, diff) {
        return firstNum + (diff * Math.pow(p, 3));
    };
    // custom function to bring back the SleepSlider menu on mouseover...
    SleepSlider = function() { $(this).trigger('docknudge'); };
    // listen for dockshow, docksleep and dockwake...
    $('#menu').bind('dockshow docksleep dockwake', function(ev, param) {
        var Self = $(this);
        $('#controllerEvent_' + param).stop()
				.siblings('img').stop().css({ opacity: 0, zIndex: 2 }).end().css({ opacity: 1, zIndex: 5 })
				.animate({ opacity: 0 }, 3000, 'slowfast', function() { $(this).css({ zIndex: 2 }); });
        if (ev.type == 'docksleep') {
            $('#controllerAsleep_' + param).siblings('.controllerAsleep').hide().end().show();
            if (Self.hasClass('autowake')) { // ...applies to either 'sleep' or 'freeze'
                Self.trigger('docknudge');
            } else if (Self.hasClass(param + 'slide')) {
                $('.jqDock', Self).stop().animate({ left: -Self.width() }, 1000);
                Self.one('mouseover', SleepSlider);
            }
        } else { // ...is dockwake or dockshow...
            $('.controllerAsleep').hide();
            if (param == 'wake' && Self.hasClass('sleepslide')) {
                $('.jqDock', Self.unbind('mouseover', SleepSlider)).stop().animate({ left: 0 }, 600);
            }
        }
    });
    // if GoVertical is clicked, set some dock options...
    $('#controllerGoVertical').click(function() {
        var v;
        if (this.checked) {
            v = $('input[name=align]:checked', this.form).val();
            if (!v || !{ left: 1, center: 1, right: 1}[v]) {
                $('input[value=center]').trigger('click');
            }
        }
    });
    // if SleepSlide is clicked, set some dock options...
    $('#controllerSleepSlide').click(function() {
        var el, v;
        if (this.checked) {
            $('#controllerAutoWake').each(function() { this.checked = false; });
            el = $('input', this.form)
					.filter('[value=left]').trigger('click').end()
					.filter('[name=size]').val('').end()
					.filter('[name=idle]');
            v = 1 * el.val();
            el.val(isNaN(v) || v < 3000 ? 5000 : v);
        }
    });
    // on clicking 'apply'...
    $('#controller form').submit(function() {
        var op = {}, str = []
				, fn = { // for the custom onReady/onSleep/onWake advanced options...
				    askUser: function(name) {
				        var capName = { freeze: 'Sleep', thaw: 'Wake'}[name] || name.substr(0, 1).toUpperCase() + name.substr(1)
								, rtn = window.confirm('on' + capName + '("' + name + '") :\nPress OK to return TRUE, and Cancel to return FALSE.');
				        if (name == 'ready' && !rtn) { // false from an onReady puts the dock to sleep
				            $('#controllerAsleep_sleep').show();
				        }
				        return rtn;
				    }
					, returnFalse: function(name) {
					    if (name == 'ready') { // false from an onReady puts the dock to sleep
					        $('#controllerAsleep_sleep').show();
					    }
					    return false;
					}
				};
        // check the GoVertical && SleepSlide custom options...
        $('#controllerGoVertical, #controllerSleepSlide').triggerHandler('click');
        // find all set options...
        $('.cvalues :input', this).each(function() {
            var f = $(this), k = f.attr('name'), v = f.val(), n = 1 * v, V
						, onFn = { onReady: 1, onSleep: 1, onWake: 1}[k];
            if (k && v) {
                if (!f.is(':checkbox,:radio') || f.is(':checked')) {
                    V = v === 'true' || (onFn ? fn[v] : (isNaN(n) ? v : n));
                    op[k] = V;
                    str.push(k + ':' + (onFn || V === true ? v : (isNaN(n) ? "'" + V + "'" : n)));
                }
            }
        });
        // hide and destroy the current menu, and reset the Controller...
        $('#menu').css({ visibility: 'hidden' }).jqDock('destroy');
        $('.controllerAsleep').hide();
        // set the class for the menu's required orientation and (re)initialise the dock...
        $('#menu').toggleClass('vertical', !!({ left: 1, center: 1, right: 1}[op.align || ''])).jqDock(op);
        // reset classes for the custom demonstrator options...
        $('.csettings :input', this).each(function() {
            $('#menu').toggleClass(this.name, this.checked);
        });
        // show the dock's initialisation string...
        $('#controllerCmd').val("$('#menu').jqDock(" + (str.length ? '{' + str.join(', ') + '}' : '') + ');');
        return false;
    }) //end of submit()
		.find('.cdestroy').click(function() {
		    this.blur();
		    // destroy the dock and clear classes, etc...
		    $('#controllerCmd').val('$("#menu").jqDock("destroy");');
		    $('#menu').jqDock('destroy').removeAttr('class');
		    $('.controllerAsleep').hide();
		    return false;
		})
			.siblings('input').click(function() { // just blur() any buttons...
			    this.blur();
			}).end()
			.siblings('a.cmore').click(function() { // slide down/up the more/less options...
			    this.blur();
			    var cp = $('#controllerPlus')
						, show = cp.is(':hidden')
						, cb = function() { $('#controllerPlus').toggleClass('chidden', !show); };
			    $(this).toggleClass('cless', show);
			    if (!show) { cb(); }
			    cp.slideToggle(show ? cb : null);
			    return false;
			}).end().end()
		.find('.ceventsRecv img').css({ opacity: 0, visibility: 'visible' }).end()
		.find('.ceventsTrig').click(function() { // trigger a dockfreeze, dockidle or docknudge...
		    var ev = this.id.split('_')[1];
		    this.blur();
		    $('#controllerCmd').val('$("#menu").trigger("' + ev + '");');
		    $('#menu').trigger(ev);
		    return false;
		}).end()
		.find('#controllerExpander a').click(function(ev) {
		    var i = $(this).index();
		    this.blur();
		    $('#controllerCmd').val('$("#menu img").eq(' + i + ').jqDock("expand");');
		    $('#menu img').eq(i).jqDock('expand');
		    return false;
		}).each(function() {
		    var img = $('#menu img:eq(' + $(this).index() + ')');
		    $(this).attr('title', 'Click to expand "' + (img.attr('title') || img.parent('a').attr('title') || '') + '" ...');
		}).end()
		.submit(); // ...initial display of the dock with all 'factory' defaults
    //...end of CONTROLLER stuff

    // browser info...
    $.each($.browser, function(k, v) { jqBrowserInfo.push(typeof v == 'boolean' ? k : k + ' : ' + v); });
    // faqs list collapsibles...
    $('.faqsq').bind('click', function() { $(this).next().slideToggle(); });
    $('.faqsqall').bind('click', function() { $(this).parent().parent().find('.faqsq').next()[(++faqsToggle % 2) ? 'slideUp' : 'slideDown'](); });
    // cheat to get Strict DOCTYPE to validate...
    $('a.targetBlank').attr({ target: '_blank' });
    // page info...
    $('#jqDockVersion').text(' v' + $.jqDock.version);
    $('#eop_jqv').text($().jquery);
    $('#eop_jqbi').text(jqBrowserInfo.join(', '));
    $('#eop_box').text($.boxModel ? 'Yes' : 'No');
    $('#eop_ua').text(window.navigator.userAgent);
    //bookmark...
    bmark = bmark ? docbuttons.filter('[href$=#' + bmark + ']') : [];
    if (bmark.length) {
        Spook.welcome(bmark[0]);
    }
});
