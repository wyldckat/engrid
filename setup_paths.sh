#!/bin/bash

# Check if all parameters are present
# If no, exit
if [ $# -ne 1 ]
then
        echo "usage :"
        echo "source `basename $0` engits/ubuntu/opensuse"
        exit 0
fi

#Ubuntu
if [ $1 = 'ubuntu' ]
then
  export VTKLIBDIR=/usr/lib/
  export VTKINCDIR=/usr/include/vtk-5.0/
fi

#OpenSUSE
if [ $1 = 'opensuse' ]
then
  export VTKLIBDIR=/usr/lib64
  export VTKINCDIR=/usr/include/vtk
fi

#enGits local system
if [ $1 = 'engits' ]
then
  export VTKLIBDIR=/opt/shared/VTK/lib/vtk-5.2
  export VTKINCDIR=/opt/shared/VTK/include/vtk-5.2
fi

export LD_LIBRARY_PATH=$VTKLIBDIR:$LD_LIBRARY_PATH