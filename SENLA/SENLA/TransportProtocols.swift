protocol Cars{
    var assemblyFactory: String { get }
    var engine: Engines { get set }

    func showInfo() -> Void
}

protocol Wheels{
    var tires: Tires { get set }
}
extension Wheels{
    mutating func toggleTires(){
        if tires == .summer{
            tires = .winter
        } else {
            tires = .summer
        }
    }
}

protocol SteeringWheel{
    var steeringWheelColor: Colors {get set}
}

extension SteeringWheel{
    mutating func changeColor(to color: Colors){
        steeringWheelColor = color
    }
}

extension Cars{
    mutating func changeEngine(to engine: Engines){
        self.engine = engine
    }
}

// MARK: NESTED TYPES
enum Colors: String{
    case red = "🔴"
    case white = "⚪️"
    case black = "⚫️"
}

enum Engines{
    case donkey
    case oilEngine
    case solarEngine
}

enum Tires{
    case hoseshoe
    case winter
    case summer
}
