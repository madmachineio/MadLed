/// This is an LED library for demonstration
import SwiftIO

final public class MadLed {
    
    private let pin: DigitalOut
    private let ledOnValue: Bool
    
    // Initilize the LED.
    public init(_ pin: DigitalOut, ledOnValue: Bool) {
        self.pin = pin
        self.ledOnValue = ledOnValue
    }
    
    // Turn on the LED.
    public func on() {
        pin.write(ledOnValue)
    }
    
    // Turn off the LED.
    public func off() {
        pin.write(!ledOnValue)
    }
    
    public func toggle() {
        let currentValue = pin.getValue()
        pin.write(!currentValue)
    }
}
