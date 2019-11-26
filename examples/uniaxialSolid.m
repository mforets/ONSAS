%% Example uniaxialSolid
%% Linear elastic solid submitted to uniaxial loading.

clear all, close all

dirOnsas = '..' ;

%~ inputONSASversion = '0.1.9';
problemName = 'uniaxialSolid' ;

% Pressure and x, y, z dimensions
p = -210e8 ; Lx = 0.5 ; Ly = 0.5 ; Lz = 0.5 ;

Nodes = [ 0    0    0 ; ...
          0    0   Lz ; ...
          0   Ly   Lz ; ...
          0   Ly    0 ; ...
          Lx   0    0 ; ...
          Lx   0   Lz ; ...
          Lx  Ly   Lz ; ...
          Lx  Ly    0 ] ;

Conec = [ 1 3 2 6 1 0 3 ; ...
          1 5 4 6 1 0 3 ; ...
          1 4 3 6 1 0 3 ; ...
          6 7 8 3 1 0 3 ; ...
          4 8 3 6 1 0 3 ; ...
          4 8 6 5 1 0 3 ] ;          
          
% Material properties
E = 210e9 ; nu = 0.3 ;
  
hyperElasParams = cell(1,1) ;  
hyperElasParams{1} = [ 1 E nu ] ;

% Sections
secGeomProps = [ 0 0 0 0 ] ;

% Boundary conditions
nodalSprings = [ 1 inf 0  inf 0   inf 0 ; ...
                 2 inf 0  inf 0   0   0 ; ...
                 3 inf 0  0   0   0   0 ; ...
                 4 inf 0  0   0   inf 0 ; ...
                 5 0   0  inf 0   inf 0 ; ...
                 6 0   0  inf 0   0   0 ; ...
                 8 0   0  0   0   inf 0 ] ;

% Nodal forces
nodalForce = p*Ly*Lz/6 ;
nodalConstantLoads = [ (5:8)' nodalForce*[1 2 1 2]' zeros(4,5) ] ;

% Analysis parameters
nonLinearAnalysisBoolean = 0 ; linearDeformedScaleFactor = 1.0 ;

% Plot options
plotParamsVector = [ 3 ] ; printflag = 2 ;

% Analytic sol
analyticSolFlag = 3 ; analytSol = [ p*Lx/E ] ; analyticSolDofs = [ 6*(7-1)+1 ] ;
analyticCheckTolerance = 1e-4 ;


acdir = pwd ;
cd(dirOnsas);

ONSAS

cd(acdir) ;
  