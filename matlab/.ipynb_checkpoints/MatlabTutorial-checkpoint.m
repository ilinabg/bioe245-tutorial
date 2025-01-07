%% Matlab Tutorial: Saving, Loading, and Manipulating Matrices

% This tutorial will guide you through the basics of saving, loading, and manipulating matrices in Matlab.

%% Creating Matrices
% Let's start by creating some matrices.

A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B = [9, 8, 7; 6, 5, 4; 3, 2, 1];

disp('Matrix A:');
disp(A);

disp('Matrix B:');
disp(B);

%% Saving Matrices
% To save matrices to a file, use the `save` function. This will create a .mat file.

save('matrices.mat', 'A', 'B');

%% Loading Matrices
% To load matrices from a file, use the `load` function.

clear; % Clear the workspace to demonstrate loading
load('matrices.mat');

disp('Loaded Matrix A:');
disp(A);

disp('Loaded Matrix B:');
disp(B);

%% Manipulating Matrices
% Now let's perform some basic matrix manipulations.

% Matrix Addition
C = A + B;
disp('Matrix Addition (A + B):');
disp(C);

% Matrix Subtraction
D = A - B;
disp('Matrix Subtraction (A - B):');
disp(D);

% Matrix Multiplication
E = A * B;
disp('Matrix Multiplication (A * B):');
disp(E);

% Element-wise Multiplication
F = A .* B;
disp('Element-wise Multiplication (A .* B):');
disp(F);

% Transpose of a Matrix
G = A';
disp('Transpose of Matrix A:');
disp(G);

% Inverse of a Matrix (if it is invertible)
if det(A) ~= 0
    H = inv(A);
    disp('Inverse of Matrix A:');
    disp(H);
else
    disp('Matrix A is not invertible.');
end

%% Conclusion
% This tutorial covered the basics of creating, saving, loading, and manipulating matrices in Matlab.