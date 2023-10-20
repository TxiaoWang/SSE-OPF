%%*************************************************************************
% This function defines the locations of wind and solar PV generators, this
% information will be used to generate the 'caseinput.m' file and the 
% 'pattern.m' file.
%
% NOTE: We use the bus index and gen index to mapping mpc struct, make sure
%       the data you type in the following tables are exactly right.
%    Author: Xiaoting Wang, McGill University, 2023
%
% This function is modified from Hao Sheng, McGill University, 2018
%%*************************************************************************
function userdef = userdef_case9()

%% 1. Specify the locations at where the wind power plants are installed.
% *************************************************************************

% Bus_I,Gen_Idx,c,k,Pr,Vr,Vin,Vout,-PF,+PF.
userdef.wind = [...
     2    2    11.1533     3.2895    100.0000  12.0000   5.5000  24.0000  -0.9500   0.9500;
];
%123456 123456 1234567890 1234567890 1234567890 12345678 12345678 12345678 12345678 12345678.

%% 2. Specify the locations at where the solar PV power plants farms are installed.
% *************************************************************************

% Bus_I,Gen_Idx,alpha,beta,min,max,Pr,Rc,Rstd,-PF,+PF.
userdef.solar = [...
     3   3     1.7000     0.7400   0.0000  1000.0000    100.0000   150.0000  1000.0000  -1.0000   1.0000;
];
%123456 123456 1234567890 1234567890 12345678 1234567890 1234567890 1234567890 1234567890 12345678 12345678.

%% 3. Specify the load variation by var/mean.
% *************************************************************************
userdef.load = [...
     0.05;
];

