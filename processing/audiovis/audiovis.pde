import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup()
{
  size(1024, 512);
  minim = new Minim(this);
  // Use this if you want to read from the mic
  //ai = minim.getLineIn(Minim.STEREO, width, sampleRate, resolution);
  
  // Use this line if you want to load a file
  ai = minim.loadSample("scale.wav", 1024);
  
  halfHeight = height / 2;
  newBackColor();
  fft = new FFT(width, sampleRate);
}

void newBackColor()
{
  backColor = color(
              random(0, 255)
              , random(0, 255)
              , random(0, 255)
              );
}

Minim minim;
FFT fft; // Used to plot the spectrum
AudioSample  ai; // Change this to an AudioSample if you want to load a file instead of using the microphone

// CD Quality
int sampleRate = 44100;
int resolution = 16;

float halfHeight;
float radius = 0;
float threshold = 0.2;
color backColor;

void keyPressed()
{
  if (key == ' ')
  {
    // Uncomment this if you want to play the audio file
    ai.trigger();  
  }
}

float eRadius;

float numBands = 10.0f;
void draw()
{
  background(backColor);
  stroke(255, 255, 0);
  float total = 0;
  
  // Plot the waveform
  for (int i = 0 ; i < ai.bufferSize() ; i ++)
  {
    line(i, halfHeight, i, halfHeight + (ai.left.get(i) * halfHeight));
    total += abs(ai.left.get(i));
  }
  float average = total / ai.bufferSize();
  
  radius = lerp(radius, average, 0.1f);
  ellipse(halfHeight, halfHeight, radius * height, radius * height); 
  
  
  // You always need to do this
  fft.window(FFT.HAMMING);
  fft.forward(ai.left);
  
  stroke(0, 255, 255);
  
  // Find the bin with the maximum value. Every entry in the FFT array is called a bin
  float maxEnergy = 0;
  int maxBin = -1;
  
  for(int i = 0 ; i < fft.specSize() ; i ++)
  {
    float energy = fft.getBand(i);
    if (energy > maxEnergy)
    {
      maxEnergy = energy;
      maxBin = i;
    }
    line(i * 2, height, i * 2 + 1, height - (energy * 50));    
  }
  float freq = fft.indexToFreq(maxBin);
  text("Frequency: " + freq, 10, 10);
  
  if (average > threshold)
  {
    y = lerp(y, map(freq, 400, 1200, height, 0), 0.1f);
  }
  stroke(255, 0, 0);
  fill(255, 0, 0);
  ellipse(50, y, 50, 50);
 
}

float y = 0;