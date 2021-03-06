%% Truss Class Example Parameters

%{
    This code contains the parameters of the truss including the joint 
    locations, the member joint connections, the reaction forces locations, 
    and the load magnitude.
%}

% Connection Matrix

    % The rows is the joint number and the columns is the member number
    % 1 if the member is connected to the joint and 0 for anything else 

C = [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;   %Joint 1
     1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0;   %Joint 2
     0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0;   %Joint 3
     0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0;   %Joint 4
     0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0;   %Joint 5
     0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0;   %Joint 6
     0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1;   %Joint 7
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1];  %Joint 8


    % Connection matrix for the support forces in each axis
    % 1 if there is an unknown reaction force that corresponds to the joint

    % 1 at the pin joint going in the x direction
Sx = [1, 0, 0;  %Joint 1
      0, 0, 0;  %Joint 2
      0, 0, 0;  %Joint 3
      0, 0, 0;  %Joint 4
      0, 0, 0;  %Joint 5
      0, 0, 0;  %Joint 6
      0, 0, 0;  %Joint 7
      0, 0, 0]; %Joint 8

    
    % 1 at the pin joint and the roller in the y direction
Sy = [0, 1, 0;  %Joint 1
      0, 0, 0;  %Joint 2
      0, 0, 0;  %Joint 3
      0, 0, 0;  %Joint 4
      0, 0, 0;  %Joint 5
      0, 0, 0;  %Joint 6
      0, 0, 0;  %Joint 7
      0, 0, 1]; %Joint 8

    % Defines the X locations of each joint in m
X = [0, 0, 4, 4, 8, 8, 12, 12];

    % Defines the Y locations of each joint in m
Y = [0, 4, 4, 8, 8, 4, 4, 0];

    % Load vector which represents the known forces acting on each joint
L = [0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 25; 0; 0; 0; 0; 0];


% Saving to a file
save('Truss_Class_Example','C','Sx','Sy','X','Y','L');
