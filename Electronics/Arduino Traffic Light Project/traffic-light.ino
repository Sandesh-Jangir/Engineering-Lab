void setup(){
    pinMode(13, OUTPUT);
    pinMode(12, OUTPUT);
    pinMode(11, OUTPUT);
}
void loop(){
    // Turn on the red light, for 5 seconds
    digitalWrite(13, HIGH);
    delay(5000);
    digitalWrite(13, LOW);

    // Turn on the yellow light, for 5 seconds
    digitalWrite(12, HIGH);
    delay(5000);
    digitalWrite(12, LOW);

    // Turn on the green light, for 5 seconds
    digitalWrite(11, HIGH);
    delay(5000);
    digitalWrite(11, LOW);
}