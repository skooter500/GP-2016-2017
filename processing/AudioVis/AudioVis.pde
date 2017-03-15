import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
AudioSample audioInput;
FFT fft;

static final int FRAME_SIZE = 2048;
static final int SAMPLE_RATE = 44100;

public void setup()
{
  size(1024, 512);
  minim = new Minim(this);
  //audioInput = minim.getLineIn(Minim.MONO, FRAME_SIZE, SAMPLE_RATE, 16); // Use this for microphone input
  audioInput = minim.loadSample("scale.wav", FRAME_SIZE); // Use this for input from a file
  fft = new FFT(FRAME_SIZE, SAMPLE_RATE);  
}

boolean lastPressed = false;

public void draw()
{
  
  if (keyPressed && key == ' ' && ! lastPressed)
  {
    audioInput.trigger();
    lastPressed = true;
  }
  else
  {
    lastPressed = false;
  }
  background(0);
  stroke(255);
  float mid = height / 2.0f;
  float average = 0;
  int count = 0;
  for(int i = 1 ; i < audioInput.bufferSize() ; i ++)
  {
    line(i, mid , i, mid + audioInput.left.get(i) * mid);
    average += Math.abs(audioInput.left.get(i));    
  }
  average /= audioInput.bufferSize();  
  fill(255);
   
  fft.window(FFT.HAMMING);
  fft.forward(audioInput.left);
  stroke(0, 255, 255);
  for(int i = 0 ; i < fft.specSize(); i ++)
  {
    float energy = fft.getBand(i);
    line(i, height, i, height - (energy * 50));    
  }
  noFill();
  noStroke();
  stroke(0, 255, 0f);
  float min = 100;    
  float target = min + average * mid;
  circleRadius = lerp(circleRadius, target, 0.1f);
  ellipse(width / 2, height / 2, circleRadius, circleRadius);  
}

float circleRadius = 0;