# lean-ftl-ch32v307
Testbench for [lean-ftl](https://github.com/sebastien-riou/lean-ftl) on CH32V307 evaluation board (WCH CH32V307V-EVT-R1).

## How to build
````
git clone https://github.com/sebastien-riou/lean-ftl-ch32v307.git
git clone https://github.com/sebastien-riou/lean-ftl.git
cd lean-ftl-ch32v307
./get-local-lean-ftl
make -C debug_cfg/ main-build
````
## How to load in MounRiver Studio
- `cd ~/mounriver-studio-projects` (normally it has been created during mounriver studio installation)
- follow section [How to build](#how-to-build)
- Launch MounRiver Studio
- Choose 'Open existing project'

## How to test
- Connect to the board via UART over WCHLink. This can be done using picocom:
    ````
    picocom /dev/ttyACM0 --baud=115200
    ````
- Press `reset` button