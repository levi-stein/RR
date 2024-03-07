% script RR_path_init
% Initialize the path environment for using the Renaissance Repository.
% All codes in this repository are prefixed with RR, so you'll know when you are using it.
% You can check your path in Matlab at any time by typing "path".
%
% You should call the RR path init codes automatically when firing up Matlab on your computer,
% by appending calls to RR_path_init in the startup.m file of your userpath directory.
% Matlab provides guidance on this subject here: https://www.mathworks.com/help/matlab/ref/startup.html
%
% In short, fire up Matlab, and type the command 'userpath', which will return the name of a directory.
% WITHIN THAT DIRECTORY (important!), edit the file startup.m (or, create a file of this name
% if one doesn't already exist); this file should contain (at least) the following line:
%    RRbase='/Users/bewley/RR'; cd(RRbase); RR_path_init
% NOTE: replace the directory name in single quotes above with the full path to the location
% that you have installed the RR codebase on your computer.  Note that forward slashes (/),
% as shown above, are used on Macs, whereas backslashes (\) are used in Windows; on a Windows machine,
% the full path to this directory might look something like, e.g., 'C:\Users\bewley\RR'
% You can also put other commonly needed Matlab initialization commands in your startup.m file.
%
% Renaissance Robotics codebase, https://github.com/tbewley/RR
% Copyright 2024 by Thomas Bewley, distributed under BSD 3-Clause License.

format compact, close all
% IMPORTANT: modify the definition of RRbase in the startup.m code (see above) to indicate the
% full path to the RR codebase on your computer.
addpath(strcat(RRbase,'/RR_chap01'),strcat(RRbase,'/RR_chap02'),strcat(RRbase,'/RR_chap03'), ...
        strcat(RRbase,'/RR_chap04'),strcat(RRbase,'/RR_chap05'),strcat(RRbase,'/RR_chap06'), ...
        strcat(RRbase,'/RR_chap07'),strcat(RRbase,'/RR_chap08'),strcat(RRbase,'/RR_chap09'), ...
        strcat(RRbase,'/RR_chap10'),strcat(RRbase,'/RR_chap11'),strcat(RRbase,'/RR_chap12'), ...
        strcat(RRbase,'/RR_chap13'),strcat(RRbase,'/RR_chap14'),strcat(RRbase,'/RR_chap15'), ...
        strcat(RRbase,'/RR_chap16'),strcat(RRbase,'/RR_chap17'),strcat(RRbase,'/RR_chap18'), ...
        strcat(RRbase,'/RR_chapAA'),strcat(RRbase,'/RR_chapAB'), ...
        strcat(RRbase,'/NR_chap01'),strcat(RRbase,'/NR_chap02'),strcat(RRbase,'/NR_chap03'), ...
        strcat(RRbase,'/NR_chap04'),strcat(RRbase,'/NR_chap05'),strcat(RRbase,'/NR_chap06'), ...
        strcat(RRbase,'/NR_chap07'),strcat(RRbase,'/NR_chap08'),strcat(RRbase,'/NR_chap09'), ...
        strcat(RRbase,'/NR_chap10'),strcat(RRbase,'/NR_chap11'),strcat(RRbase,'/NR_chap12'), ...
        strcat(RRbase,'/NR_chap13'),strcat(RRbase,'/NR_chap14'),strcat(RRbase,'/NR_chap15'), ...
        strcat(RRbase,'/NR_chap16'),strcat(RRbase,'/NR_chap17'),strcat(RRbase,'/NR_chap18'), ...
        strcat(RRbase,'/NR_chap19'),RRbase) 
disp("Path set for using the Renaissance Repository (RR), including codes discussed")
disp("in the forthcoming texts Renaissance Robotics and Numerical Renaissance.")
disp("Note: please use GitHub Desktop to keep "+RRbase)
disp("in sync with the main RR repository at https://github.com/tbewley/RR"+newline)
% end script RR_path_init
