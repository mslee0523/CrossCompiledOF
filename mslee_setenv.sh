#!/bin/bash
export FOAM_INST_DIR=/home/mslee/CrossCompiledOF
source $FOAM_INST_DIR/OpenFOAM-2.1.x/etc/bashrc 
WM_OSTYPE=MSwindows 
WM_COMPILER=mingw-w64 
WM_ARCH_OPTION=64 
WM_PRECISION_OPTION=SP 
WM_CC=x86_64-w64-mingw32-gcc 
WM_CXX=x86_64-w64-mingw32-g++ 
compilerInstall=system
WM_MPLIB=SYSTEMOPENMPI
MPI_ARCH_PATH=$FOAM_INST_DIR/MSOPENMPI
cd $WM_PROJECT_DIR/wmake/src; make
ln -s $WM_PROJECT_DIR/wmake/platforms/linux64Gcc $WM_PROJECT_DIR/wmake/platforms/linux64mingw-w64

#in /home/mslee/CrossCompiledOF/ThirdParty-2.1.x/scotch/src/libscotch/Makefile
VERSION	= 5
RELEASE = 1
PATCHLEVEL = 12
export VERSION RELEASE PATCHLEVEL

#change mod
/home/mslee/CrossCompiledOF/OpenFOAM-2.1.x/src/OSspecific/MSwindows/Allwmake
chmod +x Allwmake

#cleaning
wcleanAll 
