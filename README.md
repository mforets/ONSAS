
# ONSAS: an Open Nonlinear Structural Analysis Solver (v. 0.1.9)

## Table of Contents
1. [About ONSAS](#aboutonsas)
1. [For users](#howtouseonsas)
1. [Contributions](#contributions)
1. [Contact](#contact)

## About ONSAS <a name="aboutonsas"></a>
------

### What is ONSAS?

ONSAS is a [GNU-Octave](https://www.gnu.org/software/octave/) code for static/dynamic and linear/non-linear analysis of structures. The first version was developed for educational purposes and was published in a [handbook](https://www.fing.edu.uy/~jorgepz/files/Bazzano_P%C3%A9rezZerpa_Introducci%C3%B3n_al_An%C3%A1lisis_No_Lineal_de_Estructuras_2017.pdf) of the course _Análisis no lineal de Estructuras_ taught at [Facultad de Ingeniería](https://www.fing.edu.uy/), Universidad de la República.
  
### What can ONSAS be used for?

The current version allows to perform dynamic/static nonlinear analyses of beam/truss/solid 3D structures. A reduced list of features is listed at next:

* **Elements** 2-node truss, 2-node Bernoulli frame, 4-node tetrahedron.
* **Static analysis methods** Newton-Raphson Method and Cylindrical Arc-Length Method.
* **Dynamic analysis methods** Newmark Method.
* **Loads** nodal loads, time-history user-defined loading program.

### License

The code is distributed under a GNU-GPL 3.0 license.



## How to use ONSAS <a name="howtouseonsas"></a>
------

The user should follow these steps to install and run onsas:

1. Download and install [GNU-Octave](https://www.gnu.org/software/octave/)
1. Download the ONSAS source files https://github.com/onsas/onsas/archive/v0.1.8.zip
1. Open GNU-Octave and run the _ONSAS.m_ script
1. Select one of the available input files (or create one).

We strongly encourage the user to read the user's guide available at [https://www.fing.edu.uy/~jorgepz/onsas/mainUserGuide.html](https://www.fing.edu.uy/~jorgepz/onsas/mainUserGuide.html).


## Contributions <a name="contributions"></a>
------

### Authors
All the authors collaborated in various tasks regarding the design, development, testing and documentation of the code. However, the contribution of each author to the development of the current version was focused in the following tasks:

* [**Jorge M. Pérez Zerpa**](https://www.fing.edu.uy/~jorgepz) <sup>1</sup>, leaded and managed the design and development of the code, developed the assembly functions, nonlinear truss element formulation, nonlinear static analysis function, designed and co-authored Newmark's method function, input and output functions, leaded the generation of the documentation.

* **J. Bruno Bazzano**<sup>1,2</sup>, leaded the development of the nonlinear/linear buckling analysis modules, co-designed the code, developed and implemented validation examples.

* [**Jean-Marc Battini**](https://scholar.google.com/citations?user=7dzVcKoAAAAJ&hl=en)<sup>3</sup>, developed the functions associated with the nonlinear frame element (included in the file elementBeam3DInternLoads.m).

* **Joaquín Viera** <sup>1</sup>, leaded the development of the Linear Analysis module and input files, collaborated in the design and development of the input reading and output generation modules, leaded the development of GUI.

* **Mauricio Vanzulli** <sup>4</sup> co-developed the Newmark's method functions and scripts, developed input files for the dynamic analysis examples.

Affiliations:

1. Instituto de Estructuras y Transporte, Facultad de Ingeniería, Universidad de la República, Montevideo, Uruguay
1. Bazzano & Scelza Ingenieros, Montevideo, Uruguay
1. Department of Civil and Architectural Engineering, KTH Royal Institute of Technology, Stockholm, Sweden
1. Instituto de Ingeniería Mecánica y Producción Industrial, Facultad de Ingeniería, Universidad de la República, Montevideo, Uruguay.

### Contributors
Professor [**Sebastian Toro**](https://scholar.google.com/citations?user=7Z3ruPAAAAAJ&hl=es) from CIMEC Santa Fe, Argentina, kindly provided the functions: f_LectDxf.m, f_ValGrCode.m and f_XData.m, used in the dxf2ONSAS.m function. The functions linearStiffMatPlate3D.m and assemblyUniform.m use part of the [fem_plate_example.m](https://www.fing.edu.uy/~jorgepz/files/fem_plate_example.m) code developed by Jorge Pérez Zerpa and [**Pablo Castrillo**](https://www.fing.edu.uy/~pabloc/).


### Acknowledgments
The development of this version was partially supported by funds provided by the following agencies/projects: Comisión de Investigación Científica (CSIC), Comisión Sectorial de Enseñanza ( project: _Rediseño de prácticas de enseñanza y evaluación en Resistencia de Materiales_, manager, Prof. Pérez Zerpa), Agencia Nacional de Investigación e Innovación (project VIOLETA, code FSE_1_2016_1_131837, manager, Prof. [**Usera**](https://scholar.google.com/citations?user=9U_jEd4AAAAJ&hl=en).

J. M. Pérez Zerpa would like to thank: [**Pablo Blanco**](https://scholar.google.com/citations?user=X0382ScAAAAJ&hl=es) from the [hemolab.lncc.br](http://hemolab.lncc.br/) group at LNCC Brazil, [**Gonzalo Ares**](https://scholar.google.com/citations?user=lCeQOH0AAAAJ&hl=en) from Univ. Nacional de Mar del Plata, [**Gonzalo Maso Talou**](https://unidirectory.auckland.ac.nz/profile/g-masotalou) from the Auckland Bioengineering Institute and [**Diego Figueredo**](https://www.researchgate.net/profile/Diego_Figueredo4) for their numerous comments and suggestions. 

## Contact <a name="contact"></a>
------

You can send an e-mail to _jorgepz[AT]fing.edu.uy_ .
