%Version 20.7.2023
%First section
clear
close all

codingexample_Hamming %Open Simulink model
EbN0 = 2; %Set value of SNR (Value chosen to facilitate task 1)

%Set coding parameters
cdlength = 7; %Set the length of the codeword
msglength = 4; %Assign length of message
parity_bits = cdlength - msglength; %Calculate the number of parity bits

%% 
% Second section
clear

codingexample_modified %Open Simulink model
EbN0 = 2; %Set value of SNR (Value chosen to facilitate task 2)

%Set coding parameters
cdlength = 7; %Set the length of the codeword
msglength = 4; %Assign length of message
parity_bits = cdlength - msglength; %Calculate the number of parity bits