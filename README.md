## Overview
Multiple signals (ranging from 2-5) given as an input to a common channel will be modulated separately using different modulation techniques such as Double Side-Band Suppressed Carrier modulation (DSB-SC) Technique, Single Side-Band Technique and will be multiplexed using Frequency Division Multiplexing Algorithm (FDM) to ensure no mixing, overlapping, interference of any two or more signals takes place. Upon transmission, the user gets to choose the signal that he/she desires to listen to and the desired signal will be received at the receiver end.

## Proposed Work
1. The aim is to transmit two or more different voice/audio signals through a single noise-less channel after modulating them individually with different carrier frequencies. The modulation techniques used here are DSB-SC and SSB.
2. Making use of frequency division multiplexing technique, the voice signals are transmitted and received in the receiver end.
3. To separate the modulated voice signals from the composite signal, band pass filters are used.
4. Then, the signals are to be demodulated and passed through a low pass filter to obtain the original input signals. Here, the user will be given a choice to select the voice/audio that he/she wishes to listen to.

## Technologies and Modules Used
***MATLAB***: A high-level programming language used for numerical computing and data analysis.

***MATLAB Audio Toolbox***: Utilized for audio signal processing, capturing, and playback functionalities.

## Initialisation
The script initializes parameters related to audio signals, carrier frequencies, sampling rates, and duration for audio capture. It captures two voice signals using audiorecorder and visualizes them in the time and frequency domains using plot and fft respectively.

## Modulation
***Message Modulation***: Modulates the voice signals using carrier signals (cos waves) at different frequencies.
***Visualization***: Plots the modulated signals in the time and frequency domains.

## Frequency Division Multiplexing (FDM)
Combines the modulated signals to create a composite signal and displays its frequency spectrum.

## Filtering
1. Applies bandpass and low-pass filtering to extract the modulated signals using filter based on carrier frequencies and cutoff frequencies.
2. Visualizes the filtered signals in the frequency domain using fft.

## Demodulation
1. Performs coherent Double-Sideband Suppressed Carrier (DSBSC) demodulation on the filtered signals.
2. Performs SSB demodulation on the extracted signals.
3. Applies low-pass filtering to retrieve the original audio signals and visualizes them in the time and frequency domains.

## Audio Playback
Allows the user to choose and replay the extracted voice signals using audioplayer.

## Usage
Run the MATLAB script in a MATLAB environment.
Ensure the MATLAB Audio Toolbox is available to execute audio-related functions.
Follow the on-screen instructions to choose and listen to the extracted voice signals.

## Note
Adjust the parameters and duration for audio capture (recordblocking) as required.
Modify the carrier frequencies, filtering parameters, and demodulation techniques for experimentation and different scenarios.
