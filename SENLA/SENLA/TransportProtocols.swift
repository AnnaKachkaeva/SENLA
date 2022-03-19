protocol Car{
    var assemblyFactory: String { get }
    var engine: Engines { get set }

    func showInfo() -> Void
    
    var steeringWheelColor: Colors {get set}
    
    var tires: Tires { get set }
}

extension Car{
    mutating func changeEngine(to engine: Engines){
        self.engine = engine
    }
    mutating func changeColor(to color: Colors){
        steeringWheelColor = color
    }
    
    mutating func toggleTires(){
        if tires == .summer{
            tires = .winter
        } else {
            tires = .summer
        }
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

