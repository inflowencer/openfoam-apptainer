#/bin/sh

openmpi="https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.4.tar.gz"
openfoam="https://dl.openfoam.com/source/v2212/OpenFOAM-v2212.tgz"
thirdparty="https://dl.openfoam.com/source/v2212/ThirdParty-v2212.tgz"
pmix="https://github.com/openpmix/openpmix/releases/download/v4.2.3/pmix-4.2.3.tar.gz"
hwloc="https://github.com/open-mpi/hwloc/archive/refs/tags/hwloc-2.8.0.tar.gz"

mkdir -p src
cd src

# Check if files have already been downloaded
check () {
  if test -f "$1"; then
    echo "$1 has already been downloaded."
  else
    wget $2
  fi
}

check "openmpi-4.1.4.tar.gz" $openmpi
check "OpenFOAM-v2212.tgz" $openfoam
check "ThirdParty-v2212.tgz" $thirdparty
check "pmix-4.2.3.tar.gz" $pmix
check "hwloc-2.8.0.tar.gz" $hwloc