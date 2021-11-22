Spline Sans by Sorkin Type
===========================

Spline Sans is a Grotesque purpose-built for UI interfaces, checkout processes, and paragraphs of text. Space efficiency is accomplished by condensing traditional grotesque proportions. The cool and restrained tone is accented with strategic "thorn" traps, which blossom into view when set at larger sizes.

Spline Sans is an original typeface initiated by the <a href="https://spline.design/">Spline Team</a> and designed by Eben Sorkin and Mirko Velimirovic.
Project manager - Faride Mereb. Testing and design feedback - Gonçalo Teixeira. Concept - Alejandro León.

Spline Sans supports Google Core, Google Plus, Google Pro, Plus Optional, and Pro optional glyph sets, enabling the typesetting of English, and Western European languages.

License
-------

Spline Sans is available under the SIL Open Font License v1.1, for more details see [OFL.txt](OFL.txt).

Contributions
-------------


To contribute ideas and feedback, see [https://github.com/SorkinType/SplineSans](https://github.com/SorkinType/SplineSans)


Source Files - Glyphs app file
------------

```
└── sources
    ├── SplineSans[wght].glyphs	# Contains all data to build the font


```

Build Instructions 
------------------

To build the font use Glyphs App and export TTF, OTF or other supported file formats.

or if you do not have a copy of Glyphs please do the following.
Open terminal (if using macos)

`$ python3 -m venv venv`
Sets up a python virtual environment

`$ source venv/bin/activate`
Turns on your virtual environment

`$ pip install --upgrade pip`
upgrades pip

`$ pip install gftools`
gives you the tools you will need to build the project

then from the root of the repo 
`$ gftools build-vf --fixnonhinting --static`
