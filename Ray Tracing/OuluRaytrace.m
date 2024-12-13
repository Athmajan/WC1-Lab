% Version 28.6.2023
clear 
close all

%Open siteviewer and load 3D map of Oulu city center, data exported from
%openstreetmap.org

viewer = siteviewer("Buildings", "oulu.osm", "Basemap", "topographic");

%%
%Set location and parameters of transmitter antenna

transmitter = txsite("Latitude", 65.011801, ...
    "Longitude", 25.470168, ...
    "Antennaheight", 10, ...
    "TransmitterPower", 10, ...
    "TransmitterFrequency", 5e9);
show(transmitter)

%%
%Set parameters for ray tracer, 0 reflections for line of sight

raytracer = propagationModel("raytracing", ...
    "Method", "sbr", ...
    "MaxNumReflections", 0, ...
    "BuildingsMaterial","concrete", ...
    "TerrainMaterial","concrete");

%Calculate line of sight coverage for the transmitter antenna restricted to
%200 meters for calculation speed

coverage(transmitter,raytracer, ...
    "SignalStrengths",-120:-30, ...
    "MaxRange",300, ...
    "Resolution",3, ...
    "Transparency",0.6)
%%
%Set location and parameters of receiver antenna outside line of sight

receiver = rxsite("Latitude", 65.011100, ...
    "Longitude", 25.471868, ...
    "Antennaheight", 2);
show(receiver)
%%
%Use ray tracer to calculate reflection path and received power of signal

raytracer.MaxNumReflections = 3;
raytrace(transmitter, receiver, raytracer);
raytrace(transmitter, receiver, raytracer);
pr = sigstrength(receiver, transmitter, raytracer);
disp("Non-LOS received power: " + pr + " dBm")
%%
%Set new receiver in line of sight

clearMap(viewer)

show(transmitter)
receiver = rxsite("Latitude", 65.011287, ...
    "Longitude", 25.472033, ...
    "Antennaheight", 2);
show(receiver)
%%
%Raytrace and calculate received power

clearMap(viewer)

raytracer.MaxNumReflections = 1;
raytrace(transmitter, receiver, raytracer)

pr = sigstrength(receiver, transmitter, raytracer);
disp("LOS received power: " + pr + " dBm")
%%
%Set maximum number of reflections to 9 and ray trace and calculate
%received power again

clearMap(viewer)
show(transmitter)
show(receiver)
raytracer.MaxNumReflections = 9;
trace = raytrace(transmitter, receiver, raytracer);
raytrace(transmitter, receiver, raytracer)
pr = sigstrength(receiver, transmitter, raytracer);
disp("Nine reflections received power: " + pr + " dBm")