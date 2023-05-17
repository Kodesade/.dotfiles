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
