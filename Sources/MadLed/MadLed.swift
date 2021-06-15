/// This is an LED library for demonstration
import SwiftIO

final public class MadLed {
    
    private let pin: DigitalOut
    private let ledOnValue: Bool

    public init(_ pin: DigitalOut, ledOnValue: Bool) {
        self.pin = pin
        self.ledOnValue = ledOnValue
    }

    public func on() {
        pin.write(ledOnValue)
    }

    public func off() {
        pin.write(!ledOnValue)
    }

    public func toggle() {
        let currentValue = pin.getValue()
        pin.write(!currentValue)
    }
}