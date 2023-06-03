# OpenFOAM Apptainer - Bare Metal Performance Container

Targeted for cluster and workstation usage. Runs on [Apptainer](https://apptainer.org/) enabling near bare metal
performance on HPCs circumventing tedious compilation on each machine by employing a container.

## Requirements

You need an [Apptainer installation](https://apptainer.org/docs/admin/main/installation.html).

| **OS** | **Command** |
| ------ | ----------- |
| Spack | ```spack load apptainer```
| Ubuntu | ```sudo add-apt-repository -y ppa:apptainer/ppa```<br> ```sudo apt update -y && sudo apt install -y software-properties-common apptainer``` |
| Debian | ```cd /tmp && wget https://github.com/apptainer/apptainer/releases/download/v1.1.8/apptainer_1.1.8_amd64.deb``` <br> ```sudo apt install -y ./apptainer_1.1.8_amd64.deb``` |
| RHEL / Fedora | ```sudo yum install -y epel-release```<br>```sudo yum install -y apptainer``` |

## Install

```sh
apptainer pull library://inflowencer/openfoam:hpc
```

## Examples

Every example includes a fully automated script for executing the case either **locally** or with a **job manager** such as [SLURM](https://slurm.schedmd.com/documentation.html).

| **Example** | **Description** |
| ------- | ----------- | 
| [LES of surface-mounted cube](examples/LES-cube/) | Based on OpenFOAM tutorial case of a surface mounted cube at Re = 40'000 |
| [Supersonic free jet](examples/supersonic-jet/) | Mach 3 underexpanded jet exiting an elliptical nozzle |
| [DES of high-lift airfoil](examples/highlift-airfoil/) | High-lift airfoil of a wind turbine at Re = 800'000 |

