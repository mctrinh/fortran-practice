=== Installation Nov 2021 ===

Prerequisite:

1. Visual Studio 2019 IDE.
2. Visual Studio Code (communicate with GitHub).
3. Intel oneAPI Base Toolkit, v. 2021.4 (auto detect an integrated IDE - i.e. VS 2019).
4. Intel oneAPI HPC Toolkit, v. 2021.4 (auto detect an integrated IDE - i.e. VS 2019). Contain Fortran compiler.

Note:
0. Should delete the .vs hidden folder in the solution folder before running the solution file (if not, will be incompatible).
1. Should install VS and VSC before installing Intel oneAPI.
2. To develop and run GPU-accelerated applications in Intel oneAPI toolkits, PC should have GPUs made by Intel. Otherwise, the applications can still be used with CPU. My PC: Intel CPUs + NVIDIA GPUs.
3. Codeplay builds oneAPI support, the first release of its Data Parallel C++ (DPC++) compiler for Nvidia GPUs.
