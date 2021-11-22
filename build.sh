### Run in the terminal by entering this file path (must be given execute permissions with chmod)
### requires a python 3 environment

#!/bin/sh
#source ../venv/bin/activate
set -e


############################################
######### generate variable font ###########


echo "Generating VFs"
gftools build-vf --fixnonhinting

mv fonts/SplineSans-VF.ttf fonts/SplineSans\[wght\].ttf

gftools gen-stat fonts/SplineSans\[wght\].ttf --axis-order 'wght'

rm -rf fonts/SplineSans\[wght\].ttf

mv fonts/SplineSans\[wght\].ttf.fix fonts/SplineSans\[wght\].ttf   


######### generate variable font ###########
############################################




############################################
########## opentype table fixes ############



########## opentype table fixes ############
############################################




############################################
############### font bake ##################


fontbakery check-googlefonts fonts/*.ttf --ghmarkdown fonts/checks_variable.md


############### font bake ##################
############################################

