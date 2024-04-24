@echo off

cd\
cd E:\quakemapWIP248-main\QuakeDev\working


echo Copying Files...
copy E:\quakemapWIP248-main\QuakeDev\working\NoahHoustonSingleplayerGreybox.map E:\quakemapWIP248-main\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
E:\quakemapWIP248-main\QuakeDev\tools\ericw-tools\bin\qbsp.exe NoahHoustonSingleplayerGreybox
pause

echo --------------VIS---------------
E:\quakemapWIP248-main\QuakeDev\tools\ericw-tools\bin\vis.exe NoahHoustonSingleplayerGreybox

copy NoahHoustonSingleplayerGreybox.bsp E:\quakemapWIP248-main\QuakeDev\id1\maps
copy NoahHoustonSingleplayerGreybox.pts E:\quakemapWIP248-main\QuakeDev\id1\maps
copy NoahHoustonSingleplayerGreybox.lit E:\quakemapWIP248-main\QuakeDev\id1\maps
cd\
cd E:\quakemapWIP248-main\QuakeDev
quakespasm-spiked-win64  +map NoahHoustonSingleplayerGreybox
