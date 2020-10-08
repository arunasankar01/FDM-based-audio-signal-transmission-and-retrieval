clc; clear all;
fs=2000;
t=0:1/fs:1;
Am1=2; 
fm1=4;
m1=Am1*cos(2*pi*fm1*t); %message1
Am2=2; 
fm2=5;
m2=Am2*cos(2*pi*fm2*t); %message2
Am3=2; 
fm3=6;
m3=Am3*cos(2*pi*fm3*t); %message3

Ac1=2; 
fc1=50;
c1=Ac1*cos(2*pi*fc1*t); %carrier1
Ac2=2; 
fc2=150;
c2=Ac2*cos(2*pi*fc2*t); %carrier2
Ac3=2; 
fc3=250;
c3=Ac3*cos(2*pi*fc3*t); %carrier3
%composite signal
x=m1.*c1+m2.*c2+m3.*c3;
figure(1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Composite signal');
%Spectrum of composite signal
%absilute freq on x axis vs magnitude on y axis
N=length(x);
X=fftshift(fft(x,N));
f=fs*[-N/2:N/2-1]/N;
figure(2);
plot(f,abs(X));
xlabel('Absolute frequency');
ylabel('DFT values');
title('Spectrum of composite signal');

%to recover signal 1
% Bandpass filter
[num den]=butter(5,[(fc1-fm1)*1/fs (fc1+fm1)*4/fs]);
bpf_1=filter(num,den,x);
%mixing
z1=2*bpf_1.*c1;
%low pass filtering
[num den]=butter(5,fm1*4/fs);
rec1=filter(num,den,z1);
figure(3);
plot(t,rec1);
xlabel('Time');
ylabel('Amplitude');
title('Recovered signal 1');
%Spectrum of Recovered signal 1
%absilute freq on x axis vs magnitude on y axis
N=length(rec1);
R1=fftshift(fft(rec1,N));
f=fs*[-N/2:N/2-1]/N;
figure(4);
plot(f,abs(R1));
xlabel('Absolute frequency');
ylabel('DFT values');
title('Spectrum of Recovered signal 1');

%to recover signal 2
% Bandpass filter
[num den]=butter(5,[(fc2-fm2)*1/fs (fc2+fm2)*4/fs]);
bpf_2=filter(num,den,x);
%mixing
z2=2*bpf_2.*c2;
%low pass filtering
[num den]=butter(5,fm2*4/fs);
rec2=filter(num,den,z2);
figure(5);
plot(t,rec2);
xlabel('Time');
ylabel('Amplitude');
title('Recovered signal 2');
%Spectrum of Recovered signal 2
%absilute freq on x axis vs magnitude on y axis
N=length(rec2);
R2=fftshift(fft(rec2,N));
f=fs*[-N/2:N/2-1]/N;
figure(6);
plot(f,abs(R2));
xlabel('Absolute frequency');
ylabel('DFT values');
title('Spectrum of Recovered signal 2');

%to recover signal 3
% Bandpass filter
[num den]=butter(5,[(fc3-fm3)*1/fs (fc3+fm3)*4/fs]);
bpf_3=filter(num,den,x);
%mixing
z3=2*bpf_3.*c3;
%low pass filtering
[num den]=butter(5,fm3*4/fs);
rec3=filter(num,den,z3);
figure(7);
plot(t,rec3);
xlabel('Time');
ylabel('Amplitude');
title('Recovered signal 3');
%Spectrum of Recovered signal 3
%absilute freq on x axis vs magnitude on y axis
N=length(rec3);
R3=fftshift(fft(rec3,N));
f=fs*[-N/2:N/2-1]/N;
figure(8);
plot(f,abs(R3));
xlabel('Absolute frequency');
ylabel('DFT values');
title('Spectrum of Recovered signal 3');




%coherent demodulation
%upper path
%z1=2*x.*c1; %product modulator 1 output
%figure(3);
%plot(t,z1);




