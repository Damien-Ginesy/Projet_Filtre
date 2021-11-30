%% Hilmi Nadia, Ginesy Damien

%% Introduction

clear;
close all;
clc;

%% Approche par FFT

fmin=300;
fmax=800;
fech=400;
Tech=1/fech;
f=50;
N=10;%nb échantillon
time=0:Tech:N*Tech-Tech;
signal=randn(1,N);

figure;
subplot(2,2,1);
plot(time,signal);
title('représentation temporelle du signal');

%calcul de la puissance vehiculee dans une bande de frequence donnee

%but= se debarasser de la dep de la realisation
%TF(xcorr) estimation de la dsp

%La DSP d'un signal est la TF de la fonction d'autocorrélation=> pas dep de
%la realisation

%spectre de puissance
%=>lisser et moyenner le spectre de puissance avec coeff 1/N dans domaine
%frequentiel
%->periodogramme 

%spectre de puissance
N=length(signal);
X=abs(fft(signal)).^2/N;
fn = 0:fech:(N-1)*fech;
subplot(2,2,2);
plot(fn,fftshift(X));
title('spectre de puissance du signal');

int=methode_rectangle(500,1000,fft(signal),fn);





