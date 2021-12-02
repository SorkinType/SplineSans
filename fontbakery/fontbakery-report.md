## Fontbakery report

Fontbakery version: 0.8.4

<details>
<summary><b>[10] SplineSans-Regular.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
<pre>--- Rationale ---
Microsoft keeps a list of font vendors and their respective contact info. This
list is updated regularly and is indexed by a 4-char &quot;Vendor ID&quot; which is stored
in the achVendID field of the OS/2 table.
Registering your ID is not mandatory, but it is a good practice since some
applications may display the type designer / type foundry contact info on some
dialog and also because that info will be visible on Microsoft&#x27;s website:
https://docs.microsoft.com/en-us/typography/vendors/
This check verifies whether or not a given font&#x27;s vendor ID is registered in
that list or if it has some of the default values used by the most common font
editors.
Each new FontBakery release includes a cached copy of that list of vendor IDs.
If you registered recently, you&#x27;re safe to ignore warnings emitted by this
check, since your ID will soon be included in one of our upcoming releases.</pre>

* ⚠ **WARN** OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx
 [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Font has old ttfautohint applied?</summary>

* [com.google.fonts/check/old_ttfautohint](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/old_ttfautohint)
<pre>--- Rationale ---
Check if font has been hinted with an outdated version of ttfautohint.</pre>

* ⚠ **WARN** ttfautohint used in font = 1.8.3; latest = 1.8.4; Need to re-run with the newer version! [code: old-ttfa]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + i
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure Stylistic Sets have description.</summary>

* [com.google.fonts/check/stylisticset_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/stylisticset_description)
<pre>--- Rationale ---
Stylistic sets should provide description text. Programs such as InDesign,
TextEdit and Inkscape use that info to display to the users so that they know
what a given stylistic set offers.</pre>

* ⚠ **WARN** The stylistic set ss01 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss02 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss03 lacks a description string on the 'name' table. [code: missing-description]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - slashL_part.
 - slashl_part.
 - Bar_part.
 - Barmid_part.
 - uni030C.alt.001
 - ringacutecomb
 - g.ss02.alt
 - oSlash_part.
 - circumflexbelow
 - uni0326.002
 - dotbelow
 - commaturnedabove
 - .null
 - uni030C.alt
 - uni0308.001
 - IJ_acutecomb
 - ringcomba_part.
 - OSlash_part.
 - macronbelow 
 - ij_acutecomb
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This font has a 'Soft Hyphen' character (codepoint 0x00AD) which is supposed to be zero-width and invisible, and is used to mark a hyphenation possibility within a word in the absence of or overriding dictionary hyphenation. It is mostly an obsolete mechanism now, and the character is only included in fonts for legacy codepage coverage. [code: softhyphen]
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

 - Glyph name: uni00AD	Contours detected: 1	Expected: 0
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: uni00AD	Contours detected: 1	Expected: 0 
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* dollar (U+0024): X=506.0,Y=1453.0 (should be at cap-height 1454?)
	* dollar (U+0024): X=672.0,Y=1452.0 (should be at cap-height 1454?)
	* ampersand (U+0026): X=1336.0,Y=-1.0 (should be at baseline 0?)
	* ampersand (U+0026): X=1116.0,Y=-1.0 (should be at baseline 0?)
	* Q (U+0051): X=899.0,Y=-2.0 (should be at baseline 0?)
	* U (U+0055): X=139.0,Y=1456.0 (should be at cap-height 1454?)
	* U (U+0055): X=330.0,Y=1456.0 (should be at cap-height 1454?)
	* f (U+0066): X=59.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=232.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=415.0,Y=1092.0 (should be at x-height 1091?) and 85 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B (U+0042): B<<1032.5,879.5>-<960.0,798.0>-<836.0,784.0>>/B<<836.0,784.0>-<976.0,777.0>-<1064.5,697.0>> = 9.30400532544674
	* Thorn (U+00DE): B<<380.5,282.5>-<361.0,296.0>-<357.0,314.0>>/L<<357.0,314.0>--<357.0,0.0>> = 12.528807709151492
	* Uogonek (U+0172): B<<552.0,-93.0>-<592.0,-47.0>-<696.0,-19.0>>/B<<696.0,-19.0>-<681.0,-20.0>-<665.0,-20.0>> = 11.25441332520184
	* a (U+0061): L<<766.0,0.0>--<768.0,237.0>>/B<<768.0,237.0>-<743.0,124.0>-<655.5,56.0>> = 11.991612501318665
	* aacute (U+00E1): L<<766.0,0.0>--<768.0,237.0>>/B<<768.0,237.0>-<743.0,124.0>-<655.5,56.0>> = 11.991612501318665
	* abreve (U+0103): L<<766.0,0.0>--<768.0,237.0>>/B<<768.0,237.0>-<743.0,124.0>-<655.5,56.0>> = 11.991612501318665
	* acircumflex (U+00E2): L<<766.0,0.0>--<768.0,237.0>>/B<<768.0,237.0>-<743.0,124.0>-<655.5,56.0>> = 11.991612501318665
	* adieresis (U+00E4): L<<766.0,0.0>--<768.0,237.0>>/B<<768.0,237.0>-<743.0,124.0>-<655.5,56.0>> = 11.991612501318665
	* ae (U+00E6): B<<1041.5,853.0>-<967.0,757.0>-<958.0,589.0>>/B<<958.0,589.0>-<965.0,627.0>-<988.5,642.0>> = 7.370989849992198
	* aeacute (U+01FD): B<<1041.5,853.0>-<967.0,757.0>-<958.0,589.0>>/B<<958.0,589.0>-<965.0,627.0>-<988.5,642.0>> = 7.370989849992198 and 71 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Aogonek (U+0104): L<<1254.0,-222.0>--<1255.0,-346.0>>
 * Ccedilla (U+00C7): L<<618.0,-354.0>--<619.0,-228.0>>
 * Eogonek (U+0118): L<<1061.0,-222.0>--<1062.0,-346.0>>
 * G (U+0047): L<<1127.0,260.0>--<1128.0,584.0>>
 * G (U+0047): L<<1308.0,755.0>--<1306.0,165.0>>
 * Gbreve (U+011E): L<<1127.0,260.0>--<1128.0,584.0>>
 * Gbreve (U+011E): L<<1308.0,755.0>--<1306.0,165.0>>
 * Gcaron (U+01E6): L<<1127.0,260.0>--<1128.0,584.0>>
 * Gcaron (U+01E6): L<<1308.0,755.0>--<1306.0,165.0>>
 * Gdotaccent (U+0120): L<<1127.0,260.0>--<1128.0,584.0>> and 75 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[10] SplineSans-Light.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
<pre>--- Rationale ---
Microsoft keeps a list of font vendors and their respective contact info. This
list is updated regularly and is indexed by a 4-char &quot;Vendor ID&quot; which is stored
in the achVendID field of the OS/2 table.
Registering your ID is not mandatory, but it is a good practice since some
applications may display the type designer / type foundry contact info on some
dialog and also because that info will be visible on Microsoft&#x27;s website:
https://docs.microsoft.com/en-us/typography/vendors/
This check verifies whether or not a given font&#x27;s vendor ID is registered in
that list or if it has some of the default values used by the most common font
editors.
Each new FontBakery release includes a cached copy of that list of vendor IDs.
If you registered recently, you&#x27;re safe to ignore warnings emitted by this
check, since your ID will soon be included in one of our upcoming releases.</pre>

* ⚠ **WARN** OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx
 [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Font has old ttfautohint applied?</summary>

* [com.google.fonts/check/old_ttfautohint](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/old_ttfautohint)
<pre>--- Rationale ---
Check if font has been hinted with an outdated version of ttfautohint.</pre>

* ⚠ **WARN** ttfautohint used in font = 1.8.3; latest = 1.8.4; Need to re-run with the newer version! [code: old-ttfa]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + i
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure Stylistic Sets have description.</summary>

* [com.google.fonts/check/stylisticset_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/stylisticset_description)
<pre>--- Rationale ---
Stylistic sets should provide description text. Programs such as InDesign,
TextEdit and Inkscape use that info to display to the users so that they know
what a given stylistic set offers.</pre>

* ⚠ **WARN** The stylistic set ss01 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss02 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss03 lacks a description string on the 'name' table. [code: missing-description]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - slashL_part.
 - slashl_part.
 - Bar_part.
 - Barmid_part.
 - uni030C.alt.001
 - ringacutecomb
 - g.ss02.alt
 - oSlash_part.
 - circumflexbelow
 - uni0326.002
 - dotbelow
 - commaturnedabove
 - .null
 - uni030C.alt
 - uni0308.001
 - IJ_acutecomb
 - ringcomba_part.
 - OSlash_part.
 - macronbelow 
 - ij_acutecomb
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This font has a 'Soft Hyphen' character (codepoint 0x00AD) which is supposed to be zero-width and invisible, and is used to mark a hyphenation possibility within a word in the absence of or overriding dictionary hyphenation. It is mostly an obsolete mechanism now, and the character is only included in fonts for legacy codepage coverage. [code: softhyphen]
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

 - Glyph name: uni00AD	Contours detected: 1	Expected: 0
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: uni00AD	Contours detected: 1	Expected: 0 
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* dollar (U+0024): X=521.0,Y=1452.0 (should be at cap-height 1454?)
	* dollar (U+0024): X=646.0,Y=1452.0 (should be at cap-height 1454?)
	* ampersand (U+0026): X=1292.0,Y=-1.0 (should be at baseline 0?)
	* ampersand (U+0026): X=1122.0,Y=-1.0 (should be at baseline 0?)
	* six (U+0036): X=710.5,Y=-0.5 (should be at baseline 0?)
	* nine (U+0039): X=369.0,Y=1455.0 (should be at cap-height 1454?)
	* U (U+0055): X=130.0,Y=1456.0 (should be at cap-height 1454?)
	* U (U+0055): X=255.0,Y=1456.0 (should be at cap-height 1454?)
	* f (U+0066): X=46.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=229.0,Y=1092.0 (should be at x-height 1091?) and 77 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B (U+0042): B<<1036.5,878.5>-<964.0,796.0>-<845.0,773.0>>/B<<845.0,773.0>-<927.0,772.0>-<999.5,735.5>> = 11.63778556617556
	* P (U+0050): B<<328.5,587.0>-<309.0,600.0>-<305.0,618.0>>/L<<305.0,618.0>--<305.0,0.0>> = 12.528807709151492
	* Thorn (U+00DE): B<<328.5,299.0>-<309.0,312.0>-<305.0,330.0>>/L<<305.0,330.0>--<305.0,0.0>> = 12.528807709151492
	* Uogonek (U+0172): B<<563.0,-89.5>-<597.0,-45.0>-<686.0,-18.0>>/B<<686.0,-18.0>-<664.0,-20.0>-<641.0,-20.0>> = 11.681835708976386
	* ae (U+00E6): B<<1035.5,881.5>-<943.0,765.0>-<938.0,563.0>>/B<<938.0,563.0>-<949.0,625.0>-<1027.0,625.0>> = 8.64276696387188
	* aeacute (U+01FD): B<<1035.5,881.5>-<943.0,765.0>-<938.0,563.0>>/B<<938.0,563.0>-<949.0,625.0>-<1027.0,625.0>> = 8.64276696387188
	* b (U+0062): L<<301.0,1068.0>--<301.0,868.0>>/B<<301.0,868.0>-<310.0,919.0>-<349.5,976.0>> = 10.00797980144135
	* d (U+0064): L<<830.0,0.0>--<830.0,231.0>>/B<<830.0,231.0>-<820.0,176.0>-<784.5,120.0>> = 10.304846468766044
	* dcaron (U+010F): L<<830.0,0.0>--<830.0,231.0>>/B<<830.0,231.0>-<820.0,176.0>-<784.5,120.0>> = 10.304846468766044
	* dcroat (U+0111): L<<820.0,0.0>--<820.0,231.0>>/B<<820.0,231.0>-<810.0,176.0>-<774.5,120.0>> = 10.304846468766044 and 59 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * G (U+0047): L<<1183.0,227.0>--<1185.0,611.0>>
 * G (U+0047): L<<1310.0,730.0>--<1308.0,165.0>>
 * Gbreve (U+011E): L<<1183.0,227.0>--<1185.0,611.0>>
 * Gbreve (U+011E): L<<1310.0,730.0>--<1308.0,165.0>>
 * Gcaron (U+01E6): L<<1183.0,227.0>--<1185.0,611.0>>
 * Gcaron (U+01E6): L<<1310.0,730.0>--<1308.0,165.0>>
 * Gdotaccent (U+0120): L<<1183.0,227.0>--<1185.0,611.0>>
 * Gdotaccent (U+0120): L<<1310.0,730.0>--<1308.0,165.0>>
 * OE (U+0152): L<<1337.0,702.0>--<1335.0,119.0>>
 * ampersand (U+0026): L<<1052.0,642.0>--<1179.0,643.0>> and 38 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[10] SplineSans-Medium.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
<pre>--- Rationale ---
Microsoft keeps a list of font vendors and their respective contact info. This
list is updated regularly and is indexed by a 4-char &quot;Vendor ID&quot; which is stored
in the achVendID field of the OS/2 table.
Registering your ID is not mandatory, but it is a good practice since some
applications may display the type designer / type foundry contact info on some
dialog and also because that info will be visible on Microsoft&#x27;s website:
https://docs.microsoft.com/en-us/typography/vendors/
This check verifies whether or not a given font&#x27;s vendor ID is registered in
that list or if it has some of the default values used by the most common font
editors.
Each new FontBakery release includes a cached copy of that list of vendor IDs.
If you registered recently, you&#x27;re safe to ignore warnings emitted by this
check, since your ID will soon be included in one of our upcoming releases.</pre>

* ⚠ **WARN** OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx
 [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Font has old ttfautohint applied?</summary>

* [com.google.fonts/check/old_ttfautohint](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/old_ttfautohint)
<pre>--- Rationale ---
Check if font has been hinted with an outdated version of ttfautohint.</pre>

* ⚠ **WARN** ttfautohint used in font = 1.8.3; latest = 1.8.4; Need to re-run with the newer version! [code: old-ttfa]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + i
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure Stylistic Sets have description.</summary>

* [com.google.fonts/check/stylisticset_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/stylisticset_description)
<pre>--- Rationale ---
Stylistic sets should provide description text. Programs such as InDesign,
TextEdit and Inkscape use that info to display to the users so that they know
what a given stylistic set offers.</pre>

* ⚠ **WARN** The stylistic set ss01 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss02 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss03 lacks a description string on the 'name' table. [code: missing-description]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - slashL_part.
 - slashl_part.
 - Bar_part.
 - Barmid_part.
 - uni030C.alt.001
 - ringacutecomb
 - g.ss02.alt
 - oSlash_part.
 - circumflexbelow
 - uni0326.002
 - dotbelow
 - commaturnedabove
 - .null
 - uni030C.alt
 - uni0308.001
 - IJ_acutecomb
 - ringcomba_part.
 - OSlash_part.
 - macronbelow 
 - ij_acutecomb
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This font has a 'Soft Hyphen' character (codepoint 0x00AD) which is supposed to be zero-width and invisible, and is used to mark a hyphenation possibility within a word in the absence of or overriding dictionary hyphenation. It is mostly an obsolete mechanism now, and the character is only included in fonts for legacy codepage coverage. [code: softhyphen]
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

 - Glyph name: uni00AD	Contours detected: 1	Expected: 0
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: uni00AD	Contours detected: 1	Expected: 0 
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* ampersand (U+0026): X=1376.0,Y=-1.0 (should be at baseline 0?)
	* ampersand (U+0026): X=1112.0,Y=-1.0 (should be at baseline 0?)
	* U (U+0055): X=141.0,Y=1456.0 (should be at cap-height 1454?)
	* U (U+0055): X=383.0,Y=1456.0 (should be at cap-height 1454?)
	* f (U+0066): X=66.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=228.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=461.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=707.0,Y=1092.0 (should be at x-height 1091?)
	* i (U+0069): X=154.0,Y=1092.0 (should be at x-height 1091?)
	* i (U+0069): X=393.0,Y=1092.0 (should be at x-height 1091?) and 90 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B (U+0042): B<<1033.5,880.5>-<960.0,800.0>-<832.0,790.0>>/B<<832.0,790.0>-<984.0,780.0>-<1068.0,699.5>> = 8.23119392629497
	* P (U+0050): B<<432.5,513.0>-<405.0,530.0>-<397.0,562.0>>/L<<397.0,562.0>--<397.0,0.0>> = 14.036243467926484
	* Uogonek (U+0172): B<<540.0,-96.5>-<584.0,-48.0>-<701.0,-20.0>>/B<<701.0,-20.0>-<690.0,-20.0>-<679.0,-20.0>> = 13.458684608615023
	* a (U+0061): L<<732.0,0.0>--<735.0,245.0>>/B<<735.0,245.0>-<716.0,134.0>-<638.5,61.0>> = 9.011705112594983
	* aacute (U+00E1): L<<732.0,0.0>--<735.0,245.0>>/B<<735.0,245.0>-<716.0,134.0>-<638.5,61.0>> = 9.011705112594983
	* abreve (U+0103): L<<732.0,0.0>--<735.0,245.0>>/B<<735.0,245.0>-<716.0,134.0>-<638.5,61.0>> = 9.011705112594983
	* acircumflex (U+00E2): L<<732.0,0.0>--<735.0,245.0>>/B<<735.0,245.0>-<716.0,134.0>-<638.5,61.0>> = 9.011705112594983
	* adieresis (U+00E4): L<<732.0,0.0>--<735.0,245.0>>/B<<735.0,245.0>-<716.0,134.0>-<638.5,61.0>> = 9.011705112594983
	* ae (U+00E6): B<<1041.5,831.0>-<979.0,748.0>-<969.0,598.0>>/B<<969.0,598.0>-<976.0,641.0>-<1002.0,657.5>> = 5.432037911272847
	* aeacute (U+01FD): B<<1041.5,831.0>-<979.0,748.0>-<969.0,598.0>>/B<<969.0,598.0>-<976.0,641.0>-<1002.0,657.5>> = 5.432037911272847 and 77 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Aogonek (U+0104): L<<1294.0,-223.0>--<1295.0,-368.0>>
 * Ccedilla (U+00C7): L<<625.0,-375.0>--<626.0,-226.0>>
 * Eogonek (U+0118): L<<1057.0,-223.0>--<1058.0,-368.0>>
 * G (U+0047): L<<1301.0,773.0>--<1300.0,167.0>>
 * Gbreve (U+011E): L<<1301.0,773.0>--<1300.0,167.0>>
 * Gcaron (U+01E6): L<<1301.0,773.0>--<1300.0,167.0>>
 * Gdotaccent (U+0120): L<<1301.0,773.0>--<1300.0,167.0>>
 * Iogonek (U+012E): L<<392.0,-223.0>--<393.0,-368.0>>
 * R (U+0052): L<<576.0,1232.0>--<395.0,1233.0>>
 * Racute (U+0154): L<<576.0,1232.0>--<395.0,1233.0>> and 73 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[11] SplineSans-Bold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
<pre>--- Rationale ---
Microsoft keeps a list of font vendors and their respective contact info. This
list is updated regularly and is indexed by a 4-char &quot;Vendor ID&quot; which is stored
in the achVendID field of the OS/2 table.
Registering your ID is not mandatory, but it is a good practice since some
applications may display the type designer / type foundry contact info on some
dialog and also because that info will be visible on Microsoft&#x27;s website:
https://docs.microsoft.com/en-us/typography/vendors/
This check verifies whether or not a given font&#x27;s vendor ID is registered in
that list or if it has some of the default values used by the most common font
editors.
Each new FontBakery release includes a cached copy of that list of vendor IDs.
If you registered recently, you&#x27;re safe to ignore warnings emitted by this
check, since your ID will soon be included in one of our upcoming releases.</pre>

* ⚠ **WARN** OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx
 [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Font has old ttfautohint applied?</summary>

* [com.google.fonts/check/old_ttfautohint](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/old_ttfautohint)
<pre>--- Rationale ---
Check if font has been hinted with an outdated version of ttfautohint.</pre>

* ⚠ **WARN** ttfautohint used in font = 1.8.3; latest = 1.8.4; Need to re-run with the newer version! [code: old-ttfa]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + i
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure Stylistic Sets have description.</summary>

* [com.google.fonts/check/stylisticset_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/stylisticset_description)
<pre>--- Rationale ---
Stylistic sets should provide description text. Programs such as InDesign,
TextEdit and Inkscape use that info to display to the users so that they know
what a given stylistic set offers.</pre>

* ⚠ **WARN** The stylistic set ss01 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss02 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss03 lacks a description string on the 'name' table. [code: missing-description]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - slashL_part.
 - slashl_part.
 - Bar_part.
 - Barmid_part.
 - uni030C.alt.001
 - ringacutecomb
 - g.ss02.alt
 - oSlash_part.
 - circumflexbelow
 - uni0326.002
 - dotbelow
 - commaturnedabove
 - .null
 - uni030C.alt
 - uni0308.001
 - IJ_acutecomb
 - ringcomba_part.
 - OSlash_part.
 - macronbelow 
 - ij_acutecomb
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This font has a 'Soft Hyphen' character (codepoint 0x00AD) which is supposed to be zero-width and invisible, and is used to mark a hyphenation possibility within a word in the absence of or overriding dictionary hyphenation. It is mostly an obsolete mechanism now, and the character is only included in fonts for legacy codepage coverage. [code: softhyphen]
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

 - Glyph name: uni00AD	Contours detected: 1	Expected: 0
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: uni00AD	Contours detected: 1	Expected: 0 
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---
This check heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, here we also check for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.
Not all such misaligned curve points are a mistake, and sometimes the design may
call for points in locations near the boundaries. As this check is liable to
generate significant numbers of false positives, it will pass if there are more
than 100 reported misalignments.</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* ampersand (U+0026): X=1471.0,Y=-1.0 (should be at baseline 0?)
	* ampersand (U+0026): X=1115.0,Y=-1.0 (should be at baseline 0?)
	* U (U+0055): X=114.0,Y=1456.0 (should be at cap-height 1454?)
	* U (U+0055): X=435.0,Y=1456.0 (should be at cap-height 1454?)
	* f (U+0066): X=63.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=197.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=508.0,Y=1092.0 (should be at x-height 1091?)
	* f (U+0066): X=711.0,Y=1092.0 (should be at x-height 1091?)
	* i (U+0069): X=129.0,Y=1092.0 (should be at x-height 1091?)
	* i (U+0069): X=439.0,Y=1092.0 (should be at x-height 1091?) and 80 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* four (U+0034) contains a short segment L<<980.0,1454.0>--<975.0,1450.0>>
	* less (U+003C) contains a short segment L<<424.0,671.0>--<424.0,667.0>>
	* greater (U+003E) contains a short segment L<<701.0,667.0>--<701.0,671.0>>
	* at (U+0040) contains a short segment B<<1057.0,432.0>-<1062.0,469.0>-<1066.0,490.5>>
	* at (U+0040) contains a short segment B<<1066.0,490.5>-<1070.0,512.0>-<1077.0,553.0>>
	* at (U+0040) contains a short segment B<<1239.0,529.5>-<1234.0,478.0>-<1234.0,464.0>>
	* M (U+004D) contains a short segment L<<901.0,399.0>--<905.0,399.0>>
	* M (U+004D) contains a short segment L<<1388.0,1205.0>--<1378.0,1205.0>>
	* M (U+004D) contains a short segment L<<428.0,1205.0>--<418.0,1205.0>>
	* N (U+004E) contains a short segment L<<1074.0,286.0>--<1081.0,286.0>> and 86 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B (U+0042): B<<1052.5,882.0>-<974.0,801.0>-<849.0,790.0>>/B<<849.0,790.0>-<1013.0,773.0>-<1099.0,687.5>> = 10.947133933893051
	* T (U+0054): B<<436.0,1133.0>-<458.0,1160.0>-<503.0,1167.0>>/L<<503.0,1167.0>--<55.0,1167.0>> = 8.84181456019167
	* Tbar (U+0166): B<<436.0,1133.0>-<458.0,1160.0>-<503.0,1167.0>>/L<<503.0,1167.0>--<55.0,1167.0>> = 8.84181456019167
	* Tcaron (U+0164): B<<436.0,1133.0>-<458.0,1160.0>-<503.0,1167.0>>/L<<503.0,1167.0>--<55.0,1167.0>> = 8.84181456019167
	* Uogonek (U+0172): B<<552.5,-69.5>-<604.0,-37.0>-<701.0,-20.0>>/B<<701.0,-20.0>-<692.0,-20.0>-<682.0,-20.0>> = 9.940573033113024
	* a (U+0061): L<<713.0,0.0>--<715.0,255.0>>/B<<715.0,255.0>-<697.0,145.0>-<625.5,66.5>> = 8.843939150689135
	* aacute (U+00E1): L<<713.0,0.0>--<715.0,255.0>>/B<<715.0,255.0>-<697.0,145.0>-<625.5,66.5>> = 8.843939150689135
	* abreve (U+0103): L<<713.0,0.0>--<715.0,255.0>>/B<<715.0,255.0>-<697.0,145.0>-<625.5,66.5>> = 8.843939150689135
	* acircumflex (U+00E2): L<<713.0,0.0>--<715.0,255.0>>/B<<715.0,255.0>-<697.0,145.0>-<625.5,66.5>> = 8.843939150689135
	* adieresis (U+00E4): L<<713.0,0.0>--<715.0,255.0>>/B<<715.0,255.0>-<697.0,145.0>-<625.5,66.5>> = 8.843939150689135 and 114 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Aogonek (U+0104): L<<1372.0,-220.0>--<1373.0,-395.0>>
 * Ccedilla (U+00C7): L<<607.0,-409.0>--<608.0,-228.0>>
 * Eogonek (U+0118): L<<1067.0,-220.0>--<1068.0,-395.0>>
 * F (U+0046): L<<987.0,1454.0>--<989.0,1167.0>>
 * Iogonek (U+012E): L<<448.0,-220.0>--<449.0,-395.0>>
 * R (U+0052): L<<613.0,1174.0>--<455.0,1175.0>>
 * Racute (U+0154): L<<613.0,1174.0>--<455.0,1175.0>>
 * Rcaron (U+0158): L<<613.0,1174.0>--<455.0,1175.0>>
 * Scedilla (U+015E): L<<497.0,-409.0>--<498.0,-228.0>>
 * Uogonek (U+0172): L<<880.0,-210.0>--<881.0,-385.0>> and 78 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[10] SplineSans-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
<pre>--- Rationale ---
Microsoft keeps a list of font vendors and their respective contact info. This
list is updated regularly and is indexed by a 4-char &quot;Vendor ID&quot; which is stored
in the achVendID field of the OS/2 table.
Registering your ID is not mandatory, but it is a good practice since some
applications may display the type designer / type foundry contact info on some
dialog and also because that info will be visible on Microsoft&#x27;s website:
https://docs.microsoft.com/en-us/typography/vendors/
This check verifies whether or not a given font&#x27;s vendor ID is registered in
that list or if it has some of the default values used by the most common font
editors.
Each new FontBakery release includes a cached copy of that list of vendor IDs.
If you registered recently, you&#x27;re safe to ignore warnings emitted by this
check, since your ID will soon be included in one of our upcoming releases.</pre>

* ⚠ **WARN** OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx
 [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Font has old ttfautohint applied?</summary>

* [com.google.fonts/check/old_ttfautohint](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/old_ttfautohint)
<pre>--- Rationale ---
Check if font has been hinted with an outdated version of ttfautohint.</pre>

* ⚠ **WARN** ttfautohint used in font = 1.8.3; latest = 1.8.4; Need to re-run with the newer version! [code: old-ttfa]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---
Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + i
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure Stylistic Sets have description.</summary>

* [com.google.fonts/check/stylisticset_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/stylisticset_description)
<pre>--- Rationale ---
Stylistic sets should provide description text. Programs such as InDesign,
TextEdit and Inkscape use that info to display to the users so that they know
what a given stylistic set offers.</pre>

* ⚠ **WARN** The stylistic set ss01 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss02 lacks a description string on the 'name' table. [code: missing-description]
* ⚠ **WARN** The stylistic set ss03 lacks a description string on the 'name' table. [code: missing-description]

</details>
<details>
<summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table.</summary>

* [com.google.fonts/check/meta/script_lang_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags)
<pre>--- Rationale ---
The OpenType &#x27;meta&#x27; table originated at Apple. Microsoft added it to OT with
just two DataMap records:
- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font is designed for
- slng: comma-separated ScriptLangTags that indicate which scripts, or languages
and scripts, with possible variants, the font supports
The slng structure is intended to describe which languages and scripts the font
overall supports. For example, a Traditional Chinese font that also contains
Latin characters, can indicate Hant,Latn, showing that it supports Hant, the
Traditional Chinese variant of the Hani script, and it also supports the Latn
script
The dlng structure is far more interesting. A font may contain various glyphs,
but only a particular subset of the glyphs may be truly &quot;leading&quot; in the design,
while other glyphs may have been included for technical reasons. Such a
Traditional Chinese font could only list Hant there, showing that it’s designed
for Traditional Chinese, but the font would omit Latn, because the developers
don’t think the font is really recommended for purely Latin-script use.
The tags used in the structures can comprise just script, or also language and
script. For example, if a font has Bulgarian Cyrillic alternates in the locl
feature for the cyrl BGR OT languagesystem, it could also indicate in dlng
explicitly that it supports bul-Cyrl. (Note that the scripts and languages in
meta use the ISO language and script codes, not the OpenType ones).
This check ensures that the font has the meta table containing the slng and dlng
structures.
All families in the Google Fonts collection should contain the &#x27;meta&#x27; table.
Windows 10 already uses it when deciding on which fonts to fall back to. The
Google Fonts API and also other environments could use the data for smarter
filtering. Most importantly, those entries should be added to the Noto fonts.
In the font making process, some environments store this data in external files
already. But the meta table provides a convenient way to store this inside the
font file, so some tools may add the data, and unrelated tools may read this
data. This makes the solution much more portable and universal.</pre>

* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs</summary>

* [com.google.fonts/check/unreachable_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs)
<pre>--- Rationale ---
Glyphs are either accessible directly through Unicode codepoints or through
substitution rules. Any glyphs not accessible by either of these means are
redundant and serve only to increase the font&#x27;s file size.</pre>

* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:
 - slashL_part.
 - slashl_part.
 - Bar_part.
 - Barmid_part.
 - uni030C.alt.001
 - ringacutecomb
 - g.ss02.alt
 - oSlash_part.
 - circumflexbelow
 - uni0326.002
 - dotbelow
 - commaturnedabove
 - .null
 - uni030C.alt
 - uni0308.001
 - IJ_acutecomb
 - ringcomba_part.
 - OSlash_part.
 - macronbelow 
 - ij_acutecomb
 [code: unreachable-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---
Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will only
differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.
However, a quotedbl should have 2 contours, unless the font belongs to a display
family.
This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.</pre>

* ⚠ **WARN** This font has a 'Soft Hyphen' character (codepoint 0x00AD) which is supposed to be zero-width and invisible, and is used to mark a hyphenation possibility within a word in the absence of or overriding dictionary hyphenation. It is mostly an obsolete mechanism now, and the character is only included in fonts for legacy codepage coverage. [code: softhyphen]
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

 - Glyph name: uni00AD	Contours detected: 1	Expected: 0
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 - Glyph name: Dcroat	Contours detected: 3	Expected: 2
 - Glyph name: Eth	Contours detected: 3	Expected: 2
 - Glyph name: Lslash	Contours detected: 2	Expected: 1
 - Glyph name: Tbar	Contours detected: 2	Expected: 1
 - Glyph name: aogonek	Contours detected: 3	Expected: 2
 - Glyph name: eth	Contours detected: 3	Expected: 2
 - Glyph name: lslash	Contours detected: 2	Expected: 1
 - Glyph name: uni00AD	Contours detected: 1	Expected: 0 
 - Glyph name: uogonek	Contours detected: 2	Expected: 1
 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are any segments inordinately short?</summary>

* [com.google.fonts/check/outline_short_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_short_segments)
<pre>--- Rationale ---
This check looks for outline segments which seem particularly short (less than
0.6% of the overall path length).
This check is not run for variable fonts, as they may legitimately have short
segments. As this check is liable to generate significant numbers of false
positives, it will pass if there are more than 100 reported short segments.</pre>

* ⚠ **WARN** The following glyphs have segments which seem very short:
	* four (U+0034) contains a short segment L<<942.0,1454.0>--<938.0,1450.0>>
	* less (U+003C) contains a short segment L<<357.0,670.0>--<357.0,666.0>>
	* greater (U+003E) contains a short segment L<<726.0,666.0>--<726.0,670.0>>
	* at (U+0040) contains a short segment B<<1054.0,431.0>-<1059.0,468.0>-<1062.5,489.5>>
	* at (U+0040) contains a short segment B<<1062.5,489.5>-<1066.0,511.0>-<1073.0,557.0>>
	* at (U+0040) contains a short segment B<<1226.0,528.0>-<1221.0,478.0>-<1221.0,464.0>>
	* M (U+004D) contains a short segment L<<877.0,412.0>--<882.0,412.0>>
	* M (U+004D) contains a short segment L<<1357.0,1209.0>--<1349.0,1209.0>>
	* M (U+004D) contains a short segment L<<409.0,1209.0>--<401.0,1209.0>>
	* N (U+004E) contains a short segment L<<1062.0,278.0>--<1070.0,278.0>> and 88 more. [code: found-short-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---
This check heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed up
by manual inspection.</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* B (U+0042): B<<1043.5,881.0>-<967.0,800.0>-<841.0,790.0>>/B<<841.0,790.0>-<1000.0,776.0>-<1085.0,693.0>> = 9.569706730735847
	* T (U+0054): B<<444.5,1166.0>-<463.0,1191.0>-<499.0,1198.0>>/L<<499.0,1198.0>--<61.0,1198.0>> = 11.003540851749507
	* Tbar (U+0166): B<<444.5,1166.0>-<463.0,1191.0>-<499.0,1198.0>>/L<<499.0,1198.0>--<61.0,1198.0>> = 11.003540851749507
	* Tcaron (U+0164): B<<444.5,1166.0>-<463.0,1191.0>-<499.0,1198.0>>/L<<499.0,1198.0>--<61.0,1198.0>> = 11.003540851749507
	* Uogonek (U+0172): B<<523.0,-101.0>-<568.0,-47.0>-<701.0,-20.0>>/B<<701.0,-20.0>-<691.0,-20.0>-<681.0,-20.0>> = 11.47552675142304
	* a (U+0061): L<<722.0,0.0>--<724.0,250.0>>/B<<724.0,250.0>-<706.0,140.0>-<631.5,64.0>> = 8.834952141396629
	* aacute (U+00E1): L<<722.0,0.0>--<724.0,250.0>>/B<<724.0,250.0>-<706.0,140.0>-<631.5,64.0>> = 8.834952141396629
	* abreve (U+0103): L<<722.0,0.0>--<724.0,250.0>>/B<<724.0,250.0>-<706.0,140.0>-<631.5,64.0>> = 8.834952141396629
	* acircumflex (U+00E2): L<<722.0,0.0>--<724.0,250.0>>/B<<724.0,250.0>-<706.0,140.0>-<631.5,64.0>> = 8.834952141396629
	* adieresis (U+00E4): L<<722.0,0.0>--<724.0,250.0>>/B<<724.0,250.0>-<706.0,140.0>-<631.5,64.0>> = 8.834952141396629 and 92 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---
This check detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.
This check is disabled for italic styles, which often contain nearly-upright
lines.</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
 * Aogonek (U+0104): L<<1335.0,-222.0>--<1336.0,-382.0>>
 * Ccedilla (U+00C7): L<<615.0,-393.0>--<616.0,-227.0>>
 * Eogonek (U+0118): L<<1062.0,-222.0>--<1063.0,-382.0>>
 * F (U+0046): L<<991.0,1454.0>--<993.0,1198.0>>
 * Iogonek (U+012E): L<<422.0,-222.0>--<423.0,-382.0>>
 * R (U+0052): L<<596.0,1201.0>--<427.0,1202.0>>
 * Racute (U+0154): L<<596.0,1201.0>--<427.0,1202.0>>
 * Rcaron (U+0158): L<<596.0,1201.0>--<427.0,1202.0>>
 * Scedilla (U+015E): L<<488.0,-393.0>--<489.0,-227.0>>
 * Uogonek (U+0172): L<<871.0,-212.0>--<872.0,-372.0>> and 87 more. [code: found-semi-vertical]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 51 | 508 | 31 | 446 | 0 |
| 0% | 0% | 5% | 49% | 3% | 43% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
