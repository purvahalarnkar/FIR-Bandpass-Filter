clc
clear all
close all

Fs=48000;
F=[6000 7000 12000 17000];
A = [0 1 0]; 
dev=[0.01 0.01 0.01];
[n,fo,ao,w]=firpmord(F,A,dev,Fs);
den=1;

%blackman window
numB=fir2(n,fo,ao,blackman(n+1));
figure(1)
[hB,wB]=freqz(numB,den,10000);
plot(wB/pi*Fs/2,20*log10(abs(hB)));
grid on
title('Frequency response: FIR Bandpass filter, Blackmann window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(2)
zplane(numB,den)
title('Pole-zero plot: FIR Bandpass filter, Blackmann window')

%blackmanharris window
numBH=fir2(n,fo,ao,blackmanharris(n+1));
figure(3)
[hBH,wBH]=freqz(numBH,den,10000);
plot(wBH/pi*Fs/2,20*log10(abs(hBH)));
grid on
title('Frequency response: FIR Bandpass filter, Blackmann Harris window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(4)
zplane(numBH,den)
title('Pole-zero plot: FIR Bandpass filter, Blackmann Harris window')

%chebyshev window
numC=fir2(n,fo,ao,chebwin(n+1));
figure(5)
[hC,wC]=freqz(numC,den,10000);
plot(wC/pi*Fs/2,20*log10(abs(hC)));
grid on
title('Frequency response: FIR Bandpass filter, Chebyshev window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(6)
zplane(numC,den)
title('Pole-zero plot: FIR Bandpass filter, Chebyshev window')

%flattop window
numF=fir2(n,fo,ao,flattopwin(n+1));
figure(7)
[hF,wF]=freqz(numF,den,10000);
plot(wF/pi*Fs/2,20*log10(abs(hF)));
grid on
title('Frequency response: FIR Bandpass filter, Flattop window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(8)
zplane(numF,den)
title('Pole-zero plot: FIR Bandpass filter, Flattop window')

%gaussian window
numG=fir2(n,fo,ao,gausswin(n+1));
[hG,wG]=freqz(numG,den,10000);
figure(9)
plot(wG/pi*Fs/2,20*log10(abs(hG)));
grid on
title('Frequency response: FIR Bandpass filter, Gaussian window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(10)
zplane(numB,den);
title('Pole-zero plot: FIR Bandpass filter, Gaussian window')

%hanning window
numHn=fir2(n,fo,ao,hann(n+1));
[hHn,wHn]=freqz(numHn,den,10000);
figure(11)
plot(wHn/pi*Fs/2,20*log10(abs(hHn)));
grid on
title('Frequency response: FIR Bandpass filter, Hanning window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(12)
zplane(numHn,den)
title('Pole-zero plot: FIR Bandpass filter, Hanning window')

%hamming window
numHm=fir2(n,fo,ao,hamming(n+1));
[hHm,wHm]=freqz(numHm,den,10000);
figure(13)
plot(wHm/pi*Fs/2,20*log10(abs(hHm)));
grid on
title('Frequency response: FIR Bandpass filter, Hamming window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(14)
zplane(numHm,den)
title('Pole-zero plot: FIR Bandpass filter, Hamming window')

%kaiser window
numK=fir2(n,fo,ao,kaiser(n+1));
[hK,wK]=freqz(numK,den,10000);
figure(15)
plot(wK/pi*Fs/2,20*log10(abs(hK)));
grid on
title('Frequency response: FIR Bandpass filter, Kaiser window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(16)
zplane(numK,den)
title('Pole-zero plot: FIR Bandpass filter, Kaiser window')

%rectangular window
numR=fir2(n,fo,ao,rectwin(n+1));
[hR,wR]=freqz(numR,den,10000);
figure(17)
plot(wR/pi*Fs/2,20*log10(abs(hR)));
grid on
title('Frequency response: FIR Bandpass filter, Rectangular window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(18)
zplane(numR,den)
title('Pole-zero plot: FIR Bandpass filter, Rectangular window')

%tukey window
numT=fir2(n,fo,ao,tukeywin(n+1));
[hT,wT]=freqz(numT,den,10000);
figure(19)
plot(wT/pi*Fs/2,20*log10(abs(hT)));
grid on
title('Frequency response: FIR Bandpass filter, Tukey window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(20)
zplane(numT,den)
title('Pole-zero plot: FIR Bandpass filter, Tukey window')

%triangular window
numTr=fir2(n,fo,ao,triang(n+1));
[hTr,wTr]=freqz(numTr,den,10000);
figure(21)
plot(wTr/pi*Fs/2,20*log10(abs(hTr)));
grid on
title('Frequency response: FIR Bandpass filter, Triangular window')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(22)
zplane(numTr,den)
title('Pole-zero plot: FIR Bandpass filter, Triangular window')

%using firpm
num=firpm(n,fo,ao,w);
[H,W]=freqz(num,den,10000);
figure(23)
plot(W/pi*Fs/2,20*log10(abs(H)));
grid on
title('Frequency response: FIR Bandpass filter, using firpm()function')
xlabel('Frequency [Hz]')
ylabel('Magnitude [dB]')
figure(24)
zplane(num,den)
title('Pole-zero plot: FIR Bandpass filter, using firpm()function')


