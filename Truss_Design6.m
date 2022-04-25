%% Truss Design 6 Parameters

C = [1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0;   %Joint 1
     1,	0,	1,	1,	1,	0,	0,	0,	0,	0,	0;   %Joint 2
     0,	1,	1,	0,	0,	1,	0,	0,	0,	0,	0;   %Joint 3
     0,	0,	0,	1,	0,	0,	1,	0,	0,	1,	0;   %Joint 4
     0,	0,	0,	0,	1,	1,	1,	1,	1,	0,	0;   %Joint 5
     0,	0,	0,	0,	0,	0,	0,	1,	0,	0,	1;   %Joint 6
     0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1];  %Joint 7

Sx = [1, 0, 0;  %Joint 1
      0, 0, 0;  %Joint 2
      0, 0, 0;  %Joint 3
      0, 0, 0;  %Joint 4
      0, 0, 0;  %Joint 5
      0, 0, 0;  %Joint 6
      0, 0, 0]; %Joint 7

Sy = [0, 1, 0;  %Joint 1
      0, 0, 0;  %Joint 2
      0, 0, 0;  %Joint 3
      0, 0, 0;  %Joint 4
      0, 0, 0;  %Joint 5
      0, 0, 0;  %Joint 6
      0, 0, 1]; %Joint 7

X = [0, 10, 10, 20, 20, 32, 32];

Y = [0, 0, 9, 0, 9, 9, 0];

L = [0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 32; 0; 0; 0];

% Saving to a file
save('Truss_Design6','C','Sx','Sy','X','Y','L');