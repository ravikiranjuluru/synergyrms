/*
Spook version 1.0
*/
(function(f, d) {
    if (!f.Spook) {
        var g = f.Spook = function(a) { g.init(a) }, i = function() { var a = arguments[0] || {}, b = 1, c = arguments.length, e = false, h; if (typeof a === "boolean") { e = a; a = arguments[1] || {}; ++b } if (typeof a !== "object" && Object.prototype.toString.call(a) !== "[object Function]") a = {}; for (; b < c; b++) if ((h = arguments[b]) !== null) for (var j in h) { var m = a[j], l = h[j]; if (a !== l) if (e && l && typeof l === "object" && !l.nodeType) a[j] = i(e, m || (l.constructor == Array ? [] : {}), l); else if (l !== d) a[j] = l } return a }, k = function() { }; i(g, { options: {},
            defaults: { animate: true, animateFade: true, animDuration: 0.35, animSequence: "sync", audio: null, audioDetect: true, autoplayMovies: true, autoDimensions: false, autoSize: true, autoStack: true, autoTitle: false, button: { close: { top: 1 }, next: {}, previous: {}, play: {}, pause: {}, caption: {}, browse: { top: 1} }, captions: true, captionAtTop: true, captionAuto: false, captionDelay: 3, captionOpacity: 0.8, captionSpeed: 0.5, captionTag: "cite", captionToggle: true, classPrefix: "spook", compatible: "", continuous: false, counter: 1, counterFit: true, displayNav: true,
                ease: function(a) { return 1 + Math.pow(a - 1, 3) }, enableKeys: false, fadeDuration: 0.35, flashParams: { bgcolor: "#000000", allowfullscreen: true }, flashVars: {}, flashVersion: "9.0.115", handleUnsupported: "link", hideTags: "select,object,embed,canvas", implode: true, initialHeight: 160, initialWidth: 320, inlineCopy: false, keys: { "27": "close", "81": "close", "88": "close", "32": "toggle", "37": "previous", "39": "next" }, language: "en", maskClick: true, maskColor: "#000000", maskOpacity: 0.8, modal: true, mode: "", onBeforeChange: null, onBeforeClose: null,
                onBeforeFinish: null, onBeforeOpen: null, onChange: null, onClose: null, onFinish: null, onOpen: null, onPlayerAppend: null, onPlayerRemove: null, padding: 20, path: false, paused: false, position: "mc", resizeDuration: 0.35, rtl: false, runtime: null, showMovieControls: true, skipSetup: false, slideshowDelay: 0, spookClass: "", welcome: false, xy: {}
            }, active: false, animations: [], blockClick: 0, cache: {}, cacheCt: 0, captionTimer: null, current: -1, dimensions: {}, expando: "SpookCacheKey", externals: {}, gallery: [], lang: { en: { of: "of", loading: "loading", cancel: "Cancel",
                next: "Next", previous: "Previous", play: "Play", pause: "Pause", close: "Close", first: "First", last: "Last", caption: "Caption", browse: "Browse To", unsupported: "Your browser does not appear to have the necessary plugin to be able to view this content..."}
            }, lwInterval: null, Player: null, players: {}, plugins: { fla: { name: "Flash", url: "http://www.adobe.com/products/flashplayer/", nav: "Shockwave Flash", axo: "ShockwaveFlash.ShockwaveFlash" }, qt: { name: "QuickTime", url: "http://www.apple.com/quicktime/download/", nav: "QuickTime",
                axo: "QuickTime.QuickTime"
            }, wmp: { name: "Windows Media Player", url: "http://www.microsoft.com/windows/windowsmedia/player/download/", nav: "Windows Media", axo: "wmplayer.ocx" }, f4m: { name: "Flip4Mac", url: "http://www.flip4mac.com/wmv_download.htm", nav: "Flip4Mac", axo: "Flip4Mac.Dummy"}
            }, regex: { unsupported: /^unsupported-.+/, param: /\s*([a-z_]*?)\s*=\s*(.+)\s*/, path: /(.*\/)?spook[^\\\/]*?\.js/i, position: /^(t|m|b)(l|c|r)$/ }, resizeID: null, slideshow: null, support: {}, temp_opts: null, theStack: [], thisPage: "", thrown: [], troubleCache: [],
            autoLinks: function(a) { var b = this.regex; return this.Find(null, function(c) { return b.rel.test(c.getAttribute("rel") || "") || b.cls && b.cls.test(c.className || "") }, a || document) }, buildCacheObj: function(a, b) {
                var c = a.href; c = { el: a, title: a.getAttribute("title"), content: c, url: c }; var e = [{}, {}], h; b = this.Apply(true, {}, b || {}); for (h in b) e[{ player: 1, title: 1, height: 1, width: 1, gallery: 1, caption: 1}[h] || 0][h] = b[h]; this.Apply(true, c, e[1], { options: e[0] }); this.Apply(true, c, this.inspectRel(c.el), this.inspectClass(c.el)); this.getCaption(c);
                this.checkOpts(c.options); c.player = !c.player || c.player == "player" ? this.getPlayer(c.content) : this.checkPlayer(c.player); return c
            }, caption: function(a, b, c) {
                var e = this.Player, h = this.options, j = 1; if (e && this.Get("SpookCaptionInner").innerHTML) {
                    if (typeof a != "boolean") { c = b; b = a; a = false } if (!a && h.captionToggle && this.captionTimer) this.captionClose(); else {
                        c = c === 0 ? c : c || h.captionSpeed; if (b = b === 0 ? b : b || h.captionDelay) b += c; if (this.captionTimer) {
                            if (this.captionTimer !== true) {
                                f.clearTimeout(this.captionTimer); this.captionTimer =
null
                            } j = 0
                        } this.captionTimer = b ? f.setTimeout(this.CB(function() { this.captionClose() }), b * 1E3) : true; if (j) { a = [{ el: this.Get("SpookCaption"), prop: "height", to: this.Get("SpookCaptionHide").offsetHeight}]; e.caption(a[0].to, a); this.Animate(a, { duration: c }); a = null } 
                    } 
                } return false
            }, captionClose: function(a) {
                var b; if (this.captionTimer) {
                    b = [{ el: this.Get("SpookCaption"), prop: "height", to: 0}]; this.captionTimer !== true && f.clearTimeout(this.captionTimer); this.captionTimer = null; if (this.Player) {
                        this.Player.caption(0, b); if (a ===
d) a = this.options.captionSpeed; a ? this.Animate(b, { duration: a }) : this.Each(b, function(c, e) { e.el.style[e.prop] = e.to + "px" })
                    } b = null
                } return false
            }, change: function(a, b) { var c = this.defaults, e = c.onBeforeChange; if (this.gallery) { if (a < -1) a = this.gallery.length - 1; if (this.gallery[a] || !b && this.options.continuous) { this.gallery[a] || (a = a < 0 ? this.gallery.length - 1 : 0); if (b || !e || e(this.getCurrent(), this.gallery[a]) !== false) { this.slideshow.stop(); this.current = a; c.onChange && c.onChange(this.getCurrent()); this.loadContent() } } } return false },
            changeContent: function() { var a = this.getCurrent(); this.closePlayer(); this.options = this.Apply(true, {}, this.defaults, a.options || {}, this.temp_opts || {}); if (this.options.runtime) this.Apply(true, this.options, this.options.runtime() || {}); this.Player = new this.players[a.player](a); this.Class(this.sWrapEl(), (this.options.spookClass || "") + " SpookPlayer-" + this.Player.name); this.support.clientIE6 && this.sFixPNGs(); this.loadWait(); this.preload() }, checkOpts: function(a) {
                var b = !a, c, e, h, j, m = this.Int; a = a || this.defaults;
                c = a.padding; if (c !== d) { e = {}; j = function(l) { return /^\d+%$/.test(c[l].toString()) ? c[l] : Math.max(0, m(c[l])) }; if ({ number: 1, string: 1}[typeof c]) c = this.Trim(c.toString()).split(/[,\s]+/); if (c.constructor == Array) { if (h = c.length) { e.top = j(0); e.right = h > 1 ? j(1) : e.top; e.bottom = h > 2 ? j(2) : e.top; e.left = h > 3 ? j(3) : e.right } } else for (h in { top: 0, right: 0, bottom: 0, left: 0 }) if (c[h] !== d) e[h] = j(h); else if (b) e[h] = 0; a.padding = this.Apply({}, e); j = e = null } a = a.button; if (a !== d) for (h in a) if (a[h] === true) a[h] = { hide: 0 }; else if (a[h] === false) a[h] =
{ hide: 1}
            }, checkPlayer: function(a) { var b = this.players[a]; b = b ? b.prototype.dependency : ""; return !b || this.plugins[b].ok ? a : "unsupported-" + b }, close: function(a) {
                var b = this.defaults.onBeforeClose; if (!this.active || !b || b(this.getCurrent()) !== false) {
                    if (a === true || !this.active) this.theStack = []; else { if (this.active && this.slideshow) { this.slideshow.stop(); this.slideshow = null } if (this.theStack.length) return this.change(this.stackPop(), true) } if (this.active) {
                        this.active = false; this.listenKeys(); this.options.implode ? this.sImplode(this.CB(this.closure)) :
this.closure()
                    } 
                } return false
            }, closePlayer: function() { var a = this.Player; if (a) { a.remove(); this.UnClass(this.sWrapEl(), (this.options.spookClass || "") + " SpookPlayer-" + a.name) } this.RemoveChildren(this.sBodyEl()); this.Player = null }, closure: function() { var a = this.defaults.onClose; this.closePlayer(); this.sOnClose(); this.temp_opts = null; this.options = this.Apply(true, {}, this.defaults); this.toggleTrouble(); a && a(this.getCurrent()); f.focus() }, contentReady: function() { var a = this.Player; if (a) { a.append(); this.finishContent() } },
            eventClose: function() { this.blockClick || this.close() }, eventKey: function(a) { var b = this.defaults.keys[this.Lib.EventKey(a).toString()]; if (b && this[b]) { this.Lib.EventPrevent(a); this[b]() } }, eventOpen: function(a) { var b; if (this.blockClick) this.Lib.EventPrevent(a); else { this.blockClick = 1; for (b = this.Lib.EventTarget(a); b && !this.Lib.Expando(b) && b.parentNode; ) b = b.parentNode; if (b) { this.open(b); this.gallery.length && this.Lib.EventPrevent(a) } else this.blockClick = 0 } }, eventResize: function() {
                if (this.resizeID) {
                    f.clearTimeout(this.resizeID);
                    this.resizeID = null
                } if (this.active && this.sOnWindowResize) this.resizeID = f.setTimeout(this.CB(this.sOnWindowResize), 50)
            }, filterGallery: function(a, b, c) {
                for (var e = this.defaults.onBeforeOpen, h, j = a.length, m; j--; ) {
                    m = a[j]; m.player = !m.player || m.player == "player" ? this.getPlayer(m.content) : this.checkPlayer(m.player); if (m.player == "unsupported") h = true; else if (this.regex.unsupported.test(m.player)) { h = (m.options || {}).handleUnsupported || this.defaults.handleUnsupported; h = !(h == "link" && this.sMessage && this.sMessage(m)) } else if (this.players[m.player]) h =
!this.players[m.player].prototype.preInst(m); else { this.Throw("Unknown player : " + m.player, true); h = true } if (h) { a.splice(j, 1); if (j < b) --b; else if (j == b) b = j > 0 ? j - 1 : j } 
                } if (a.length) { if (c) b = Math.max(0, Math.min(c, a.length) - 1); if (e && e(a[b]) === false) a = []; else { this.gallery = this.Apply(true, [], a); this.current = b } } return !!a.length
            }, finishContent: function() {
                var a = this.defaults, b = a.onBeforeFinish, c = this.options.captionAuto, e = this.Player; if (e) {
                    b && b(this.getCurrent()); e.onLoad(); this.sToggleLoading(false, this.Empty); this.slideshow &&
this.slideshow.play(!this.isPaused() && this.hasNext()); this.listenKeys(true); if (c) this.caption(c === true ? 0 : c); a.onFinish && a.onFinish(this.getCurrent())
                } 
            }, getCaption: function(a) { var b = this.defaults; if (b.captions) { b = a.options.captionTag === d ? b.captionTag : a.options.captionTag; if (a.el && b) { b = this.Find(b, null, a.el); if (b = b[0] ? b[0].innerHTML : "") a.caption = b } } }, getCurrent: function() { return this.current > -1 ? this.gallery[this.current] : null }, getPlayer: function(a) {
                var b = this.players, c = 0, e = { p: [], u: [] }, h = "", j = {}, m; for (m in b) {
                    b[m].prototype.detect(e,
a); if (e.p[0]) break
                } for (; !h && c < e.p.length; ) h = e.p[c++] || ""; if (!h && e.u.length) { h = "unsupported"; for (c = 0; c < e.u.length; ) { m = "-" + e.u[c++]; if (!j[m]) { j[m] = 1; h += m } } } return h || "page"
            }, hasNext: function() { var a = this.gallery.length; return a > 1 && (this.options.continuous || this.current < a - 1) }, init: function(a) {
                if (this.Adapter) {
                    this.Lib = new this.Adapter(this.expando); this.Features(); this.initSet(a || {}); this.initVars(); this.initPlugins(); this.initHandlers(); this.Lib.DOMReady(function() { g.initDOM() }); this.defaults.welcome &&
this.welcome(this.defaults.welcome)
                } else this.Throw("No adapter code found"); this.initialised = true; this.init = k
            }, initDOM: function() { this.FeaturesDR(); this.sInitSkin(); this.language(); this.Lib.EventAdd(f, "resize", this.handleResize, 50); this.defaults.skipSetup || this.setup() }, initHandlers: function() { for (var a = ["Close", "Key", "Open", "Resize"], b = a.length; b--; ) this["handle" + a[b]] = this.CB(this["event" + a[b]]) }, initPlugins: function() {
                for (var a = navigator.plugins, b = a ? a.length : 0, c = "", e = this.plugins, h, j = function(m) {
                    var l;
                    try { l = new ActiveXObject(m) } catch (o) { } return !!l
                }; b--; ) c += a[b].name; for (h in e) e[h].ok = c ? c.indexOf(e[h].nav) > 1 : j(e[h].axo); if (e.wmp.ok && e.f4m.ok) e.wmp.ok = false; j = null
            }, initSet: function(a) { this.checkOpts(); this.checkOpts(a); this.Apply(true, this.defaults, a) }, initVars: function() {
                var a = this.defaults, b = this.regex, c = (a.classPrefix || "").toString().replace(/_+$/, "") || "", e, h; this.thisPage = f.location.href.replace(/#.*$/, ""); b.cls = c ? new RegExp("(^|\\s)" + c + "(_|\\s|$)", "") : false; a.classPrefix = c ? c + "_" : false; b.rel =
"spook"; if (a.compatible) { c = a.compatible.toString().split(/[\s,]+/); for (e = c.length; e--; ) if (/^(light|shadow)box$/i.test(c[e])) b.rel += "|" + c[e] } b.gallery = new RegExp("^(" + b.rel + ")\\[(.*?)\\]", "i"); b.rel = new RegExp("^" + b.rel, "i"); a.audio = null; if (a.path === false) { c = this.Find("script"); for (e = 0; a.path === false && e < c.length; e++) if (h = b.path.exec(c[e].src || "")) a.path = h[1] || ""; if (a.path === false) a.path = "" } else a.path = a.path.toString().replace(/\/$/, "") + "/"
            }, inspectClass: function(a) {
                var b = { options: {} }, c = this.defaults.classPrefix,
e, h, j = 0, m, l, o, n; if (a.className && c) {
                    e = c.length; for (h = a.className.split(/\s+/); j < h.length; j++) {
                        o = h[j]; if (o.indexOf(c) === 0) {
                            o = o.substr(e).split("_"); for (m = o.length; m--; ) if (o[m]) {
                                l = o[m].charAt(0); n = o[m].substr(1); switch (l) {
                                    case "f": this.externals[n] || (this.externals[n] = new Function("x", "return " + n + " ? " + n + "(x) : false")); this.Apply(true, b, this.externals[n](a) || {}); break; case "w": case "h": if (/^\d+$/.test(n)) b[{ w: "width", h: "height"}[l]] = n; break; case "p": b.player = n; break; case "g": case "t": case "c": b[{ g: "gallery",
                                        t: "title", c: "caption"}[l]] = n.replace("-", " ").replace("  ", " - "); break; case "s": case "m": b.options[{ s: "spookClass", m: "mode"}[l]] = n; break; case "a": if (n == "udio") b.options.audio = true; break; case "r": b.options.runtime = new Function("", "return " + n + " ? " + n + "() : {}"); break; case "x": if (l = n.match(/^(\d+)?y(\d+)?([tmb][lcr])?$/)) { if (l[1] || l[2]) { n = {}; if (l[1]) n.left = this.Int(l[1]); if (l[2]) n.top = this.Int(l[2]); this.Apply(true, b.options, { xy: n }) } if (l[3]) b.options.position = l[3] } break; default: 
                                } 
                            } 
                        } 
                    } 
                } return b
            }, inspectRel: function(a) {
                var b =
this.regex, c = a.getAttribute("rel"); a = {}; var e = 0, h; if (c) { if (h = c.match(b.gallery)) a.gallery = h[2]; for (c = c.split(";"); e < c.length; e++) if (h = c[e].match(b.param)) if (h[1] == "options") a.options = (new Function("return " + h[2]))(); else a[h[1]] = h[2] } if (a.mode !== d) { if (!a.options) a.options = {}; a.options.mode = a.mode; a.mode = null; delete a.mode } return a
            }, isActive: function() { return !!this.active }, isPaused: function() { return this.slideshow && this.slideshow.paused }, language: function(a) {
                var b = this.defaults, c = a || b.language || "en",
e; if (!this.lang[c]) { this.Throw("Language '" + c + "' not found"); if (c != "en" && !this.lang.en) this.Throw("Language 'en' not found"); else c = "en" } if (a = this.lang[c]) { b.language = c; for (e in a) if (b = this.Get("SpookClick-" + e) || this.Get("SpookLang-" + e)) if ((b.className || "").indexOf("SpookLangSetText") > -1) b.innerHTML = a[e]; else b.title = a[e] } return false
            }, listenKeys: function(a) { if (this.options.enableKeys) this.Lib["Event" + (a ? "Add" : "Remove")](document, "keydown", this.handleKey) }, loadContent: function() {
                var a = this.getCurrent(),
b; if (a) { b = a.player; if (!b || b == "player" || !this.players[b]) this.Throw("Unknown player: " + b, true); else if (this.Player) { this.listenKeys(); this.sToggleLoading(true, this.Empty); this.sHideBars(true, this.CB(this.changeContent)) } else { this.Player = new this.players[b](a); this.Class(this.sWrapEl(), (this.options.spookClass || "") + " SpookPlayer-" + this.Player.name); this.support.clientIE6 && this.sFixPNGs(); this.sToggleLoading(true); this.Show(this.sBoxEl()); this.loadWait(); this.preload() } this.blockClick = 0 } 
            }, loadWait: function() {
                var a =
this.Player; if (a) if (a.ready) this.sOnReady(); else this.lwInterval = f.setInterval(this.CB(this.loadWaitCheck), 100)
            }, loadWaitCheck: function() { var a = this.Player; if (!a || a.ready) { f.clearInterval(this.lwInterval); this.lwInterval = null; a && this.sOnReady() } }, mode: function(a) { var b = this.Player; if (b && a && a != "_default" && a != this.options.mode && b.modes[a]) { this.gallery[this.current].options.mode = a; this.slideshow.stop(); this.loadContent() } return false }, newGallery: function(a, b, c) {
                var e = a.length === d, h = false, j = 0, m, l, o =
[]; m = 0; for (var n, p; m < (e ? 1 : a.length); m++) { if ((p = e ? a : a[m]) && typeof p == "string") p = this.Get(p.replace(/^#/, "")) || false; if (p) if ((n = this.Lib.Expando(p)) && this.cache[n]) o.push(this.cache[n]); else if (this.IsLink(p)) o.push(this.buildCacheObj(p, b || {})); else p.content && o.push(this.Apply(true, { options: {} }, p)) } if (e) { e = o.length ? o[0].gallery || 0 : a.gallery || 0; m = o.length ? o[0].el || 0 : 0; if (e) for (l in this.cache) { a = this.cache[l]; if (a.gallery && a.gallery == e) { if (m && m == a.el) { o.shift(); j = o.length; m = null } o.push(a) } } } if (this.filterGallery(o,
j, c)) { this.temp_opts = this.Apply({}, b || {}); this.openGallery(); h = true } return h
            }, next: function() { return this.change(this.current + 1) }, open: function(a, b, c, e) { var h = 0, j; if (typeof a == "string") a = this.Get(a.replace(/^#/, "")) || false; if (a) { j = !!this.Player; c = this.Int(c); e = typeof e == "boolean" ? e : this.defaults.autoStack; if (j) { h = this.slideshow.stop(!e); e && this.stackPush() } if (!this.newGallery(a, b, c) && j) { if (e) this.current = this.stackPop(); h && this.slideshow.play(true) } } return false }, openGallery: function() {
                var a = this.defaults.onOpen,
b = this.getCurrent(), c; if (this.active) this.loadContent(); else { this.options = this.Apply(true, {}, this.defaults, b.options || {}, this.temp_opts || {}); if (this.options.runtime) this.Apply(true, this.options, this.options.runtime() || {}); c = this.options; a && a(b); this.toggleTrouble(true); a = c.autoDimensions; this.sOnOpen({ w: a && b.width ? b.width : c.initialWidth, h: a && b.height ? b.height : c.initialHeight }); this.active = true } 
            }, pause: function() { this.slideshow.pause() && this.sOnPause && this.sOnPause(); return false }, play: function() {
                this.slideshow.play(this.hasNext()) &&
this.sOnPlay && this.sOnPlay(); return false
            }, preload: function() { var a = this.gallery, b = a.length, c = this.current, e; if (b > 1) { e = (c + 1) % b; b = c ? c - 1 : b - 1; this.players[a[e].player].prototype.preloader(a[e]); e != b && this.players[a[b].player].prototype.preloader(a[b]) } }, previous: function() { return this.change(this.current - 1) }, reposition: function(a, b) { if (a) { for (var c in { position: 1, padding: 1 }) if (a[c] !== d) this.options[c] = a[c]; this.sResizeContent(b || null) } return false }, resize: function(a, b) {
                var c = this.Player; if (c) {
                    a = (a = this.Int(a)) &&
a != c.whBox.w ? a : 0; b = (b = this.Int(b)) && b != c.whBox.h ? b : 0; if (a || b) { c.setWH(a, b); this.slideshow.stop(); this.loadContent() } 
                } return false
            }, setup: function(a, b) { var c = 0, e, h, j; if (a) { if (typeof a == "string") a = this.Get(a.replace(/^#/, "")) || false } else a = this.autoLinks(); if (a !== false) for (h = a.length === d; c < (h ? 1 : a.length); c++) { e = h ? a : a[c]; j = this.Lib.Expando(e); if (!j) { j = "x" + ++this.cacheCt; this.Lib.Expando(e, j); this.Lib.EventAdd(e, "click", this.handleOpen) } this.cache[j] = this.buildCacheObj(e, b); this.Class(e, "Spooked") } },
            setDimensions: function(a) {
                this.checkOpts(this.options); var b = a.player ? this.Player : 0, c = this.options, e = this.regex.position.exec(c.position.toLowerCase()) || [0, "m", "c"], h = this.Each(c.padding, function(s, r, t) { t[s] = /^\d+%$/.test(r.toString()) ? Math.floor(a.vp[{ top: "h", bottom: "h"}[s] || "w"] * this.Int(r) / 100) : r }, {}), j = { w: h.left + h.right + a.lr, h: h.top + h.bottom + a.tb }, m = { w: a.box.w + (b ? b.whAdjust.w : 0), h: a.box.h + (b ? b.whAdjust.h : 0) }, l = { w: Math.min(a.vp.w - j.w, m.w), h: Math.min(a.vp.h - j.h, m.h) }; m = m.w > l.w || m.h > l.h || b && (b.whMedia.w >
l.w || b.whMedia.h > l.h); b = b ? b.getResize(l, this.Apply({}, a, { oversized: m, pad: h, xtra: j })) : {}; var o = c.xy && c.xy.top !== d ? this.Int(c.xy.top) - h.top : false; c = c.xy && c.xy.left !== d ? this.Int(c.xy.left) - h.left : false; var n = l.h + j.h; j = l.w + j.w; var p = a.vp.h - n, q = a.vp.w - j; if (o !== false && p) { if (e[1] == "b") o -= n; else if (e[1] == "m") o -= Math.ceil(n / 2); o = Math.min(p, Math.max(0, o)) + h.top } else { o = e[1] == "t" ? 0 : p; if (e[1] == "m") o = Math.floor(o / 2); o += h.top } if (c !== false && q) {
                    if (e[2] == "r") c -= j; else if (e[2] == "c") c -= Math.ceil(j / 2); c = Math.min(q, Math.max(0,
c)) + h.left
                } else { c = e[2] == "l" ? 0 : q; if (e[2] == "c") c = Math.floor(c / 2); c += h.left } this.dimensions = this.Apply({ outer: { w: l.w + a.lr, h: l.h + a.tb }, inner: { w: l.w, h: l.h }, top: o, left: c, oversized: m }, b); e = h = j = m = l = b = null
            }, stack: function(a, b, c, e) { if (e) this.theStack = []; return this.open(a, b, c, !e) }, stackPop: function() { var a = this.theStack.pop(); this.gallery = a[1]; this.slideshow = a[2]; this.temp_opts = a[3]; return a[0] }, stackPush: function() {
                this.theStack.push([this.current, this.gallery, this.slideshow, this.temp_opts]); this.slideshow =
null
            }, toggle: function() { return this[this.isPaused() ? "play" : "pause"]() }, toggleTrouble: function(a) { if (a) this.troubleCache = this.Each(this.Find(this.defaults.hideTags), function(b, c, e) { b = c.style.visibility || "visible"; if (b != "hidden") { e.push([c, b]); c.style.visibility = "hidden" } }, []); else this.Each(this.troubleCache, function(b, c) { c[0].style.visibility = c[1] }) }, unset: function(a) {
                var b = 0, c, e; if (a === d) {
                    for (; b < this.cache.length; b++) if (c = this.cache[b].el) {
                        this.Lib.EventRemove(c, "click", this.handleOpen); this.Lib.Expando(c,
false)
                    } this.cache = {}
                } else { if (typeof a == "string") a = (a = this.Get(a.replace(/^#/, "")) || 0) ? [a] : a; if (a) for (; b < a.length; b++) { c = a[b]; if (e = this.Lib.Expando(c)) { this.Lib.EventRemove(c, "click", this.handleOpen); this.cache[e] && delete this.cache[e]; this.Lib.Expando(c, false) } } } return false
            }, welcome: function(a, b, c) { var e = this.CB(function() { this.open(a, b, c); this.welcome = k }); this.Lib.DOMReady(function() { f.setTimeout(e, 10) }) }, Animate: function(a, b) {
                b = b || {}; for (var c = this.options, e = [], h = 0, j = { item: 0, duration: 0 }, m = (b.duration ||
0) * 1E3, l = !b.sequential, o = !!b.callback, n = 0, p, q, s, r, t; n < a.length; n++) { p = a[n]; q = parseFloat(this.Lib.StyleGet(p.el, p.prop)); q = isNaN(q) ? 0 : q; s = p.to - q; r = p.prop == "opacity"; t = !r && !c.animate || r && !c.animateFade ? 0 : m; if (s !== 0) { if (!l || t >= j.duration) j = { item: h, duration: t }; e[h++] = this.Apply({}, p, { opaq: r, duration: t, from: q, delta: s, ease: c.ease }) } } if (h) if (l) { for (n = 0; n < h; n++) n != j.item && this.AnimateNow(e[n]); this.AnimateNow(e[j.item], o ? b.callback : o) } else {
                    for (n = 0; n < h; n++) this.animations.push([e[n], n == j.item ? o ? b.callback :
o : this.CB(this.AnimateNext)]); this.AnimateNext()
                } else o && b.callback()
            }, AnimateNext: function() { var a, b; if (this.animations.length) { a = this.animations[0][0]; b = this.animations[0][1]; this.animations = this.animations.slice(1) || []; this.AnimateNow(a, b) } }, AnimateNow: function(a, b) {
                var c = this.Apply({}, a), e = this.CB(function(l) { l = c.from + l * c.delta; if (c.opaq) this.Opaque(c.el, l); else c.el.style[c.prop] = l + "px" }); if (c.duration) {
                    var h = (new Date).getTime(), j = h + c.duration, m; m = f.setInterval(function() {
                        var l = (new Date).getTime();
                        if (l >= j) { f.clearInterval(m); e(1); b && b() } else e(c.ease((l - h) / c.duration))
                    }, 10)
                } else { e(1); b && b() } 
            }, Apply: i, CB: function(a, b) { var c = b || this; return a ? function() { a.apply(c, arguments) } : k }, Class: function(a, b, c) { b = this.Trim(b); if (a && b) this.Each(a.tagName ? [a] : a, function(e, h) { if (h.tagName) { var j = c ? [] : b.split(/\s+/), m = " " + b + " "; if (!c || b != "*") this.Each((h.className || "").split(/\s+/), function(l, o) { var n = " " + o + " "; if (o && m.indexOf(n) < 0) { j.push(o); m += n } }); h.className = j.join(" ") } }) }, Debug: function(a, b) {
                if (this.defaults.debug) {
                    var c =
this.Get("SpookDebug"), e = ""; if (a === true) b = a; else e = '<div style="border-bottom:1px solid #999;">' + a.join("<br />") + "</div>"; if (!c) { c = document.createElement("div"); c.id = "SpookDebug"; document.body.appendChild(c); b = true } if (b) c.innerHTML = '<a href="#" onclick="return Spook.Debug(true);" style="float:right;">Clear</a>'; if (e) c.innerHTML += e
                } return false
            }, Each: function(a, b, c) {
                var e = 0, h = a.length; if (h === d) for (var j in a) { if (b.call(this, j, a[j], c, a) === false) break } else for (j = a[0]; e < h && b.call(this, e, j, c, a) !== false; j =
a[++e]); return c || a
            }, Escape: function() { var a = encodeURIComponent ? function(b) { return encodeURIComponent(b) } : function(b) { return escape(b) }; return function(b) { var c, e; if ({ number: 1, string: 1, "boolean": 1}[typeof b]) c = a(b); else { c = b.length === d ? {} : []; for (e in b) c[e] = a(b[e]) } return c } } (), Empty: k, Features: function() {
                var a = 0, b = { opacity: 1, cursorGrab: 1 }, c, e; this.Lib.Support && this.Lib.Support(); e = this.support; for (c in b) if (e[c] === d) ++a; else b[c] = 0; if (a) {
                    a = document.createElement("div"); a.style.display = "none"; a.innerHTML =
'<a href="/a" style="float:left;opacity:.5;cursor:-moz-grab;">a</a>'; a = a.getElementsByTagName("a")[0]; if (!a) return; if (b.opacity) e.opacity = a.style.opacity === "0.5"; if (b.cursorGrab) e.cursorGrab = a.style.cursor === "-moz-grab"
                } e.scrollbarSize = 17;
                /*@cc_on
                @if (@_jscript)
                this.support.clientIE = true;
                this.support.cursorGrab = false;
                @end
                @*/
                ; if (e.clientIE) e.clientIE6 = (/msie (\d)/i.exec(navigator.userAgent) || [0, ""])[1] === "6"
            }, FeaturesDR: function() {
                var a = this.support, b = document.body, c, e; if (document.createElement && b && b.appendChild && b.removeChild) {
                    if (a.fixedPosition === d || a.boxModel ===
d) { c = document.createElement("div"); e = c.style; if (c && e) { e.width = "1px"; e.paddingLeft = "1px"; e.height = "1px"; e.position = "fixed"; e.top = "10px"; b.appendChild(c); if (a.fixedPosition === d) a.fixedPosition = c.offsetTop === 10; if (a.boxModel === d) a.boxModel = c.offsetWidth === 2; b.removeChild(c).style.display = "none" } } c = document.createElement("div"); e = c.style; if (c && e) {
                        e.width = "100px"; e.height = "100px"; e.position = "absolute"; e.left = "-200px"; e.overflow = "hidden"; b.appendChild(c); c.innerHTML = '<div style="height:200px;width:auto;"><div></div></div>';
                        var h = c.firstChild.firstChild, j = h.offsetWidth, m; e.overflow = "auto"; m = h.offsetWidth; e.overflow = "scroll"; a.scrollbarSize = j - Math.min(m, h.offsetWidth); b.removeChild(c).style.display = "none"
                    } 
                } 
            }, Find: function(a, b, c) { c = c || document; a = a ? typeof a == "string" ? a.split(/[,\s]+/) : a : ["a", "area"]; for (var e = [], h, j, m = 0, l; m < a.length; m++) { h = c.getElementsByTagName(a[m]); for (l = 0; l < h.length; l++) if ((j = h[l]) && (!b || b.call(this, j))) e.push(j) } return e }, FindClass: function(a, b) {
                var c = [], e = function(h, j) {
                    if (j) for (var m = j.children ? j.children.length :
0, l; m--; ) { l = j.children[m]; l.children && l.children.length && e(h, l); l.className && (" " + l.className + " ").indexOf(h) > -1 && c.push(l) } 
                }; e(" " + this.Trim(a) + " ", b || this.Get("SpookWrap")); return c
            }, Get: function(a) { return document.getElementById(a) }, GetScroll: function() { var a = document, b = this.support.boxModel, c = a.documentElement; a = a.body; return { top: f.pageYOffset || b && c.scrollTop || a.scrollTop, left: f.pageXOffset || b && c.scrollLeft || a.scrollLeft} }, Hide: function(a) { this.Show(a, true) }, Int: function(a) {
                a = parseInt(a || 0, 10);
                return isNaN(a) ? 0 : a
            }, IsLink: function(a) { return a && a.tagName && { a: 1, area: 1}[a.tagName.toLowerCase()] }, RemoveChildren: function(a) { for (; a.firstChild; ) a.removeChild(a.firstChild) }, Opaque: function(a, b) { var c = a.style; if (this.support.opacity) c.opacity = b === d ? "" : b; else { c.zoom = 1; c.filter = (c.filter || "").replace(/\s*alpha\([^\)]*\)/gi, "") + (b === d || b == 1 ? "" : " alpha(opacity=" + b * 100 + ")") } }, Show: function(a, b) { a.style.visibility = b ? "hidden" : "visible" }, Throw: function(a, b) {
                var c = this.thrown, e = b ? 0 : c.length; for (a = "Spook : " +
a; e && c[e - 1] != a; ) --e; if (!e) { c.push(a); if (f.console !== d && f.console.log) f.console.log(a); else this.defaults.debug && f.alert(a) } 
            }, Timer: function(a) { this.delay = a.gallery.length > 1 ? (a.options.slideshowDelay || 0) * 1E3 : 0; if (this.paused = !!a.options.paused) this.remnant = 100 }, Trim: function(a) { return (a || "").replace(/^\s+|\s+$/g, "") }, UnClass: function(a, b) { this.Class(a, b, true) }, sContentID: "SpookContent", sMaskOn: false, sAbsolute: function(a) {
                if (!this.support.fixedPosition) {
                    var b = this.sAbsoluteRestore = this.sAbsoluteRestore ||
{}, c = document.documentElement; if (a) b.scroll = this.GetScroll(); this.Class(c, "SpookNoFixedPos", !a); f.scrollTo(a ? 0 : b.scroll.left, a ? 0 : b.scroll.top)
                } 
            }, sActivate: function() {
                var a = this.sMaskEl(), b = this.options; this.sAbsolute(true); if (this.sMaskOn = !!b.modal) { a.style.backgroundColor = b.maskColor; this.Opaque(a, 0); b.maskClick && this.Lib.EventAdd(a, "click", this.handleClose) } this.Hide(this.sBoxEl()); this.Opaque(this.Get("SpookCaption"), b.captionOpacity); this.sMaskOn && this.Show(this.sWrapEl()); this.sHideBars(); this.sMaskOn ?
this.Animate([{ el: a, prop: "opacity", to: parseFloat(b.maskOpacity)}], { duration: b.fadeDuration, callback: this.CB(this.loadContent) }) : this.loadContent()
            }, sAdjust: function(a, b) { var c = this.dimensions, e = this.sBoxEl(); c = a == "width" ? [{ el: e, prop: "width", to: this.Int(c.outer.w) }, { el: e, prop: this.defaults.rtl ? "right" : "left", to: this.Int(c.left)}] : [{ el: this.Get("SpookBody"), prop: "height", to: this.Int(c.inner.h) }, { el: e, prop: "top", to: this.Int(c.top)}]; if (!b) { this.Each(c, function(h, j) { j.el.style[j.prop] = j.to + "px" }); c = null } return c },
            sBodyEl: function() { return this.Get("SpookBodyInner") }, sBoxEl: function() { return this.Get("SpookBox") }, sBuildBars: function() {
                var a = this.gallery.length, b = this.getCurrent(), c = this.options, e = this.defaults.captions ? b.caption || "" : "", h = c.displayNav.toString(), j = /true|standard|all/i.test(h), m = /true|custom|all/i.test(h); h = { close: j || /close/i.test(h), next: j, previous: j, play: 0, pause: 0, caption: !!e, browse: (j || /browse/i.test(h)) && this.Player.browsable }; var l = "SpookCaptionInner", o = this.Get(l + "Hide"), n; this.Get("SpookTitle").innerHTML =
b.title || ""; l = this.Get(l); l.innerHTML = e; o.innerHTML = e; for (n in c.button) if (h[n] === d) h[n] = m && !c.button[n].hide; if (j) { h.next = h.previous = a > 1; if (a > 1 && !c.continuous) { h.next = a - 1 > this.current; h.previous = this.current > 0 } if (c.slideshowDelay > 0 && this.hasNext()) { h.pause = !this.isPaused(); h.play = !h.pause } } if (h.caption && this.Get("SpookCaptionHide").offsetHeight > this.Player.whBox.h) { h.caption = false; l.innerHTML = ""; o.innerHTML = "" } if (h.browse) this.Get("SpookClick-browse").href = b.content; for (n in h) this.sToggleNav(n,
!!h[n] && !c.button[n].hide); this.sBuildCounter()
            }, sBuildCounter: function() { var a = this.options, b = this.Get("SpookClick-first"), c = this.Get("SpookClick-last"), e = this.Get("SpookCounterInner"), h = Math.max(0, this.Int(a.counter)), j = h == 2 ? this.gallery.length - 1 : h - 1; e.innerHTML = this.sGetCounter(h); if (a.counterFit && j > 2) for (; j > 1 && c.offsetTop > b.offsetTop; ) { e.innerHTML = this.sGetCounter(j < 3 ? h : j); --j } }, sDeactivate: function() {
                var a = this, b = a.sMaskEl(), c = a.sWrapEl(); a.Lib.EventRemove(b, "click", this.handleClose); a.Hide(a.sBoxEl());
                if (a.sMaskOn) a.Animate([{ el: b, prop: "opacity", to: 0}], { duration: a.options.fadeDuration, callback: a.CB(function() { c.style.display = ""; a.Opaque(b); a.UnClass(c, "SpookImplode"); a.sAbsolute() }) }); else { a.Hide(c); a.UnClass(c, "SpookImplode"); a.sAbsolute() } 
            }, sFixPNGs: function() {
                var a = this.FindClass("SpookAlphaPNG"), b = a.length, c = /url\("(.*\.png)"\)/, e = this.sWrapEl(), h, j, m, l, o, n, p; this.Class(e, "SpookFixedPNG", true); if (!this.sPNGs) this.sPNGs = []; for (m = this.sPNGs; b--; ) {
                    h = a[b]; p = 0; j = ((this.Lib.StyleGet(h, "backgroundImage") ||
"").match(c) || [0, ""])[1]; o = this.Int(h.currentStyle.backgroundPositionX) + "px"; n = this.Int(h.currentStyle.backgroundPositionY) + "px"; for (l = 0; l < m.length && m[l].el != h; l++); if (l == m.length) { if (j) { p = document.createElement("div"); p.className = "SpookFixPNG"; p.style.position = "absolute"; p.style.width = p.style.height = "500px"; m[l] = { el: h, bi: "", x: "", y: "", div: h.firstChild ? h.insertBefore(p, h.firstChild) : h.appendChild(p) }; p = p.style } } else p = m[l].div.style; if (p) {
                        if (j != m[l].bi) {
                            m[l].bi = j; p.filter = j ? "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,src=" +
j + ",sizingMethod=crop);" : ""
                        } if (m[l].x != o) { m[l].x = o; p.left = o } if (m[l].y != n) { m[l].y = n; p.top = n } 
                    } 
                } this.Class(e, "SpookFixedPNG")
            }, sGetBarAnims: function(a) { var b = this.Get("SpookTbar"), c = this.Get("SpookBbar"); return [{ el: b, prop: "top", to: a ? 0 : this.Int(this.Lib.StyleGet(b, "height")) }, { el: c, prop: "bottom", to: a ? 0 : this.Int(this.Lib.StyleGet(c, "height"))}] }, sGetCounter: function(a) {
                var b = "", c = this.gallery.length, e = 0, h = c; a = a === d ? Math.max(0, this.Int(this.options.counter)) : a; if (a < 2 || c < 2) { this.sToggleNav("first"); this.sToggleNav("last") } if (a &&
c > 1) if (a > 1) { if (a < c && a > 2) { e = this.current - Math.floor(a / 2); e = Math.max(0, Math.min(c - a, e)); h = e + a } this.sToggleNav("first", e); for (this.sToggleNav("last", h < c); e < h; ) b += '<a onclick="Spook.change(' + e + ');"' + (e == this.current ? ' class="SpookCounterCurrent"' : "") + ">" + ++e + "</a>" } else b = this.current + 1 + ' <span id="SpookLang-of" class="SpookLangSetText">' + this.lang[this.defaults.language].of + "</span> " + c; return b
            }, sHideBars: function(a, b) {
                var c = this.options, e = this.sGetBarAnims(), h = this.CB(function() {
                    this.Class(this.sWrapEl(),
"SpookHideBars"); b && b()
                }); this.captionClose(a ? c.animDuration : 0); if (a) this.Animate(e, { duration: c.animDuration, callback: h }); else { this.Each(e, function(j, m) { m.el.style[m.prop] = m.to + "px" }); h() } 
            }, sImplode: function(a) { var b = this.Get(this.sContentID), c = this.options, e; this.sHideBars(); e = c.implode === true ? 0 : parseFloat(c.implode); if (e > 0) c.resizeDuration = e; c.animSequence = "sync"; this.Class(this.sWrapEl(), "SpookImplode"); b && this.Hide(b); this.sOnResize(4, 4, { callback: a || null, imploding: true }) }, sInitSkin: function() {
                this.sMarkup();
                if (this.support.clientIE6) { this.Get("SpookBody").style.zoom = 1; this.sFixPNGs() } 
            }, sMarkup: function() {
                var a = this.sMarkupVars(), b = this.CB(function(c, e) { return (this.lang[this.defaults.language] || {})[e] || "" }); this.Lib.Append(document.body, ('<div id="{}Wrap" class="' + a.cls + '"><div id="{}Mask"></div><div id="{}Box"><div id="{}SkinTop" class="{}SkinTB"><div class="{}SkinTBbg"></div></div><div id="{}SkinTL" class="{}SkinCorner {}AlphaPNG"></div><div id="{}SkinTR" class="{}SkinCorner {}AlphaPNG"></div><div id="{}SkinBL" class="{}SkinCorner {}AlphaPNG"></div><div id="{}SkinBR" class="{}SkinCorner {}AlphaPNG"></div><div id="{}SkinBottom" class="{}SkinTB"><div class="{}SkinTBbg"></div></div><div id="{}Tbar"><div id="{}TbarInner">' +
a.Tbar + '<div id="{}Title"></div></div></div><div id="{}Body"><div id="{}BodyWrap"><div id="{}BodyInner"></div><div id="{}Load"><div><a id="{}Click-cancel" class="{}LangSetText" onclick="{}.close()">{cancel}</a></div></div><div id="{}Caption"><div id="{}CaptionInner" class="{}CaptionInner"></div></div><div id="{}CaptionHide"><div id="{}CaptionInnerHide" class="{}CaptionInner"></div></div></div></div><div id="{}Bbar"><div id="{}BbarInner">' + a.Bbar + '<div id="{}Counter"><a id="{}Click-first" class="{}ClickNav {}AlphaPNG" onclick="{}.change(0)"></a><div id="{}CounterInner"></div><a id="{}Click-last" class="{}ClickNav {}AlphaPNG" onclick="{}.change(-9)"></a></div><div id="{}BbarClear"></div></div></div></div></div>').replace(/\{\}/g,
"Spook").replace(/\{(\w+)\}/g, b)); b = null
            }, sMarkupVars: function() {
                var a = this.defaults, b = { close: 0, next: 0, play: 0, pause: 0, previous: 0, caption: 0, browse: 0 }, c = { Tbar: "", Bbar: "" }, e = function(j) { return a.button[j].html || ['<a id="{}Click-', j, '" class="{}ClickNav {}AlphaPNG" ', j == "browse" ? 'href="#" target="_blank" onclick="this.blur();"' : 'onclick="return ' + (b[j] === d ? "false" : "{}." + j + "()") + ';"', "></a>"].join("") }, h; for (h in a.button) { c[a.button[h].top ? "Tbar" : "Bbar"] += e(h); b[h] = 1 } for (h in b) b[h] || (c.Bbar += e(h)); for (h in c) if (c[h]) c[h] +=
'<div id="{}' + h + 'Spacer" class="{}NavSpacer"></div>'; c.cls = a.captions ? a.captionAtTop ? "{}CaptionsAtTop" : "" : "{}CaptionsOff"; b = e = null; return c
            }, sMaskEl: function() { return this.Get("SpookMask") }, sMessage: function(a) {
                for (var b = "", c = 0, e = a.player.match(/[\+\-]\w+/g) || [], h, j; c < e.length; c++) {
                    h = e[c].substr(1); j = this.plugins[h]; if (c) b += '<span class="SpookMessage' + (e[c].substr(0, 1) == "+" ? 'And">+' : 'Or">/') + "</span>"; b += '<a href="' + j.url + '" target="_blank"><img src="' + this.defaults.path + "resources/" + h + '.gif" alt="" title="' +
j.name + '" /></a>'
                } if (b) this.Apply(a, { player: "code", content: '<div id="SpookMessage"><div id="SpookMessageText">' + (this.lang[this.defaults.language] || this.lang.en).unsupported + '</div><div id="SpookMessagePlugins">' + b + "</div></div>", width: 450, height: 200 }); return !!b
            }, sOnClose: function() { this.sDeactivate() }, sOnOpen: function(a) { this.sWrapEl().style.display = "block"; this.sSetDimensions(a, true); this.sAdjust("height"); this.sAdjust("width"); this.sActivate() }, sOnPause: function() {
                this.sToggleNav("pause", false);
                this.sToggleNav("play", true)
            }, sOnPlay: function() { this.sToggleNav("play", false); this.sToggleNav("pause", true) }, sOnReady: function() { this.sResizeContent(this.CB(this.sShowBars)) }, sOnResize: function(a, b, c) { var e = this.Player; if (e && (c || a && e.whBox.w != a || b && e.whBox.h != b)) { c = c || {}; e.setWH(a, b); a = this.CB(function() { c.imploding || e.onWindowResize(); c.callback && c.callback() }); this.sResizeContent(a, !!c.imploding) } }, sOnWindowResize: function() {
                var a = this.Player; if (a) {
                    this.sSetDimensions(); this.sAdjust("height");
                    this.sAdjust("width"); a.onWindowResize()
                } 
            }, sResizeContent: function(a, b) { if (this.Player) { this.sSetDimensions(null, !!b); this.sResizeSequence({ h: this.sAdjust("height", true), w: this.sAdjust("width", true) }, { duration: this.options.resizeDuration, callback: a }) } }, sResizeSequence: function(a, b) {
                switch (this.options.animSequence) {
                    case "hw": this.Animate(a.h, this.Apply({}, b, { callback: this.CB(function() { this.Animate(a.w, b) }) })); break; case "wh": this.Animate(a.w, this.Apply({}, b, { callback: this.CB(function() {
                        this.Animate(a.h,
b)
                    })
                    })); break; default: this.Each(a.h, function(c, e) { a.w.push(e) }); this.Animate(a.w, b)
                } 
            }, sSetDimensions: function(a, b) { var c = this.sMaskEl(), e = this.sBoxEl(), h = this.Get("SpookBodyInner"); a = a || this.Player.whBox; this.setDimensions({ box: a, vp: { w: c.offsetWidth, h: c.offsetHeight }, tb: e.offsetHeight - h.offsetHeight, lr: e.offsetWidth - h.offsetWidth, player: !b }); return this.dimensions }, sShowBars: function(a) {
                a = a || this.contentReady; if (!this.slideshow) this.slideshow = new this.Timer(this); this.sBuildBars(); var b = this.sGetBarAnims(true);
                this.UnClass(this.sWrapEl(), "SpookHideBars"); this.Animate(b, { duration: this.options.animDuration, callback: this.CB(a) })
            }, sToggleLoading: function(a, b) { var c = this.Player, e = this.Get("SpookLoad"), h = this.CB(a ? function() { this.Opaque(e); b && b() } : function() { this.Class(e, "SpookHide"); this.Opaque(e); b && b() }); if (a) { this.Opaque(e, 0); this.UnClass(e, "SpookHide") } b && (!c || c.fade) ? this.Animate([{ el: e, prop: "opacity", to: a ? 1 : 0}], { duration: this.options.fadeDuration, callback: h }) : h() }, sToggleNav: function(a, b) {
                this.Class(this.Get("SpookClick-" +
a), "SpookHide", !!b)
            }, sWrapEl: function() { return this.Get("SpookWrap") } 
        }); g.Timer.prototype = { id: null, begin: 0, remnant: 0, pause: function() { var a = false; if (!this.paused) { this.paused = true; a = this.stop(true) } return a }, play: function(a) { var b = false; if (a && this.delay) { this.paused = false; this.id = f.setTimeout(function() { g.next() }, this.remnant || this.delay); if (!this.begin) this.begin = (new Date).getTime(); b = true } return b }, stop: function(a) {
            var b = false; if (this.id !== null) {
                if (a && this.begin) this.remnant = Math.max(0, this.delay -
((new Date).getTime() - this.begin)); else this.remnant = this.begin = 0; f.clearTimeout(this.id); this.id = null; b = true
            } return b
        } }
        } 
    })(window);
    (function(f) {
        f.players.player = function(d) { f.Apply(this, { ext: [], extRE: {}, dependency: "", fade: false, browsable: true, ready: true, resizeEl: true }, d || {}) }; f.players.player.prototype = { extAudio: ["mp3", "m4a", "wma"], expressInstall: "flowplayer/expressInstall.swf", flvPlayer: "flowplayer/flowplayer-3.1.5.swf", modes: { aspect: 1, _default: "aspect" }, append: function() { var d = f.options.onPlayerAppend; d && d(this) }, audioTest: function() {
            return this.obj.options.audio === true || f.defaults.audioDetect && (new RegExp("\\.(" + this.extAudio.join("|") +
")$", "i")).test(this.gURL(this.obj.content))
        }, autoSize: function(d, g) { var i = f.Get(this.id), k; if (i && !d) if (k = i.offsetWidth) this.whBox.w = k; if (i && !g) if (k = i.offsetHeight) this.whBox.h = k }, autoTitle: function() { var d = f.options.autoTitle, g = this.obj, i, k, a; if (!g.title && d) { d = d === true || d == "best" ? "tfp" : d.toString(); i = (i = g.el ? g.el.firstChild : null) && !i.tagName ? i.nodeValue || "" : ""; k = this.gURL(g.content); a = (k.match(/([^\/]+)$/) || [])[1] || ""; if (d = { t: i, f: a, p: k, tf: i || a, tp: i || k, fp: a || k, tfp: i || a || k}[d] || "") g.title = d } }, badFlash: function() {
            this.whAdjust =
{ w: 0, h: 0 }; this.whMedia = { w: 300, h: 170 }; f.sOnResize(300, 170)
        }, cacheBust: function(d) { return ((d || this.obj.content).indexOf("?") > 0 ? "&" : "?") + "__c_b=" + (new Date).getTime() }, caption: function(d, g) { var i = f.Get(this.id); if (i) { g.push({ el: i, prop: "height", to: f.dimensions.inner.h - d }); f.defaults.captionAtTop && g.push({ el: i, prop: "marginTop", to: d }) } }, detect: function(d, g) {
            var i = this.name, k = this.dependency, a, b; if (i) {
                a = this.setRE(); for (b = a.length; b--; ) if (a[b] && a[b].test(this.gURL(g))) if (k && !f.plugins[k].ok) d.u.push(k);
                else d.p[b] = i
            } 
        }, getFEP: function(d) { var g = f.dimensions, i = f.options.flashVersion.split("."); return { src: d || f.defaults.path + this.flvPlayer, version: [f.Int(i[0]), f.Int(i[2])], expressInstall: f.defaults.path + this.expressInstall, id: this.id, width: g.inner.w, height: g.inner.h, onFail: function() { var k = Spook.Player; k && k.badFlash.call(k, this) } } }, getResize: function(d, g) {
            if (g.oversized) {
                var i = this.whMedia, k, a; if (f.options.mode == "aspect" && i.w && i.h) {
                    d.w -= this.whAdjust.w; d.h -= this.whAdjust.h; k = (i.w - d.w) / i.w; a = (i.h - d.h) /
i.h; if (a > k) d.w = Math.round(i.w * d.h / i.h); else if (k > a) d.h = Math.round(i.h * d.w / i.w); d.w += this.whAdjust.w; d.h += this.whAdjust.h
                } 
            } return {}
        }, gURL: function(d) { var g = f.Trim((d || "").split("?")[0]); return /[<\s]/.test(g) ? d : g }, init: function(d) { this.obj = d; this.id = f.sContentID; this.whBox = { w: 0, h: 0 }; this.whMedia = { w: 300, h: 300 }; this.whAdjust = { w: 0, h: 0 }; f.options.mode = this.modes[f.options.mode] ? f.options.mode : this.modes._default; this.isAudio = this.audioTest(); this.autoTitle() }, initWH: function() {
            f.Apply(this.whBox, this.whMedia);
            this.setWH(this.obj.width, this.obj.height, f.options.autoSize); f.Apply(this.whMedia, this.whBox); if (f.options.showMovieControls) this.whAdjust.h = this.controllerHeight || 0
        }, onLoad: f.Empty, onWindowResize: function() { var d = f.Get(this.id); if (this.resizeEl && d) { d.height = f.dimensions.inner.h; d.width = f.dimensions.inner.w } }, preloader: function() { }, preInst: function() { return true }, remove: function() { var d = f.options.onPlayerRemove; d && d(this); this.obj = this.whBox = this.whMedia = this.whAdjust = null }, setRE: function() {
            var d =
this.ext || [], g = 0, i; if (!this.extRE[this.name]) for (this.extRE[this.name] = []; g < d.length; g++) { i = d[g]; this.extRE[this.name][g] = i.length ? new RegExp("\\.(" + i.join("|") + ")$", "i") : null } return this.extRE[this.name]
        }, setWH: function(d, g, i) { d = f.Int(d); g = f.Int(g); if (d) { this.whBox.w = d; this.obj.width = d } if (g) { this.whBox.h = g; this.obj.height = g } i && this.autoSize(d, g) } 
        }; f.Apply(f, { addPlayer: function(d, g, i) {
            if (d && !this.players[d]) {
                var k = (i = i || "player") == "player"; if (this.players[i]) {
                    this.players[d] = function(a) { a && this.init(a) };
                    this.players[d].prototype = new this.players[i](k ? g : null); f.Apply(this.players[d].prototype, { name: d, base: i, superparent: this.players.player.prototype }, k ? {} : { parent: this.players[i].prototype }, k ? {} : g)
                } 
            } 
        }, listPlayers: function() { var d = [], g; for (g in this.players) g != "player" && d.push(g); d.sort(); return d.join(",") }, removePlayer: function(d) {
            var g, i = {}; if (d && d != "player" && this.players[d]) {
                for (g in this.players) if (this.players[g].prototype.base == d) i[g] = 1; i[d] = 1; for (g in i) {
                    this.players[g].prototype = null; this.players[g] =
null; delete this.players[g]
                } 
            } 
        } 
        })
    })(Spook);
    (function(f) {
        f.addPlayer("ajax", { fade: true, browsable: false, ready: false, resizeEl: false, modes: { fit: 1, _default: "fit" }, init: function(d) { this.superparent.init.call(this, d); this.options = f.Apply({ type: "get", url: this.obj.content, cache: false }, f.options.ajax, { success: this.ajaxSuccess }); f.Lib.Ajax(this.options) }, ajaxSuccess: function(d, g) {
            var i = document.createElement("div"), k = d, a = f.options.ajaxSuccess; i.id = this.id; i.className = "SpookPreAppend"; f.Lib.Append(document.body, i); if (a) k = a.call(this, d, g); k !== false && f.Lib.Append(i,
k); this.whMedia = { w: 500, h: 300 }; this.initWH(); this.ready = true
        }, append: function() { var d = f.sBodyEl(), g = f.Get(this.id), i = f.options.ajaxAppend; if (d && g) { g.className = "SpookAutoScroll"; f.Lib.Append(d, g); i && i.call(this, g); this.superparent.append.call(this) } }, caption: function() { }, detect: function() { }, remove: function() { var d = f.Get(this.id); if (d) { f.unset(f.Find(null, function(g) { return !!f.Lib.Expando(g) }, d)); f.Lib.Remove(d) } this.superparent.remove.call(this) } 
        })
    })(Spook);
    (function(f) {
        f.addPlayer("code", { fade: true, browsable: false, resizeEl: false, modes: { fit: 1, _default: "fit" }, init: function(d) { this.superparent.init.call(this, d); d = document.createElement("div"); d.id = this.id; d.className = "SpookPreAppend"; f.Lib.Append(document.body, d); f.Lib.Append(d, this.obj.content); this.whMedia = { w: 500, h: 300 }; this.initWH() }, append: function() { var d = f.sBodyEl(), g = f.Get(this.id); if (d && g) { g.className = "SpookAutoScroll"; f.Lib.Append(d, g); this.superparent.append.call(this) } }, autoTitle: function() {
            var d =
f.options.autoTitle, g = this.obj, i; if (!g.title && d) { d = d === true || d == "best" ? "tfp" : d.toString(); i = (i = g.el ? g.el.firstChild : null) && !i.tagName ? i.nodeValue || "" : ""; if (d = { t: i, tf: i, tp: i, tfp: i}[d] || "") g.title = d } 
        }, caption: function() { }, detect: function(d, g) { if (/^<.*>$/.test(f.Trim(g))) d.p[0] = this.name }, remove: function() { var d = f.Get(this.id); if (d) { f.unset(f.Find(null, function(g) { return !!f.Lib.Expando(g) }, d)); f.Lib.Remove(d) } this.superparent.remove.call(this) } 
        })
    })(Spook);
    (function(f) {
        f.addPlayer("flow", { dependency: "fla", ext: [["flv", "m4v", "mp3"]], controllerHeight: 25, defaults: { clip: { scaling: "fit" }, plugins: { controls: { height: 25, bottom: 0}} }, init: function(d) { this.superparent.init.call(this, d); if (this.isAudio) this.whMedia.h = 0; this.initWH() }, append: function() {
            var d = f.sBodyEl(), g = f.options; if (d) {
                this.flowDiv = document.createElement("div"); d.appendChild(this.flowDiv); this.flashParams = f.Apply(this.getFEP(), g.flashParams || {}); this.flashVars = f.Apply(true, {}, this.defaults, { clip: { autoPlay: !!g.autoplayMovies },
                    playlist: this.isAudio && g.splash ? [{ url: g.splash }, { url: this.obj.content}] : [{ url: this.obj.content}]
                }, this.isAudio ? { plugins: { controls: { fullscreen: false}}} : {}, g.showMovieControls ? {} : { plugins: { controls: null} }, g.flashVars || {}); this.flowInst = window.flowplayer(this.flowDiv, this.flashParams, this.flashVars); this.superparent.append.call(this)
            } 
        }, preInst: function() { var d = !!window.flowplayer; d || f.Throw("Failed to find window.flowplayer"); return d }, remove: function() {
            var d = f.Get(this.id); this.flowInst && this.flowInst.stop().close().unload();
            if (d) { d.style.visibility = "hidden"; f.Lib.Remove(d) } if (this.flowDiv) { f.Lib.Remove(this.flowDiv); this.flowDiv = null } this.superparent.remove.call(this)
        } 
        })
    })(Spook);
    (function(f) {
        var d; f.addPlayer("img", { ext: [["png", "jpg", "jpeg", "gif", "bmp"]], modes: { aspect: 1, drag: 1, fit: 1, scroll: 1, _default: "aspect" }, fade: true, ready: false, drag: null, init: function(g) { this.superparent.init.call(this, g); d = new Image; d.onload = f.CB(function() { this.whMedia = { w: d.width, h: d.height }; this.initWH(); this.ready = true; d.onload = ""; d = null }, this); d.src = this.obj.content }, initWH: function() {
            var g = this.whMedia, i = f.Int(this.obj.width), k = f.Int(this.obj.height); if (i || k) this.whBox = { w: i || (k == g.h ? g.w : Math.round(k *
g.w / g.h)), h: k || (i == g.w ? g.h : Math.round(i * g.h / g.w))
            }; else f.Apply(this.whBox, g)
        }, append: function() {
            var g = f.dimensions, i = f.sBodyEl(), k = f.options, a = k.mode == "aspect", b; if (i) {
                b = document.createElement("img"); b.id = this.id; b.src = this.obj.content; b.setAttribute("width", a ? g.inner.w : this.whMedia.w); b.setAttribute("height", a ? g.inner.h : this.whMedia.h); if (k.mode == "scroll") { g = document.createElement("div"); g.id = this.id; g.className = "SpookScrollLayer"; b.id += "Scroll"; i.appendChild(g); g.appendChild(b) } else i.appendChild(b);
                this.superparent.append.call(this)
            } 
        }, caption: function() { }, drag_create: function() { var g; f.Lib.Append(f.sBodyEl(), '<div id="SpookDragLayer"></div>'); g = f.Get("SpookDragLayer"); f.Opaque(g, 0); this.drag_cursor(g); f.Show(g); f.Lib.EventAdd(g, "mousedown", this.drag_handler); return { el: g, top: 0, left: 0, x: 0, y: 0} }, drag_cursor: function(g, i) { if (f.support.cursorGrab) g.style.cursor = i ? "-moz-grabbing" : "-moz-grab" }, drag_handler: function(g) { f.Player["drag_" + g.type](g) }, drag_mousedown: function(g) {
            var i = this.drag, k = f.Lib.EventPageXY(g);
            i.x = k[0]; i.y = k[1]; f.Lib.EventPrevent(g); f.Lib.EventAdd(i.el, "mousemove", this.drag_handler); f.Lib.EventAdd(document, "mouseup", this.drag_handler); this.drag_cursor(i.el, true)
        }, drag_mousemove: function(g) { var i = this.drag, k = f.dimensions.inner, a = f.Player.whMedia, b = f.Get(f.sContentID).style; g = f.Lib.EventPageXY(g); i.left = Math.max(Math.min(0, i.left + g[0] - i.x), k.w - a.w); i.top = Math.max(Math.min(0, i.top + g[1] - i.y), k.h - a.h); b.left = i.left + "px"; b.top = i.top + "px"; i.x = g[0]; i.y = g[1] }, drag_mouseup: function() {
            f.Lib.EventRemove(this.drag.el,
"mousemove", this.drag_handler); f.Lib.EventRemove(document, "mouseup", this.drag_handler); this.drag_cursor(this.drag.el)
        }, drag_remove: function() { if (this.drag) { f.Lib.EventRemove(this.drag.el, "mousedown", this.drag_handler); f.Lib.Remove(this.drag.el); this.drag = null } }, getResize: function(g, i) {
            var k = this.whMedia, a = f.options.mode, b = f.support.scrollbarSize, c, e; if (i.oversized && a == "aspect") { c = (k.w - g.w) / k.w; e = (k.h - g.h) / k.h; if (e > c) g.w = Math.round(k.w * g.h / k.h); else if (c > e) g.h = Math.round(k.h * g.w / k.w) } if (a == "scroll") {
                (a =
f.Get(this.id)) && f.Class(a, "SpookAutoScroll", !i.oversized); if (i.oversized) { c = k.w > g.w; e = k.h > g.h; if (i.vp.h - i.xtra.h - g.h >= b && !e && c) g.h += b; if (i.vp.w - i.xtra.w - g.w >= b && !c && e) g.w += b } 
            } return {}
        }, onLoad: function() { var g = f.options.mode; if (f.dimensions.oversized) if (g == "drag") this.drag = this.drag_create(); else g == "scroll" && f.Class(f.Get(this.id), "SpookAutoScroll") }, onWindowResize: function() {
            var g = f.dimensions, i, k = f.Get(this.id); if (k) {
                if (f.options.mode == "aspect") { k.height = g.inner.h; k.width = g.inner.w } if (this.drag) {
                    i =
this.whMedia; if (g.inner.w > i.w + f.Int(f.Lib.StyleGet(k, "left"))) k.style.left = g.inner.w - i.w + "px"; if (g.inner.h > i.h + f.Int(f.Lib.StyleGet(k, "top"))) k.style.top = g.inner.h - i.h + "px"
                } 
            } 
        }, preloader: function(g) { (new Image).src = g.content }, remove: function() { var g = f.Get(this.id); g && f.Lib.Remove(g); this.drag_remove(); if (d) { d.onload = ""; d = null } this.superparent.remove.call(this) } 
        })
    })(Spook);
    (function(f) {
        f.addPlayer("inline", { fade: true, browsable: false, resizeEl: false, modes: { fit: 1, _default: "fit" }, errs: ["Cannot find element with id ", "Cannot determine element id for inline content"], init: function(d) {
            this.superparent.init.call(this, d); d = f.options; var g = this.obj.content.match(/#(.+)$/); if (this.src = g ? f.Get(g[1]) : 0) {
                g = document.createElement("div"); g.id = this.id; g.className = "SpookPreAppend"; f.Lib.Append(document.body, g); if (d.inlineCopy) { this.marker = null; f.Lib.Append(g, this.src.innerHTML) } else {
                    this.marker =
document.createElement("div"); this.marker.id = "SpookMarker"; this.src.parentNode.insertBefore(this.marker, this.src); f.Lib.Append(g, this.src)
                } 
            } this.whMedia = { w: 500, h: 300 }; this.initWH()
        }, append: function() { var d = f.sBodyEl(), g = f.Get(this.id); if (d && g) { g.className = "SpookAutoScroll"; f.Lib.Append(d, g); this.superparent.append.call(this) } }, caption: function() { }, detect: function(d, g) { g = f.Trim(g); var i = (g.match(/#(.+)$/) || [])[0]; if (i && (f.thisPage + i).indexOf(g) > -1) d.p[0] = this.name }, preInst: function(d) {
            var g = false;
            if ((d = d.content.match(/#(.+)$/)) ? f.Get(d[1]) : 0) g = true; else d ? f.Throw(this.errs[0] + d[1]) : f.Throw(this.errs[1]); return g
        }, remove: function() { var d = f.Get(this.id); if (d) { if (this.marker) { this.marker.parentNode.insertBefore(this.src, this.marker); f.Lib.Remove(this.marker); this.marker = null } else f.unset(f.Find(null, function(g) { return !!f.Lib.Expando(g) }, d)); f.Lib.Remove(d) } this.superparent.remove.call(this) } 
        })
    })(Spook);
    (function(f) {
        f.addPlayer("page", { resizeEl: false, modes: { fit: 1, _default: "fit" }, init: function(d) { this.superparent.init.call(this, d); d = f.sMaskEl(); this.whMedia = { w: d.offsetWidth, h: d.offsetHeight }; this.initWH() }, append: function() {
            var d = f.sBodyEl(); if (d) {
                d.innerHTML = ['<iframe id="', this.id, '" name="', this.id, '" height="100%" width="100%" marginwidth="0" marginheight="0" scrolling="auto" frameBorder="0" frameborder="0" ', f.support.clientIE ? 'allowtransparency="true" ' : "", "src=\"javascript:document.write(unescape('%3Cbody%20style%3D%22background%3A%23000000%3B%22%3E%3C/body%3E'));\"</iframe>"].join("");
                this.superparent.append.call(this)
            } 
        }, caption: function() { }, onLoad: function() { (f.support.clientIE ? f.Get(this.id).contentWindow : window.frames[this.id]).location.href = this.obj.content }, remove: function() { var d = f.Get(this.id); if (d) { f.Lib.Remove(d); if (window.frames[this.id]) try { delete window.frames[this.id] } catch (g) { } } this.superparent.remove.call(this) } 
        })
    })(Spook);
    (function(f) {
        f.addPlayer("qt", { dependency: "qt", ext: [["dv", "mov", "moov", "movie", "mp4", "avi", "mpg", "mpeg", "m4a"], ["asf", "wm", "wmv", "mp3"]], controllerHeight: 16, init: function(d) { this.superparent.init.call(this, d); if (this.isAudio) this.whMedia.h = 0; this.initWH() }, append: function() { var d = f.dimensions, g = f.sBodyEl(), i = "<object", k, a; if (g) { a = this.getAttr(d); for (k in a) i += " " + k + '="' + a[k] + '"'; i += ">"; a = this.getParam(d); for (k in a) i += '<param name="' + k + '" value="' + a[k] + '">'; i += "</object>"; g.innerHTML = i; this.superparent.append.call(this) } },
            detect: function(d, g) { var i = this.setRE(), k = this.dependency, a = f.plugins[k].ok, b = this.gURL(g); if (i[0].test(b)) if (a) d.p[0] = this.name; else d.u.push(k); else if (i[1].test(b)) if (a && f.plugins.f4m.ok) d.p[1] = this.name; else d.u.push(a ? "f4m" : k + "+f4m"); return d }, getAttr: function(d) {
                return f.Apply({ id: this.id, name: this.id, height: d.inner.h, width: d.inner.w, kioskmode: "true" }, f.support.clientIE ? { classid: "clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B", codebase: "http://www.apple.com/qtactivex/qtplugin.cab"} : { type: this.isAudio ?
"audio/x-mpeg" : "video/quicktime", data: this.obj.content
                }, this.isAudio ? { showlogo: "false"} : {})
            }, getParam: function() { var d = f.options; return { src: this.obj.content + (f.support.clientIE ? this.cacheBust() : ""), scale: "aspect", controller: (!!d.showMovieControls).toString(), autoplay: (!!d.autoplayMovies).toString()} }, remove: function() { var d = f.Get(this.id); try { document[this.id].Stop() } catch (g) { } d && f.Lib.Remove(d); this.superparent.remove.call(this) } 
        })
    })(Spook);
    (function(f) { f.addPlayer("swf", { dependency: "fla", ext: [["swf"]], init: function(d) { this.superparent.init.call(this, d); this.initWH() }, append: function() { var d = f.sBodyEl(), g = f.options; if (d) { window.flashembed(d, f.Apply(this.getFEP(this.obj.content), g.flashParams || {}), g.flashVars || {}); this.superparent.append.call(this) } }, preInst: function() { var d = !!window.flashembed; d || f.Throw("Failed to find window.flashembed"); return d }, remove: function() { var d = f.Get(this.id); if (d) { d.style.visibility = "hidden"; f.Lib.Remove(d) } this.superparent.remove.call(this) } }) })(Spook);
    (function(f) {
        f.addPlayer("wmp", { dependency: "wmp", ext: [["asf", "wm", "wmv", "wma"], ["avi", "mpg", "mpeg"], ["mp3"]], init: function(d) { this.superparent.init.call(this, d); if (this.isAudio) this.whMedia.h = 0; this.controllerHeight = f.support.clientIE ? 64 : 45; this.initWH() }, append: function() { var d = f.dimensions, g = f.sBodyEl(), i = "<object", k, a; if (g) { a = this.getAttr(d); for (k in a) i += " " + k + '="' + a[k] + '"'; i += ">"; a = this.getParam(d); for (k in a) i += '<param name="' + k + '" value="' + a[k] + '">'; i += "</object>"; g.innerHTML = i; this.superparent.append.call(this) } },
            caption: function() { }, getAttr: function(d) { return f.Apply({ id: this.id, name: this.id, height: d.inner.h, width: d.inner.w }, f.support.clientIE ? { classid: "clsid:6BF52A52-394A-11d3-B153-00C04F79FAA6"} : { type: "video/x-ms-wmv", data: this.obj.content }) }, getParam: function() { var d = f.options; return f.Apply({ autostart: d.autoplayMovies ? 1 : 0 }, f.support.clientIE ? { url: this.obj.content, uimode: d.showMovieControls ? "full" : "none"} : { showcontrols: d.showMovieControls ? 1 : 0 }) }, remove: function() {
                var d = f.Get(this.id); if (f.support.clientIE) try {
                    window[this.id].controls.stop();
                    window[this.id].URL = "non-existent.wmv"; window[this.id] = f.Empty
                } catch (g) { } d && window.setTimeout(function() { f.Lib.Remove(d) }, 10); this.superparent.remove.call(this)
            } 
        })
    })(Spook);
    (function(f) { f.addPlayer("gdoc", { ext: [["pdf", "ppt"]], init: function(d) { this.parent.init.call(this, d); this.googleDocs = "http://docs.google.com/gview?embedded=true&url="; this.floc = f.Escape(this.obj.content + (f.options.cacheBust ? this.cacheBust() : "")) }, caption: function() { this.superparent.caption.apply(this, arguments) }, onLoad: function() { (f.support.clientIE ? document.getElementById(this.id).contentWindow : window.frames[this.id]).location.href = this.googleDocs + this.floc } }, "page") })(Spook);
    (function(f) { f.addPlayer("youtube", { ext: [], init: function(d) { if (d) { this.superparent.init.call(this, d); this.initWH() } }, detect: function(d, g) { var i = this.dependency; if (this.gURL(g).indexOf("http://www.youtube.com/") === 0) if (f.plugins[i].ok) d.p[0] = this.name; else d.u.push(i) } }, "swf") })(Spook);
    jQuery ? function(f, d) {
        d.Apply(d, { Adapter: function(g) { this.expando = g } }); d.Adapter.prototype = { Ajax: function(g) { var i = {}; f.each(g, function(k, a) { i[k] = { complete: 1, error: 1, success: 1}[k] ? function() { a.apply(Spook.Player, arguments) } : a }); i.type = i.type.toUpperCase(); f.ajax(i) }, Append: function(g, i) { f(g).append(i) }, DOMReady: function(g) { f(g) }, EventAdd: function(g, i, k) { f(g).bind(i, k) }, EventKey: function(g) { return g.keyCode }, EventPageXY: function(g) { return [g.pageX, g.pageY] }, EventPrevent: function(g) { g.preventDefault() },
            EventRemove: function(g, i, k) { f(g).unbind(i, k) }, EventTarget: function(g) { return g.target }, Expando: function(g, i) { if (typeof i !== "undefined") i === false ? f(g).removeData(this.expando) : f(g).data(this.expando, i); return f(g).data(this.expando) }, Remove: function(g) { f(g).remove() }, StyleGet: function(g, i) { return f(g).css(i) }, Support: function() { if (f.support) this.support = f.support } 
        }; f.fn.Spook = function() {
            var g = arguments, i = "setup", k = g[0] || {}, a = /^(setup|open|stack|unset)$/i; if (typeof g[0] == "string") {
                i = a.test(g[0]) ? g[0].toLowerCase() :
""; k = g[1] || {}
            } if (i == "setup") this.each(function() { var b = f.extend({}, k, f.metadata ? f(this).metadata() : {}); Spook.setup(this, b) }); else if (i) { g[0] = this; Spook[i].apply(Spook, g) } return this
        } 
    } (jQuery, Spook) : Spook.Throw("Unable to load adapter for Spook: jQuery not found");
    /* 
    * flowplayer.js 3.1.4. The Flowplayer API
    * 
    * Copyright 2009 Flowplayer Oy
    * 
    * This file is part of Flowplayer.
    * 
    * Flowplayer is free software: you can redistribute it and/or modify
    * it under the terms of the GNU General Public License as published by
    * the Free Software Foundation, either version 3 of the License, or
    * (at your option) any later version.
    * 
    * Flowplayer is distributed in the hope that it will be useful,
    * but WITHOUT ANY WARRANTY; without even the implied warranty of
    * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    * GNU General Public License for more details.
    * 
    * You should have received a copy of the GNU General Public License
    * along with Flowplayer.  If not, see <http://www.gnu.org/licenses/>.
    * 
    * Date: 2009-02-25 21:24:29 +0000 (Wed, 25 Feb 2009)
    * Revision: 166 
    */
    (function() { function g(o) { console.log("$f.fireEvent", [].slice.call(o)) } function k(q) { if (!q || typeof q != "object") { return q } var o = new q.constructor(); for (var p in q) { if (q.hasOwnProperty(p)) { o[p] = k(q[p]) } } return o } function m(t, q) { if (!t) { return } var o, p = 0, r = t.length; if (r === undefined) { for (o in t) { if (q.call(t[o], o, t[o]) === false) { break } } } else { for (var s = t[0]; p < r && q.call(s, p, s) !== false; s = t[++p]) { } } return t } function c(o) { return document.getElementById(o) } function i(q, p, o) { if (typeof p != "object") { return q } if (q && p) { m(p, function(r, s) { if (!o || typeof s != "function") { q[r] = s } }) } return q } function n(s) { var q = s.indexOf("."); if (q != -1) { var p = s.substring(0, q) || "*"; var o = s.substring(q + 1, s.length); var r = []; m(document.getElementsByTagName(p), function() { if (this.className && this.className.indexOf(o) != -1) { r.push(this) } }); return r } } function f(o) { o = o || window.event; if (o.preventDefault) { o.stopPropagation(); o.preventDefault() } else { o.returnValue = false; o.cancelBubble = true } return false } function j(q, o, p) { q[o] = q[o] || []; q[o].push(p) } function e() { return "_" + ("" + Math.random()).substring(2, 10) } var h = function(t, r, s) { var q = this; var p = {}; var u = {}; q.index = r; if (typeof t == "string") { t = { url: t} } i(this, t, true); m(("Begin*,Start,Pause*,Resume*,Seek*,Stop*,Finish*,LastSecond,Update,BufferFull,BufferEmpty,BufferStop").split(","), function() { var v = "on" + this; if (v.indexOf("*") != -1) { v = v.substring(0, v.length - 1); var w = "onBefore" + v.substring(2); q[w] = function(x) { j(u, w, x); return q } } q[v] = function(x) { j(u, v, x); return q }; if (r == -1) { if (q[w]) { s[w] = q[w] } if (q[v]) { s[v] = q[v] } } }); i(this, { onCuepoint: function(x, w) { if (arguments.length == 1) { p.embedded = [null, x]; return q } if (typeof x == "number") { x = [x] } var v = e(); p[v] = [x, w]; if (s.isLoaded()) { s._api().fp_addCuepoints(x, r, v) } return q }, update: function(w) { i(q, w); if (s.isLoaded()) { s._api().fp_updateClip(w, r) } var v = s.getConfig(); var x = (r == -1) ? v.clip : v.playlist[r]; i(x, w, true) }, _fireEvent: function(v, y, w, A) { if (v == "onLoad") { m(p, function(B, C) { if (C[0]) { s._api().fp_addCuepoints(C[0], r, B) } }); return false } A = A || q; if (v == "onCuepoint") { var z = p[y]; if (z) { return z[1].call(s, A, w) } } if (y && "onBeforeBegin,onMetaData,onStart,onUpdate,onResume".indexOf(v) != -1) { i(A, y); if (y.metaData) { if (!A.duration) { A.duration = y.metaData.duration } else { A.fullDuration = y.metaData.duration } } } var x = true; m(u[v], function() { x = this.call(s, A, y, w) }); return x } }); if (t.onCuepoint) { var o = t.onCuepoint; q.onCuepoint.apply(q, typeof o == "function" ? [o] : o); delete t.onCuepoint } m(t, function(v, w) { if (typeof w == "function") { j(u, v, w); delete t[v] } }); if (r == -1) { s.onCuepoint = this.onCuepoint } }; var l = function(p, r, q, t) { var s = {}; var o = this; var u = false; if (t) { i(s, t) } m(r, function(v, w) { if (typeof w == "function") { s[v] = w; delete r[v] } }); i(this, { animate: function(y, z, x) { if (!y) { return o } if (typeof z == "function") { x = z; z = 500 } if (typeof y == "string") { var w = y; y = {}; y[w] = z; z = 500 } if (x) { var v = e(); s[v] = x } if (z === undefined) { z = 500 } r = q._api().fp_animate(p, y, z, v); return o }, css: function(w, x) { if (x !== undefined) { var v = {}; v[w] = x; w = v } r = q._api().fp_css(p, w); i(o, r); return o }, show: function() { this.display = "block"; q._api().fp_showPlugin(p); return o }, hide: function() { this.display = "none"; q._api().fp_hidePlugin(p); return o }, toggle: function() { this.display = q._api().fp_togglePlugin(p); return o }, fadeTo: function(y, x, w) { if (typeof x == "function") { w = x; x = 500 } if (w) { var v = e(); s[v] = w } this.display = q._api().fp_fadeTo(p, y, x, v); this.opacity = y; return o }, fadeIn: function(w, v) { return o.fadeTo(1, w, v) }, fadeOut: function(w, v) { return o.fadeTo(0, w, v) }, getName: function() { return p }, getPlayer: function() { return q }, _fireEvent: function(w, v, x) { if (w == "onUpdate") { var y = q._api().fp_getPlugin(p); if (!y) { return } i(o, y); delete o.methods; if (!u) { m(y.methods, function() { var A = "" + this; o[A] = function() { var B = [].slice.call(arguments); var C = q._api().fp_invoke(p, A, B); return C === "undefined" || C === undefined ? o : C } }); u = true } } var z = s[w]; if (z) { z.apply(o, v); if (w.substring(0, 1) == "_") { delete s[w] } } } }) }; function b(o, t, z) { var E = this, y = null, x, u, p = [], s = {}, B = {}, r, v, w, D, A, q; i(E, { id: function() { return r }, isLoaded: function() { return (y !== null) }, getParent: function() { return o }, hide: function(F) { if (F) { o.style.height = "0px" } if (y) { y.style.height = "0px" } return E }, show: function() { o.style.height = q + "px"; if (y) { y.style.height = A + "px" } return E }, isHidden: function() { return y && parseInt(y.style.height, 10) === 0 }, load: function(F) { if (!y && E._fireEvent("onBeforeLoad") !== false) { m(a, function() { this.unload() }); x = o.innerHTML; if (x && !flashembed.isSupported(t.version)) { o.innerHTML = "" } flashembed(o, t, { config: z }); if (F) { F.cached = true; j(B, "onLoad", F) } } return E }, unload: function() { if (x.replace(/\s/g, "") !== "") { if (E._fireEvent("onBeforeUnload") === false) { return E } try { if (y) { y.fp_close(); E._fireEvent("onUnload") } } catch (F) { } y = null; o.innerHTML = x } return E }, getClip: function(F) { if (F === undefined) { F = D } return p[F] }, getCommonClip: function() { return u }, getPlaylist: function() { return p }, getPlugin: function(F) { var H = s[F]; if (!H && E.isLoaded()) { var G = E._api().fp_getPlugin(F); if (G) { H = new l(F, G, E); s[F] = H } } return H }, getScreen: function() { return E.getPlugin("screen") }, getControls: function() { return E.getPlugin("controls") }, getConfig: function(F) { return F ? k(z) : z }, getFlashParams: function() { return t }, loadPlugin: function(I, H, K, J) { if (typeof K == "function") { J = K; K = {} } var G = J ? e() : "_"; E._api().fp_loadPlugin(I, H, K, G); var F = {}; F[G] = J; var L = new l(I, null, E, F); s[I] = L; return L }, getState: function() { return y ? y.fp_getState() : -1 }, play: function(G, F) { function H() { if (G !== undefined) { E._api().fp_play(G, F) } else { E._api().fp_play() } } if (y) { H() } else { E.load(function() { H() }) } return E }, getVersion: function() { var G = "flowplayer.js 3.1.4"; if (y) { var F = y.fp_getVersion(); F.push(G); return F } return G }, _api: function() { if (!y) { throw "Flowplayer " + E.id() + " not loaded when calling an API method" } return y }, setClip: function(F) { E.setPlaylist([F]); return E }, getIndex: function() { return w } }); m(("Click*,Load*,Unload*,Keypress*,Volume*,Mute*,Unmute*,PlaylistReplace,ClipAdd,Fullscreen*,FullscreenExit,Error,MouseOver,MouseOut").split(","), function() { var F = "on" + this; if (F.indexOf("*") != -1) { F = F.substring(0, F.length - 1); var G = "onBefore" + F.substring(2); E[G] = function(H) { j(B, G, H); return E } } E[F] = function(H) { j(B, F, H); return E } }); m(("pause,resume,mute,unmute,stop,toggle,seek,getStatus,getVolume,setVolume,getTime,isPaused,isPlaying,startBuffering,stopBuffering,isFullscreen,toggleFullscreen,reset,close,setPlaylist,addClip,playFeed").split(","), function() { var F = this; E[F] = function(H, G) { if (!y) { return E } var I = null; if (H !== undefined && G !== undefined) { I = y["fp_" + F](H, G) } else { I = (H === undefined) ? y["fp_" + F]() : y["fp_" + F](H) } return I === "undefined" || I === undefined ? E : I } }); E._fireEvent = function(O) { if (typeof O == "string") { O = [O] } var P = O[0], M = O[1], K = O[2], J = O[3], I = 0; if (z.debug) { g(O) } if (!y && P == "onLoad" && M == "player") { y = y || c(v); A = y.clientHeight; m(p, function() { this._fireEvent("onLoad") }); m(s, function(Q, R) { R._fireEvent("onUpdate") }); u._fireEvent("onLoad") } if (P == "onLoad" && M != "player") { return } if (P == "onError") { if (typeof M == "string" || (typeof M == "number" && typeof K == "number")) { M = K; K = J } } if (P == "onContextMenu") { m(z.contextMenu[M], function(Q, R) { R.call(E) }); return } if (P == "onPluginEvent") { var F = M.name || M; var G = s[F]; if (G) { G._fireEvent("onUpdate", M); G._fireEvent(K, O.slice(3)) } return } if (P == "onPlaylistReplace") { p = []; var L = 0; m(M, function() { p.push(new h(this, L++, E)) }) } if (P == "onClipAdd") { if (M.isInStream) { return } M = new h(M, K, E); p.splice(K, 0, M); for (I = K + 1; I < p.length; I++) { p[I].index++ } } var N = true; if (typeof M == "number" && M < p.length) { D = M; var H = p[M]; if (H) { N = H._fireEvent(P, K, J) } if (!H || N !== false) { N = u._fireEvent(P, K, J, H) } } m(B[P], function() { N = this.call(E, M, K); if (this.cached) { B[P].splice(I, 1) } if (N === false) { return false } I++ }); return N }; function C() { if ($f(o)) { $f(o).getParent().innerHTML = ""; w = $f(o).getIndex(); a[w] = E } else { a.push(E); w = a.length - 1 } q = parseInt(o.style.height, 10) || o.clientHeight; if (typeof t == "string") { t = { src: t} } r = o.id || "fp" + e(); v = t.id || r + "_api"; t.id = v; z.playerId = r; if (typeof z == "string") { z = { clip: { url: z}} } if (typeof z.clip == "string") { z.clip = { url: z.clip} } z.clip = z.clip || {}; if (o.getAttribute("href", 2) && !z.clip.url) { z.clip.url = o.getAttribute("href", 2) } u = new h(z.clip, -1, E); z.playlist = z.playlist || [z.clip]; var F = 0; m(z.playlist, function() { var H = this; if (typeof H == "object" && H.length) { H = { url: "" + H} } m(z.clip, function(I, J) { if (J !== undefined && H[I] === undefined && typeof J != "function") { H[I] = J } }); z.playlist[F] = H; H = new h(H, F, E); p.push(H); F++ }); m(z, function(H, I) { if (typeof I == "function") { if (u[H]) { u[H](I) } else { j(B, H, I) } delete z[H] } }); m(z.plugins, function(H, I) { if (I) { s[H] = new l(H, I, E) } }); if (!z.plugins || z.plugins.controls === undefined) { s.controls = new l("controls", null, E) } s.canvas = new l("canvas", null, E); t.bgcolor = t.bgcolor || "#000000"; t.version = t.version || [9, 0]; t.expressInstall = "http://www.flowplayer.org/swf/expressinstall.swf"; function G(H) { if (!E.isLoaded() && E._fireEvent("onBeforeClick") !== false) { E.load() } return f(H) } x = o.innerHTML; if (x.replace(/\s/g, "") !== "") { if (o.addEventListener) { o.addEventListener("click", G, false) } else { if (o.attachEvent) { o.attachEvent("onclick", G) } } } else { if (o.addEventListener) { o.addEventListener("click", f, false) } E.load() } } if (typeof o == "string") { flashembed.domReady(function() { var F = c(o); if (!F) { throw "Flowplayer cannot access element: " + o } else { o = F; C() } }) } else { C() } } var a = []; function d(o) { this.length = o.length; this.each = function(p) { m(o, p) }; this.size = function() { return o.length } } window.flowplayer = window.$f = function() { var p = null; var o = arguments[0]; if (!arguments.length) { m(a, function() { if (this.isLoaded()) { p = this; return false } }); return p || a[0] } if (arguments.length == 1) { if (typeof o == "number") { return a[o] } else { if (o == "*") { return new d(a) } m(a, function() { if (this.id() == o.id || this.id() == o || this.getParent() == o) { p = this; return false } }); return p } } if (arguments.length > 1) { var r = arguments[1]; var q = (arguments.length == 3) ? arguments[2] : {}; if (typeof o == "string") { if (o.indexOf(".") != -1) { var t = []; m(n(o), function() { t.push(new b(this, k(r), k(q))) }); return new d(t) } else { var s = c(o); return new b(s !== null ? s : o, r, q) } } else { if (o) { return new b(o, r, q) } } } return null }; i(window.$f, { fireEvent: function() { var o = [].slice.call(arguments); var q = $f(o[0]); return q ? q._fireEvent(o.slice(1)) : null }, addPlugin: function(o, p) { b.prototype[o] = p; return $f }, each: m, extend: i }); if (typeof jQuery == "function") { jQuery.prototype.flowplayer = function(q, p) { if (!arguments.length || typeof arguments[0] == "number") { var o = []; this.each(function() { var r = $f(this); if (r) { o.push(r) } }); return arguments.length ? o[arguments[0]] : new d(o) } return this.each(function() { $f(this, k(q), p ? k(p) : {}) }) } } })(); (function() { var e = typeof jQuery == "function"; var i = { width: "100%", height: "100%", allowfullscreen: true, allowscriptaccess: "always", quality: "high", version: null, onFail: null, expressInstall: null, w3c: false, cachebusting: false }; if (e) { jQuery.tools = jQuery.tools || {}; jQuery.tools.flashembed = { version: "1.0.4", conf: i} } function j() { if (c.done) { return false } var l = document; if (l && l.getElementsByTagName && l.getElementById && l.body) { clearInterval(c.timer); c.timer = null; for (var k = 0; k < c.ready.length; k++) { c.ready[k].call() } c.ready = null; c.done = true } } var c = e ? jQuery : function(k) { if (c.done) { return k() } if (c.timer) { c.ready.push(k) } else { c.ready = [k]; c.timer = setInterval(j, 13) } }; function f(l, k) { if (k) { for (key in k) { if (k.hasOwnProperty(key)) { l[key] = k[key] } } } return l } function g(k) { switch (h(k)) { case "string": k = k.replace(new RegExp('(["\\\\])', "g"), "\\$1"); k = k.replace(/^\s?(\d+)%/, "$1pct"); return '"' + k + '"'; case "array": return "[" + b(k, function(n) { return g(n) }).join(",") + "]"; case "function": return '"function()"'; case "object": var l = []; for (var m in k) { if (k.hasOwnProperty(m)) { l.push('"' + m + '":' + g(k[m])) } } return "{" + l.join(",") + "}" } return String(k).replace(/\s/g, " ").replace(/\'/g, '"') } function h(l) { if (l === null || l === undefined) { return false } var k = typeof l; return (k == "object" && l.push) ? "array" : k } if (window.attachEvent) { window.attachEvent("onbeforeunload", function() { __flash_unloadHandler = function() { }; __flash_savedUnloadHandler = function() { } }) } function b(k, n) { var m = []; for (var l in k) { if (k.hasOwnProperty(l)) { m[l] = n(k[l]) } } return m } function a(r, t) { var q = f({}, r); var s = document.all; var n = '<object width="' + q.width + '" height="' + q.height + '"'; if (s && !q.id) { q.id = "_" + ("" + Math.random()).substring(9) } if (q.id) { n += ' id="' + q.id + '"' } if (q.cachebusting) { q.src += ((q.src.indexOf("?") != -1 ? "&" : "?") + Math.random()) } if (q.w3c || !s) { n += ' data="' + q.src + '" type="application/x-shockwave-flash"' } else { n += ' classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"' } n += ">"; if (q.w3c || s) { n += '<param name="movie" value="' + q.src + '" />' } q.width = q.height = q.id = q.w3c = q.src = null; for (var l in q) { if (q[l] !== null) { n += '<param name="' + l + '" value="' + q[l] + '" />' } } var o = ""; if (t) { for (var m in t) { if (t[m] !== null) { o += m + "=" + (typeof t[m] == "object" ? g(t[m]) : t[m]) + "&" } } o = o.substring(0, o.length - 1); n += '<param name="flashvars" value=\'' + o + "' />" } n += "</object>"; return n } function d(m, p, l) { var k = flashembed.getVersion(); f(this, { getContainer: function() { return m }, getConf: function() { return p }, getVersion: function() { return k }, getFlashvars: function() { return l }, getApi: function() { return m.firstChild }, getHTML: function() { return a(p, l) } }); var q = p.version; var r = p.expressInstall; var o = !q || flashembed.isSupported(q); if (o) { p.onFail = p.version = p.expressInstall = null; m.innerHTML = a(p, l) } else { if (q && r && flashembed.isSupported([6, 65])) { f(p, { src: r }); l = { MMredirectURL: location.href, MMplayerType: "PlugIn", MMdoctitle: document.title }; m.innerHTML = a(p, l) } else { if (m.innerHTML.replace(/\s/g, "") !== "") { } else { m.innerHTML = "<h2>Flash version " + q + " or greater is required</h2><h3>" + (k[0] > 0 ? "Your version is " + k : "You have no flash plugin installed") + "</h3>" + (m.tagName == "A" ? "<p>Click here to download latest version</p>" : "<p>Download latest version from <a href='http://www.adobe.com/go/getflashplayer'>here</a></p>"); if (m.tagName == "A") { m.onclick = function() { location.href = "http://www.adobe.com/go/getflashplayer" } } } } } if (!o && p.onFail) { var n = p.onFail.call(this); if (typeof n == "string") { m.innerHTML = n } } if (document.all) { window[p.id] = document.getElementById(p.id) } } window.flashembed = function(l, m, k) { if (typeof l == "string") { var n = document.getElementById(l); if (n) { l = n } else { c(function() { flashembed(l, m, k) }); return } } if (!l) { return } if (typeof m == "string") { m = { src: m} } var o = f({}, i); f(o, m); return new d(l, o, k) }; f(window.flashembed, { getVersion: function() { var m = [0, 0]; if (navigator.plugins && typeof navigator.plugins["Shockwave Flash"] == "object") { var l = navigator.plugins["Shockwave Flash"].description; if (typeof l != "undefined") { l = l.replace(/^.*\s+(\S+\s+\S+$)/, "$1"); var n = parseInt(l.replace(/^(.*)\..*$/, "$1"), 10); var r = /r/.test(l) ? parseInt(l.replace(/^.*r(.*)$/, "$1"), 10) : 0; m = [n, r] } } else { if (window.ActiveXObject) { try { var p = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7") } catch (q) { try { p = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6"); m = [6, 0]; p.AllowScriptAccess = "always" } catch (k) { if (m[0] == 6) { return m } } try { p = new ActiveXObject("ShockwaveFlash.ShockwaveFlash") } catch (o) { } } if (typeof p == "object") { l = p.GetVariable("$version"); if (typeof l != "undefined") { l = l.replace(/^\S+\s+(.*)$/, "$1").split(","); m = [parseInt(l[0], 10), parseInt(l[2], 10)] } } } } return m }, isSupported: function(k) { var m = flashembed.getVersion(); var l = (m[0] > k[0]) || (m[0] == k[0] && m[1] >= k[1]); return l }, domReady: c, asString: g, getHTML: a }); if (e) { jQuery.fn.flashembed = function(l, k) { var m = null; this.each(function() { m = flashembed(this, l, k) }); return l.api === false ? this : m } } })();
