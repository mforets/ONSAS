%% Example uniaxialSolid
% Linear elastic solid submitted to uniaxial loading. 
% Geometry given by $L_x$, $L_y$ and $L_z$, tension $p$ applied on 
% face $x=L_x$.
%
% Analytical solution to be compared with numerical:
% $$ u_x(x=L_x,y,z) = \frac{p L_x}{E} $$
%%

% uncomment to delete variables and close windows
clear all, close all

%% General data
dirOnsas = [ pwd '/..' ] ;
problemName = 'uniaxialSolidManual' ;

%% Structural properties

% tension applied and x, y, z dimensions
p = 210e8 ; Lx = 0.5 ; Ly = 0.5 ; Lz = 0.5 ;

% an 8-node mesh is considered with its connectivity matrix
Nodes = [ 0    0    0 ; ...
          0    0   Lz ; ...
          0   Ly   Lz ; ...
          0   Ly    0 ; ...
          Lx   0    0 ; ...
          Lx   0   Lz ; ...
          Lx  Ly   Lz ; ...
          Lx  Ly    0 ] ;

Conec = [ 1 3 2 6 1 1 3 ; ...
          1 5 4 6 1 1 3 ; ...
          1 4 3 6 1 1 3 ; ...
          6 7 8 3 1 1 3 ; ...
          4 8 3 6 1 1 3 ; ...
          4 8 6 5 1 1 3 ] ;          
          
% Material and geometry properties
E = 210e9 ; nu = 0.3 ;
  
hyperElasParams = cell(1,1) ;  
hyperElasParams{1} = [ 1 E nu ] ;

secGeomProps = [ 0 0 0 0 ] ;

% Displacement boundary conditions and springs
nodalSprings = [ 1 inf 0  inf 0   inf 0 ; ...
                 2 inf 0  inf 0   0   0 ; ...
                 3 inf 0  0   0   0   0 ; ...
                 4 inf 0  0   0   inf 0 ; ...
                 5 0   0  inf 0   inf 0 ; ...
                 6 0   0  inf 0   0   0 ; ...
                 8 0   0  0   0   inf 0 ] ;

%% Loading parameters
nodalForce = p * Ly * Lz / 6 ;
nodalVariableLoads = [ (5:8)' nodalForce*[1 2 1 2]' zeros(4,5) ] ;

%% Analysis parameters
nonLinearAnalysisBoolean = 1 ; linearDeformedScaleFactor = 1.0 ;

stopTolIts       = 30     ;
stopTolDeltau    = 1.0e-10 ;
stopTolForces    = 1.0e-6 ;
targetLoadFactr  = 1    ;
nLoadSteps       = 2    ;

controlDofInfo = [ 7 1 1 ] ;

numericalMethodParams = [ 1 stopTolDeltau stopTolForces stopTolIts ...
                            targetLoadFactr nLoadSteps ] ; 

% Analytic sol
analyticSolFlag = 1 ;
analyticCheckTolerance = 1e-8 ;
analyticFunc = @(w) w*p*Lx/E

%% Output parameters
plotParamsVector = [ 3 ] ;
printflag = 2 ;

%% ONSAS execution
% move to onsas directory and ONSAS execution
acdir = pwd ;
cd(dirOnsas);
ONSAS
cd(acdir) ;
