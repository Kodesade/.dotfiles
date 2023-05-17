# Settings in `about:config`

## Enable 'resistFingerprinting'
- `privacy.resistFingerprinting` : `true`
- `privacy.resistFingerprinting.letterboxing` : `true`

## Enable custom CSS Sheets
- `toolkit.legacyUserProfileCustomizations.stylesheets` : `true`

# Settings in Firefox Profile

## Custom CSS

`.mozilla/firefox/{profile-dir}/chrome/userChrome.css` : 
```css
browser {
  margin : 0 0 !important;
}
```

# Userscipt

[SOURCE](https://greasyfork.org/en/scripts/29352-screen-resolution-spoof)

```js
// ==UserScript==
// @name        Screen Resolution Spoof
// @namespace   r-a-y/browser/screen
// @description Alters attempts at fingerprinting your screen resolution to 3840x2160. Only tested in FIrefox.
// @include     *
// @version     1.0.0
// @grant       none
// @run-at      document-start
// ==/UserScript==

Object.defineProperty(window.screen, "availWidth", { get: function(){return 3840; }});
Object.defineProperty(window.screen, "width", { get: function(){return 3840; }});

Object.defineProperty(window.screen, "availHeight", { get: function(){return 2160; }});
Object.defineProperty(window.screen, "height", { get: function(){return 2160; }});

Object.defineProperty(window, "innerWidth", { get: function(){return 3840; }});
Object.defineProperty(window, "innerHeight", { get: function(){return 2160 - 106; }});

Object.defineProperty(window, "outerWidth", { get: function(){return 3840; }});
Object.defineProperty(window, "outerHeight", { get: function(){return 2160 - 40; }});

Object.defineProperty(window, "devicePixelRatio", { get: function(){return 1; }});
```
