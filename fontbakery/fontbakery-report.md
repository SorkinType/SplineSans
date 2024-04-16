## FontBakery report

fontbakery version: 0.12.1



## Experimental checks

These won't break the CI job for now, but will become effective after some time if nobody raises any concern.


<details><summary>[1] SplineSans[wght].ttf</summary>
<div>
<details>
    <summary>⚠️ <b>WARN</b> Validate location, size and resolution of article images. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.article.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Family metadata at fonts/variable does not have an article.</p>
 [code: lacks-article]



</div>
</details>
</div>
</details>




## All other checks



<details><summary>[11] SplineSans[wght].ttf</summary>
<div>
<details>
    <summary>⚠️ <b>WARN</b> Check math signs have the same width. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The most common width is 1049 among a set of 2 math glyphs.
The following math glyphs have a different width, though:</p>
<p>Width = 961:
less</p>
<p>Width = 1061:
equal</p>
<p>Width = 1046:
greater</p>
<p>Width = 1103:
logicalnot</p>
<p>Width = 929:
multiply</p>
<p>Width = 1001:
minus, divide</p>
 [code: width-outliers]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Does the font contain a soft hyphen? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>This font has a 'Soft Hyphen' character.</p>
 [code: softhyphen]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check font contains no unreachable glyphs <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs could not be reached by codepoint or substitution rules:</p>
<pre><code>- IJ_acutecomb

- circumflexbelow

- commaturnedabove

- dotbelow

- ij_acutecomb

- macronbelow

- uni0308.001

- uni030C.alt.001

- uni0326.002
</code></pre>
 [code: unreachable-glyphs]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Are there any misaligned on-curve points? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs have on-curve points which have potentially incorrect y coordinates:</p>
<pre><code>* dollar (U+0024): X=587.0,Y=1.0 (should be at baseline 0?)

* dollar (U+0024): X=587.0,Y=1.0 (should be at baseline 0?)

* ampersand (U+0026): X=1336.0,Y=-1.0 (should be at baseline 0?)

* ampersand (U+0026): X=1116.0,Y=-1.0 (should be at baseline 0?)

* nine (U+0039): X=358.5,Y=1452.5 (should be at cap-height 1454?)

* at (U+0040): X=1179.5,Y=-2.0 (should be at baseline 0?)

* p (U+0070): X=350.0,Y=-1.0 (should be at baseline 0?)

* t (U+0074): X=709.0,Y=-1.0 (should be at baseline 0?)

* uni00B3 (U+00B3): X=658.5,Y=1452.0 (should be at cap-height 1454?)

* uni00B5 (U+00B5): X=465.5,Y=-0.5 (should be at baseline 0?)

* thorn (U+00FE): X=346.0,Y=-1.0 (should be at baseline 0?)

* OE (U+0152): X=896.0,Y=1455.0 (should be at cap-height 1454?)

* uni0163 (U+0163): X=709.0,Y=-1.0 (should be at baseline 0?)

* tcaron (U+0165): X=709.0,Y=-1.0 (should be at baseline 0?)

* tbar (U+0167): X=700.0,Y=1.0 (should be at baseline 0?)

* uni018F (U+018F): X=518.5,Y=-2.0 (should be at baseline 0?)

* uni021B (U+021B): X=709.0,Y=-1.0 (should be at baseline 0?)

* uni2076 (U+2076): X=95.5,Y=1455.0 (should be at cap-height 1454?)

* uni2076 (U+2076): X=303.0,Y=1454.5 (should be at cap-height 1454?)
</code></pre>
 [code: found-misalignments]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure dotted circle glyph is present and can attach marks. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/shaping.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>No dotted circle glyph present</p>
 [code: missing-dotted-circle]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure soft_dotted characters lose their dot when combined with marks that replace the dot. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/shaping.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The dot of soft dotted characters used in orthographies <em>must</em> disappear in the following strings: į̀ į́ į̂ į̃ į̄ į̌ ị̀ ị́ ị̂ ị̃ ị̄</p>
<p>The dot of soft dotted characters <em>should</em> disappear in other cases, for example: i̦̇ i̦̊ i̦̋ ǐ̦ i̦̒ j̦̀ j̦́ ĵ̦ j̦̃ j̦̄ j̦̆ j̦̇ j̦̈ j̦̊ j̦̋ ǰ̦ j̦̒ į̆ į̇ į̈</p>
<p>Your font fully covers the following languages that require the soft-dotted feature: Lithuanian (Latn, 2,357,094 speakers), Dutch (Latn, 31,709,104 speakers).</p>
<p>Your font does <em>not</em> cover the following languages that require the soft-dotted feature: Ukrainian (Cyrl, 29,273,587 speakers), Kom (Latn, 360,685 speakers), Bafut (Latn, 158,146 speakers), Fur (Latn, 1,230,163 speakers), Aghem (Latn, 38,843 speakers), Nateni (Latn, 100,000 speakers), Mango (Latn, 77,000 speakers), Gulay (Latn, 250,478 speakers), Nzakara (Latn, 50,000 speakers), Igbo (Latn, 27,823,640 speakers), Lugbara (Latn, 2,200,000 speakers), South Central Banda (Latn, 244,000 speakers), Belarusian (Cyrl, 10,064,517 speakers), Mundani (Latn, 34,000 speakers), Navajo (Latn, 166,319 speakers), Zapotec (Latn, 490,000 speakers), Kpelle, Guinea (Latn, 622,000 speakers), Koonzime (Latn, 40,000 speakers), Dii (Latn, 71,000 speakers), Makaa (Latn, 221,000 speakers), Avokaya (Latn, 100,000 speakers), Ijo, Southeast (Latn, 2,471,000 speakers), Ngbaka (Latn, 1,020,000 speakers), Bete-Bendi (Latn, 100,000 speakers), Ma’di (Latn, 584,000 speakers), Southern Kisi (Latn, 360,000 speakers), Dan (Latn, 1,099,244 speakers), Cicipu (Latn, 44,000 speakers), Sar (Latn, 500,000 speakers), Ejagham (Latn, 120,000 speakers), Ebira (Latn, 2,200,000 speakers), Basaa (Latn, 332,940 speakers), Mfumte (Latn, 79,000 speakers), Yala (Latn, 200,000 speakers), Ekpeye (Latn, 226,000 speakers).</p>
 [code: soft-dotted]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check for codepoints not covered by METADATA subsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.subsets.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following codepoints supported by the font are not covered by
any subsets defined in the font's metadata file, and will never
be served. You can solve this by either manually adding additional
subset declarations to METADATA.pb, or by editing the glyphset
definitions.</p>
<ul>
<li>U+02C7 CARON: try adding one of: tifinagh, canadian-aboriginal, yi</li>
<li>U+02D8 BREVE: try adding one of: canadian-aboriginal, yi</li>
<li>U+02D9 DOT ABOVE: try adding one of: canadian-aboriginal, yi</li>
<li>U+02DB OGONEK: try adding one of: canadian-aboriginal, yi</li>
<li>U+02DD DOUBLE ACUTE ACCENT: not included in any glyphset definition</li>
<li>U+0302 COMBINING CIRCUMFLEX ACCENT: try adding one of: math, cherokee, tifinagh, coptic</li>
<li>U+0306 COMBINING BREVE: try adding one of: tifinagh, old-permic</li>
<li>U+0307 COMBINING DOT ABOVE: try adding one of: tai-le, canadian-aboriginal, old-permic, coptic, tifinagh, math, malayalam, syriac</li>
<li>U+030A COMBINING RING ABOVE: try adding syriac</li>
<li>U+030B COMBINING DOUBLE ACUTE ACCENT: try adding one of: osage, cherokee</li>
<li>U+030C COMBINING CARON: try adding one of: tai-le, cherokee</li>
<li>U+0312 COMBINING TURNED COMMA ABOVE: not included in any glyphset definition</li>
<li>U+0326 COMBINING COMMA BELOW: not included in any glyphset definition</li>
<li>U+0327 COMBINING CEDILLA: not included in any glyphset definition</li>
<li>U+0328 COMBINING OGONEK: not included in any glyphset definition</li>
<li>U+032D COMBINING CIRCUMFLEX ACCENT BELOW: try adding syriac</li>
<li>U+0331 COMBINING MACRON BELOW: try adding one of: cherokee, gothic, caucasian-albanian, tifinagh, syriac</li>
<li>U+1ECA LATIN CAPITAL LETTER I WITH DOT BELOW: try adding vietnamese</li>
<li>U+1ECB LATIN SMALL LETTER I WITH DOT BELOW: try adding vietnamese</li>
<li>U+1ECC LATIN CAPITAL LETTER O WITH DOT BELOW: try adding vietnamese</li>
<li>U+1ECD LATIN SMALL LETTER O WITH DOT BELOW: try adding vietnamese</li>
<li>U+1EE4 LATIN CAPITAL LETTER U WITH DOT BELOW: try adding vietnamese</li>
<li>U+1EE5 LATIN SMALL LETTER U WITH DOT BELOW: try adding vietnamese</li>
<li>U+2000 EN QUAD: not included in any glyphset definition</li>
<li>U+2001 EM QUAD: not included in any glyphset definition</li>
<li>U+2003 EM SPACE: try adding nushu</li>
<li>U+2004 THREE-PER-EM SPACE: not included in any glyphset definition</li>
<li>U+2005 FOUR-PER-EM SPACE: not included in any glyphset definition</li>
<li>U+2006 SIX-PER-EM SPACE: not included in any glyphset definition</li>
<li>U+2007 FIGURE SPACE: not included in any glyphset definition</li>
<li>U+2008 PUNCTUATION SPACE: not included in any glyphset definition</li>
<li>U+200A HAIR SPACE: not included in any glyphset definition</li>
<li>U+2021 DOUBLE DAGGER: try adding adlam</li>
<li>U+202F NARROW NO-BREAK SPACE: try adding one of: yi, mongolian</li>
<li>U+205F MEDIUM MATHEMATICAL SPACE: not included in any glyphset definition</li>
<li>U+2070 SUPERSCRIPT ZERO: not included in any glyphset definition</li>
<li>U+2075 SUPERSCRIPT FIVE: not included in any glyphset definition</li>
<li>U+2076 SUPERSCRIPT SIX: not included in any glyphset definition</li>
<li>U+2077 SUPERSCRIPT SEVEN: not included in any glyphset definition</li>
<li>U+2078 SUPERSCRIPT EIGHT: not included in any glyphset definition</li>
<li>U+2079 SUPERSCRIPT NINE: not included in any glyphset definition</li>
<li>U+2080 SUBSCRIPT ZERO: not included in any glyphset definition</li>
<li>U+2081 SUBSCRIPT ONE: not included in any glyphset definition</li>
<li>U+2082 SUBSCRIPT TWO: not included in any glyphset definition</li>
<li>U+2083 SUBSCRIPT THREE: not included in any glyphset definition</li>
<li>U+2084 SUBSCRIPT FOUR: not included in any glyphset definition</li>
<li>U+2085 SUBSCRIPT FIVE: not included in any glyphset definition</li>
<li>U+2086 SUBSCRIPT SIX: not included in any glyphset definition</li>
<li>U+2087 SUBSCRIPT SEVEN: not included in any glyphset definition</li>
<li>U+2088 SUBSCRIPT EIGHT: not included in any glyphset definition</li>
<li>U+2089 SUBSCRIPT NINE: not included in any glyphset definition</li>
<li>U+215B VULGAR FRACTION ONE EIGHTH: not included in any glyphset definition</li>
<li>U+215C VULGAR FRACTION THREE EIGHTHS: not included in any glyphset definition</li>
<li>U+215D VULGAR FRACTION FIVE EIGHTHS: not included in any glyphset definition</li>
<li>U+215E VULGAR FRACTION SEVEN EIGHTHS: not included in any glyphset definition</li>
<li>U+FB01 LATIN SMALL LIGATURE FI: not included in any glyphset definition</li>
<li>U+FB02 LATIN SMALL LIGATURE FL: not included in any glyphset definition</li>
</ul>
<p>Or you can add the above codepoints to one of the subsets supported by the font: <code>cyrillic-ext</code>, <code>greek-ext</code>, <code>latin</code>, <code>latin-ext</code></p>
 [code: unreachable-subsetting]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Is there kerning info for non-ligated sequences? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.gpos.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>GPOS table lacks kerning info for the following non-ligated sequences:</p>
<pre><code>- f + i

- f + l
</code></pre>
 [code: lacks-kern-info]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.meta.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>This font file does not have a 'meta' table.</p>
 [code: lacks-meta-table]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure Stylistic Sets have description. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.gsub.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The stylistic set ss01 lacks a description string on the 'name' table.</p>
 [code: missing-description]



* ⚠️ **WARN** <p>The stylistic set ss02 lacks a description string on the 'name' table.</p>
 [code: missing-description]



* ⚠️ **WARN** <p>The stylistic set ss03 lacks a description string on the 'name' table.</p>
 [code: missing-description]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Checking OS/2 achVendID. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.os2.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at <a href="https://www.microsoft.com/typography/links/vendorlist.aspx">https://www.microsoft.com/typography/links/vendorlist.aspx</a></p>
 [code: unknown]



</div>
</details>
</div>
</details>




### Summary

| 💥 ERROR | ☠ FATAL | 🔥 FAIL | ⚠️ WARN | ⏩ SKIP | ℹ️ INFO | ✅ PASS | 🔎 DEBUG | 
| ---|---|---|---|---|---|---|---|
| 0 | 0 | 0 | 12 | 95 | 7 | 135 | 0 | 
| 0% | 0% | 0% | 5% | 38% | 3% | 54% | 0% | 



**Note:** The following loglevels were omitted in this report:


* SKIP
* INFO
* PASS
* DEBUG
