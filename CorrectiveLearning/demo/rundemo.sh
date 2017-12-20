ml=`cat ADNI3T/CV01/testManualListR`
al=`cat ADNI3T/CV01/testAutoListR`

../bl 3 -ms $ml -as $al -tl 0 -rd 1 -rf 2x2x2 -rate 0.1 -i 50 AdaBoostFile
../bl 3 -ms $ml -as $al -tl 1 -rd 1 -rf 2x2x2 -rate 0.1 -i 50 AdaBoostFile

../sa ./ADNI3T/CV01/023_S_0376_MA_R.nii.gz AdaBoostFile 023_S_0376_corrected.nii.gz
