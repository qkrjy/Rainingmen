#define rainingPin A0

int rain;

void setup() {
  pinMode(rainingPin, INPUT);
  Serial.begin(9600);
}

void loop() {

  int val = analogRead(rainingPin);

  if(val <400)
  {
    Serial.println("raining");
  }
  
}


 


 
