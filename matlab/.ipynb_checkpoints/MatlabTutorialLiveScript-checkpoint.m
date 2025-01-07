%[text] ## Matlab Tutorial: Saving, Loading, and Manipulating Matrices
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B = [9, 8, 7; 6, 5, 4; 3, 2, 1];

disp('Matrix A:'); %[output:85d38ea8]
disp(A); %[output:4862bff4]

disp('Matrix B:'); %[output:729ba813]
disp(B); %[output:15efbc4c]

%[text] ### Saving Matrices
%[text] To save matrices to a file, use the `save` function. This will create a .mat file.
save('matrices.mat', 'A', 'B');

%[appendix]
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:85d38ea8]
%   data: {"dataType":"text","outputData":{"text":"Matrix A:\n","truncated":false}}
%---
%[output:4862bff4]
%   data: {"dataType":"text","outputData":{"text":"     1     2     3\n     4     5     6\n     7     8     9\n\n","truncated":false}}
%---
%[output:729ba813]
%   data: {"dataType":"text","outputData":{"text":"Matrix B:\n","truncated":false}}
%---
%[output:15efbc4c]
%   data: {"dataType":"text","outputData":{"text":"     9     8     7\n     6     5     4\n     3     2     1\n\n","truncated":false}}
%---
