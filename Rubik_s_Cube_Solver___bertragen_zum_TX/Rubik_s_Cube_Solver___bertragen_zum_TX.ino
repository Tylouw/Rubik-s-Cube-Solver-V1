#include <Servo.h>
Servo servo;

int pos, eingabe = 0;
int servoOffset = 13;
int sendeGeschwindigkeit = 30;

void setup() {
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if(Serial.available()>0){
    if(Serial.find('a')){
      eingabe = Serial.parseInt();
    }
  }
  if(eingabe == 1){
     cwSenden2(); 
  }
  else if(eingabe == 2){
     ccwSenden2(); 
  }
  else if(eingabe == 3){
     klSenden2(); 
  }
  else if(eingabe == 4){
     wdSenden2(); 
  }
  eingabe = 0;
}

void cwSenden2(){
   digitalWrite(4,HIGH);
   for(int i = 0; i < 2; i++){
    digitalWrite(5,HIGH);
    delay(sendeGeschwindigkeit);
    digitalWrite(5,LOW);
    delay(sendeGeschwindigkeit);
   }
   digitalWrite(4,LOW);
}
void ccwSenden2(){
  digitalWrite(4,HIGH);
   for(int i = 0; i < 3; i++){
    digitalWrite(5,HIGH);
    delay(sendeGeschwindigkeit);
    digitalWrite(5,LOW);
    delay(sendeGeschwindigkeit);
   }
   digitalWrite(4,LOW);
}
void klSenden2(){
  digitalWrite(4,HIGH);
   for(int i = 0; i < 4; i++){
    digitalWrite(5,HIGH);
    delay(sendeGeschwindigkeit);
    digitalWrite(5,LOW);
    delay(sendeGeschwindigkeit);
   }
   digitalWrite(4,LOW);
}
void wdSenden2(){
  digitalWrite(4,HIGH);
   for(int i = 0; i < 5; i++){
    digitalWrite(5,HIGH);
    delay(sendeGeschwindigkeit);
    digitalWrite(5,LOW);
    delay(sendeGeschwindigkeit);
   }
   digitalWrite(4,LOW);
}

