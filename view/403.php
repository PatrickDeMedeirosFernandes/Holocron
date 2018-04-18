<!-- Currently a work in progress...
- This pen was entirely inspired by this pen: https://codepen.io/team/nclud/pen/GJpdVo.
- Uses code from a JavaScript command line interface I made a while ago: https://felisphasma.github.io/JavaScript-CLI/
-->
<?php header('Content-type: text/html; charset=UTF-8'); ?>
<div id="terminal"></div>
<style>
    /*
* Todo:
*  > Cursor
*  > More kittens
*  - Bugs
*/

    * {
        margin: 0px;
        padding: 0px;
    }

    html,
    body {
        height: 100%;
        overflow: hidden;
        background: #000;
    }

    body {
        padding: 9px;
    }

    #terminal {
        font-size: 1em;
        font-family: Monaco, Andale Mono, Monospace, Courier;
        padding: 3px;
        width: 100%;
        height: 100%;
        display: block;
        overflow-x: hidden;
        overflow-y: auto;
        color: #0f0;
        font-weight: bold;
        letter-spacing: 0.15em;
        white-space: pre-wrap;
        text-shadow: 0 0 2px rgba(green, 0.75);
        line-height: 1;
    }

    #terminal input {
        outline: none;
        background: #000 !important;
        font-family: Monaco, Andale Mono, Monospace, Courier;
        border: 0px;
        -webkit-appearance: none;
        padding: 0;
        margin: 0;
        color: #0f0;
        width: 90%;
        font-size: 1em;
        line-height: 1;
        margin-bottom: 0.75em;
    }

    #terminal p {
        margin-bottom: 0.75em;
    }

</style>
<script>/* Vivum JavaScript animation library
 * 
 * Includes Robert Penner's Easing Functions
 * http://www.robertpenner.com/easing/
 * 
 * Vivum Copyright (c) FelisPhasma 2014
 */
    window.requestAnimFrame = function(){return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(n){return window.setTimeout(n, 1e3 / 60)}}(), function(n, t){function e(n){return null == n?String(n):"object" == typeof n || "function" == typeof n?o[c.call(n)] || "object":typeof n}function r(r, o){function c(){if (!I){M++; var t = u[r.easing](20 * M, r.from, r.to - r.from, r.duration); o(t), M != h?n.setTimeout(c, 20):r.complete(1 * new Date - f)}}var s = ["from", "to"]; for (i = 0; i < s.length; i++)if ("number" != e(r[s[i]]))throw new Error("Property '" + s[i] + "' must be set and be a number."); "number" != e(r.duration) && (r.duration = a[r.duration] == t?a._def:a[r.duration]), r.easing = u[r.easing] == t?"linear":r.easing, r.complete = r.complete?r.complete:function(){}; var f = 1 * new Date, h = Math.floor(r.duration / 20), M = 0, I = !1; return c(), {abort:function(){I = !0}}}var u = {linear:function(n, t, e, r){return e * (n / r) + t}, easeInQuad:function(n, t, e, r){return e * (n /= r) * n + t}, easeOutQuad:function(n, t, e, r){return - e * (n /= r) * (n - 2) + t}, easeInOutQuad:function(n, t, e, r){return(n /= r / 2) < 1?e / 2 * n * n + t: - e / 2 * (--n * (n - 2) - 1) + t}, easeInCubic:function(n, t, e, r){return e * (n /= r) * n * n + t}, easeOutCubic:function(n, t, e, r){return e * ((n = n / r - 1) * n * n + 1) + t}, easeInOutCubic:function(n, t, e, r){return(n /= r / 2) < 1?e / 2 * n * n * n + t:e / 2 * ((n -= 2) * n * n + 2) + t}, easeInQuart:function(n, t, e, r){return e * (n /= r) * n * n * n + t}, easeOutQuart:function(n, t, e, r){return - e * ((n = n / r - 1) * n * n * n - 1) + t}, easeInOutQuart:function(n, t, e, r){return(n /= r / 2) < 1?e / 2 * n * n * n * n + t: - e / 2 * ((n -= 2) * n * n * n - 2) + t}, easeInQuint:function(n, t, e, r){return e * (n /= r) * n * n * n * n + t}, easeOutQuint:function(n, t, e, r){return e * ((n = n / r - 1) * n * n * n * n + 1) + t}, easeInOutQuint:function(n, t, e, r){return(n /= r / 2) < 1?e / 2 * n * n * n * n * n + t:e / 2 * ((n -= 2) * n * n * n * n + 2) + t}, easeInSine:function(n, t, e, r){return - e * Math.cos(n / r * (Math.PI / 2)) + e + t}, easeOutSine:function(n, t, e, r){return e * Math.sin(n / r * (Math.PI / 2)) + t}, easeInOutSine:function(n, t, e, r){return - e / 2 * (Math.cos(Math.PI * n / r) - 1) + t}, easeInExpo:function(n, t, e, r){return 0 == n?t:e * Math.pow(2, 10 * (n / r - 1)) + t}, easeOutExpo:function(n, t, e, r){return n == r?t + e:e * ( - Math.pow(2, - 10 * n / r) + 1) + t}, easeInOutExpo:function(n, t, e, r){return 0 == n?t:n == r?t + e:(n /= r / 2) < 1?e / 2 * Math.pow(2, 10 * (n - 1)) + t:e / 2 * ( - Math.pow(2, - 10 * --n) + 2) + t}, easeInCirc:function(n, t, e, r){return - e * (Math.sqrt(1 - (n /= r) * n) - 1) + t}, easeOutCirc:function(n, t, e, r){return e * Math.sqrt(1 - (n = n / r - 1) * n) + t}, easeInOutCirc:function(n, t, e, r){return(n /= r / 2) < 1? - e / 2 * (Math.sqrt(1 - n * n) - 1) + t:e / 2 * (Math.sqrt(1 - (n -= 2) * n) + 1) + t}, easeInElastic:function(n, t, e, r){var u = 1.70158, a = 0, o = e; if (0 == n)return t; if (1 == (n /= r))return t + e; if (a || (a = .3 * r), o < Math.abs(e)){o = e; var u = a / 4} else var u = a / (2 * Math.PI) * Math.asin(e / o); return - (o * Math.pow(2, 10 * (n -= 1)) * Math.sin(2 * (n * r - u) * Math.PI / a)) + t}, easeOutElastic:function(n, t, e, r){var u = 1.70158, a = 0, o = e; if (0 == n)return t; if (1 == (n /= r))return t + e; if (a || (a = .3 * r), o < Math.abs(e)){o = e; var u = a / 4} else var u = a / (2 * Math.PI) * Math.asin(e / o); return o * Math.pow(2, - 10 * n) * Math.sin(2 * (n * r - u) * Math.PI / a) + e + t}, easeInOutElastic:function(n, t, e, r){var u = 1.70158, a = 0, o = e; if (0 == n)return t; if (2 == (n /= r / 2))return t + e; if (a || (a = .3 * r * 1.5), o < Math.abs(e)){o = e; var u = a / 4} else var u = a / (2 * Math.PI) * Math.asin(e / o); return 1 > n? - .5 * o * Math.pow(2, 10 * (n -= 1)) * Math.sin(2 * (n * r - u) * Math.PI / a) + t:o * Math.pow(2, - 10 * (n -= 1)) * Math.sin(2 * (n * r - u) * Math.PI / a) * .5 + e + t}, easeInBack:function(n, e, r, u, a){return a == t && (a = 1.70158), r * (n /= u) * n * ((a + 1) * n - a) + e}, easeOutBack:function(n, e, r, u, a){return a == t && (a = 1.70158), r * ((n = n / u - 1) * n * ((a + 1) * n + a) + 1) + e}, easeInOutBack:function(n, e, r, u, a){return a == t && (a = 1.70158), (n /= u / 2) < 1?r / 2 * n * n * (((a *= 1.525) + 1) * n - a) + e:r / 2 * ((n -= 2) * n * (((a *= 1.525) + 1) * n + a) + 2) + e}, easeInBounce:function(n, t, e, r){return e - u.easeOutBounce(r - n, 0, e, r) + t}, easeOutBounce:function(n, t, e, r){return(n /= r) < 1 / 2.75?7.5625 * e * n * n + t:2 / 2.75 > n?e * (7.5625 * (n -= 1.5 / 2.75) * n + .75) + t:2.5 / 2.75 > n?e * (7.5625 * (n -= 2.25 / 2.75) * n + .9375) + t:e * (7.5625 * (n -= 2.625 / 2.75) * n + .984375) + t}, easeInOutBounce:function(n, t, e, r){return r / 2 > n?.5 * u.easeInBounce(2 * n, 0, e, r) + t:.5 * u.easeOutBounce(2 * n - r, 0, e, r) + .5 * e + t}}, a = {slow:600, fast:200, _def:400}, o = {"[object Boolean]":"boolean", "[object Number]":"number", "[object String]":"string", "[object Function]":"function", "[object Array]":"array", "[object Date]":"date", "[object RegExp]":"regexp", "[object Object]":"object", "[object Error]":"error"}, c = o.toString; n.vivum = r, n.vivumInfo = {easings:function(){var n = []; for (j in u)n.push(j); return n}, speeds:function(){return a}}}(window);
    (function() {
    Element.prototype.addEvent = Object.prototype.addEvent = function(type, fn, useCapture) {
    if (this.attachEvent) {
    this['e' + type + fn] = fn;
    this[type + fn] = function() {
    this['e' + type + fn](window.event);
    };
    this.attachEvent('on' + type, this[type + fn]);
    } else {
    useCapture = useCapture ? useCapture : false;
    this.addEventListener(type, fn, useCapture);
    };
    };
    Element.prototype.remove = function() {
    this.parentElement.removeChild(this);
    }
    NodeList.prototype.remove = HTMLCollection.prototype.remove = function() {
    for (var i = 0, len = this.length; i < len; i++) {
    if (this[i] && this[i].parentElement) {
    this[i].parentElement.removeChild(this[i]);
    }
    }
    }
    var prompt = "> ",
            self = document.getElementById("terminal"),
            commands = {
            "": function() {
            //kittens from: http://user.xmission.com/~emailbox/ascii_cats.htm
            var kittens = [
            ["´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´´´´´´´17¢7´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´¶¶´´´¢¶¶¶¶¶¶¶¶7´´´¶¶´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´¶¢ø¶ø¶¶o´´´´o¶¶¶7øo7´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´1¶¶o¶o´´´´´´´´´ø¶17¢´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´¢¶¶o$7´´´´´´´´´´´7¶17ø7´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´¶¶¶øø71´´´¶¶¶¶´´´´´7¶´1øo´´´´´´´´´´´´´",
                    "´´´´´´´´´´´¶¶¶¶ø711´7¶$¶¶¶¶¶´´´´$117ø¢´´´´´´´´´´´´",
                    "´´´´´´´´´´¶¶$$¢øøo7´¢o7¶¶¶¶¶´´´´o17´1øo´´´´´´´´´´´",
                    "´´´´´´´´´¶¶$øøo1ø¶¢7´ø7´o¶¶´´´´1o´7117o¢´´´´´´´´´´",
                    "´´´´´´´´¶¶$øøøo71ø¶¢7´´77´´´´´1¢1´11777oo´´´´´´´´´",
                    "´´´´´´´ø¶$øøø¢o¢77o$$o71´´´´´¢o1´´711777¢7´´´´´´´´",
                    "´´´´´´1¶¶$$øø$øoøo77o¢øøø¢øøo´´´11711777ooo´´´´´´´",
                    "´´´´´´øø¶øøøøøøoo¢o711111111´1111177117177ø´´´´´´´",
                    "´´´´´´¶oøøøøøøø¢o¢o71´´´´´´´´1111171777777ø1´´´´´´",
                    "´´´´´´¶oøøøøøøø¢¢oo77o$¶¶ø7´´´´1711177777ooo´´´´´´",
                    "´´´´´o¶¢ø¶øøøøø¢ø¢ø¶¶¶¶¶¶¶¶¶¶´´´7777177oo¶oo´´´´´´",
                    "´´´´´ø¶øo¶øø$$$øøø¶¶¶¶¶¶¶¶¶¶¶¶$177777oo$71¶7´´´´´´",
                    "´´´´´¶¶1´¶¶$$$øø$o´´¢ø´7¶o7¶¶øo177777oø¶´´¶o´´´´´´",
                    "´´´´´¶¶´´o¶¶$$øø¶¶¶7´´´´´´´´´´´177o7o¶¶7´´¶ø1´´´´´",
                    "´´´´´¶¶´´´o¶¶¶$¶$$¶¶¶¶¶¶¶¶¶¶¶¶ø¢oøøø¶¶1´´´¶¶1´´´´´",
                    "´´´´´¶¶´´´´´¶¶¶¶¶¶$$¶$$$$$øøø$$$¶¶¶¶$´´´´´¢o7´´´´´",
                    "´´´´´¶¶o´´´´´´ø¶¶¶¶¶¶$$$$$$$¶¶¶¶¶¶ø´´´´´´´$ø7´´´´´",
                    "´´´´´o¶o´´´´´´o$ø17$¶¶¶¶¶¶¶¶¶¶7¢¶´´´´´´´´´ø$7´´´´´",
                    "´´´´´´¶¢´´´´´´$¶¶´´´´´´´´´´´´´´´¶17´´´´´´´oø7´´´´´",
                    "´´´´´´¶7´´´´´´$¶¶´´´´´´´´´´´´´´´¶11´´´´´´´7$7´´´´´",
                    "´´´´´´¶7´´´´´´¶¶ø´´´´´´´´´´´´´´´¶o´´´´´´´´7¢o´´´´´",
                    "´´´´´´¶oø1´´´´7¶¶´´´´´´´´´´´´´´´¶¶´´´´´´´´¢o¢1´´´´",
                    "´´´´´´¶1o¶´´´´´¶¢´´´´´´´´´´´´´´´¶¶´´´´´´´1o1o$´´´´",
                    "´´´´´o¶7´7¶1´´´¶o7´´´´´´´´´´´´´o¶¶´´´´´´´ø¶ø1¶o´´´",
                    "´´´´´1¶¶´´7¶´´´¶¶o´´´´´´´´´´´´´ø¶$´´´´´´´¶¶¢o¶1´´´",
                    "´´´´´´1¶¶´´´´´´o¶¢´´´´´´´´´´´´´¶¶o´´´´´´´o¶¢¶¶´´´´",
                    "´´´´´´´¢¶¶¶¶´´´7¶oo´´´´´´´´´´´´¶o1´´´´´´´´¶¶¶´´´´´",
                    "´´´´´´´´´´´´17oø¶$71´´´´´´´´´´ø¶¢¶¶ø¢11´´´o´´´´´´´",
                    "´´´´´´´´´$o¶¶1$¶o7´o1111´11177¶¶77o¶¶$$¶¶7´´´´´´´´",
                    "´´´´´´´´o¶¶¶o¶¶¶7¶¶¶¢o77777oooø¶¶¶¶´¶¶¶ø¶¶ø7´´´´´´",
                    "´´´´´´´´´´´´77´´17´´´´´´´´´´´´´´´´71´´´´´´´´´´´´´´"],
            ["",
                    ".* . * . * . * . * . *.. Como um anjo",
                    ".* . * (\ ***/) * . *...... você apareceu",
                    ".* . * ( \(_)/ ) * . * ........  na minha vida",
                    ".* . * (_ /|\ _) * . * .... minha linha",
                    ".* . * . /___\ * . * .......... menina.",
                    "*. * . * . * . . * . * ...... "],
            ["´´´´´´´´´´´´´´´´´´¢7´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´7$´¶´´¶o´´´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´¶´´¶´oø177´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´oo´¶´$´117¶o´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´´¶´$´ø´1´ø1¶´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´´17771o´´¶´o´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´´´¶´$´¢1¢7¢´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´´´¶7´´´´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´´´´7´´´´´´ø´´´´´´´´´´´´´¢¢$7´´´´´´´´",
                    "´´´´´´´´´´´´´´´´´¶¶¶¶¶¶¶¶¶´´´´´´´´´7ø7´´´7¶ø7´´´´´",
                    "´´´´´´´´´´´´´´´´´´7´´´´171´´´´´´´´´ø1$7´´´´´o¶o´´´",
                    "´´´´´´´´´´´´´´´´´´¶´´´´øo´´´´´´´´´´´´´ø1¶´11´´7¶´´",
                    "´´´´´´´´1´´´´´´´1ø´ø$øø1¢´´´´´´¶¶o´´´´´´ø´´111´´¶´",
                    "´´´´´´¶¶¶¶¶¶$¶¶¶¶´´´´´´´´¶¶¶¶¶¶¶¶¶¶¶¶¶ø7o¶´´111´´ø",
                    "´´øoo¶¶¶¶¶¶¶¶¶¶¶¶¶ø1´´´oø¶¶¶¶¶¶$¶¶¶¶¢¶´´´´ø¢1111´¢",
                    "´´¶¶¶ø$¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶$¶¶øø¶¶¶ø¶´´1´´´11´´´7",
                    "´´¶ø¶¶¶ø¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶øo¶¶¶$´´´´´´11o¶øo",
                    "´o7´´´$¶¶¶¶$¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶ø¶¶77¢øø¢ooo1´´´",
                    "´¶´11´´´o¶´´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´",
                    "ø´´1117ø77´´´o¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶ø´´´´´´´´´´´´´´´",
                    "ø´´1111´´´¶7´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´",
                    "o$7´´´1111´øø´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´",
                    "´´1øøø11´´´´7¢´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´",
                    "´´´´´´oo¢7¢1´1´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´¶´´´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´1¶ø´1´¶¶¶¶¶¶¶¶¶¶¶¶¶7´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´o777´ø¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´´´7¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´´¶¶7o¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´¶¢o71´´177717´´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´¶7ooo¶7øø777¶´´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´¶7ooøo´´¶¢o7¶´´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´¶7o¢¶´´´´¶o7¢ø´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´¶77ø´´´´´´¶7o¶´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´´´´´´o17¶1´´´´´7o7$´´´´´´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´´¶¶¶¶¶¶¶¶ø7´´´´o¶øo$¶¶ø¶o´´´´´´´´´´´´´´´´´´´´",
                    "´´´´´7¢7777´ø¶´´´´´´´´$¶$¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´"],
            ["<a href=''><H1> MIM CLICA </H1></a>", ]
            ];
            logs = kittens[Math.floor(Math.random() * kittens.length)];
            for (var i = 0, l = logs.length; i < l; i++)
                    setTimeout(function(n) {
                    log(logs[n]);
                    }, i * 100, i);
            setTimeout(function() {
            animatedLog("> Isso funcionou?  ", "#00FF00", "animatedIntroMessage3", function() {
            animatedLog("> Oh bem, talvez a página esteja perdida para sempre.", "#00FF00", "animatedIntroMessage4", function() {
            animatedLog("> Se você acredita que isso é um problema, tente entrar em contato com o administrador do servidor.", "#00FF00", "animatedIntroMessage5", function() {
            animatedLog("> Ele também gosta de gatinhos!!", "#00FF00", "animatedIntroMessage6", function() {
            newline();
            }, 400, 1000);
            }, 1400, 1000);
            }, 800, 1000);
            }, 500);
            }, ((logs.length + 1) * 100) + 1000);
            }




            };
    function newline() {
    var node = document.createElement("p");
    node.setAttribute("class", "input");
    node.innerHTML = '<span class=prompt>' + prompt + '</span><input />';
    self.appendChild(node);
    self.getElementsByTagName("input")[0].focus();
    self.getElementsByTagName("input")[0].addEvent("keydown", function(e) {
    if (e.keyCode == 13) {
    var elems = self.getElementsByTagName("*");
    for (var i = 0; i < elems.length; i++) {
    if (elems[i] == this) {
    var previous = elems[i - 1];
    previous.innerHTML = previous.innerHTML + this.value;
    this.parentElement.removeChild(this);
    };
    };
    handler(this.value)
    };
    }, false);
    };
    function log(txt, color, id) {
    var node = document.createElement("p");
    node.style.color = color || "#2E64FE";
    node.innerHTML = txt.toUpperCase();
    node.setAttribute("class", "response");
    if (id != undefined)
            node.setAttribute("id", id);
    self.appendChild(node);
    };
    function handler(input) {
    if (commands[input.split(" ")[0]] == undefined) {
    log('Comando invalido, verifique a escrita e digite novamente.', "#FF0000");
    newline();
    } else {
    commands[input.split(" ")[0]](input.replace(new RegExp(input.split(" ")[0], ""), "").replace(/^\s+|\s+$/g, ''));
    }
    self.getElementsByTagName("input")[0].focus();
    };
    /*self.addEvent("click", function() {
     self.getElementsByTagName("input")[0].focus();
     }, false);*/
    function animatedLog(txt, color, id, callback, time, delay) {
    if (delay != undefined)
            window.setTimeout(__animate__, delay);
    else
            __animate__();
    function __animate__() {
    log("", color, id);
    vivum({
    from: 0,
            to: txt.length,
            duration: time ? time : 750,
            easing: "linear",
            complete: callback
    }, function(x) {
    document.getElementById(id).innerHTML = txt.slice(0, Math.ceil(x));
    });
    };
    }

    function init() {
    animatedLog("> Bem vindo a area administrativa mestre.", "#00FF00", "animatedIntroMessage1", function() {
    window.setTimeout(function() {
    animatedLog("> Digite, o comando que queira usar.", "#00FF00", "animatedIntroMessage2", function() {
    newline();
    });
    }, 500);
    });
    };
    init();
    })();
</script>