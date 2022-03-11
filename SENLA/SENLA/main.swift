enum Engines{
    case donkey
    case oilEngine
    case solarEngine
}

class Factory{
    private let factoryName: String
    private(set) var cars: [Vehicle] = []
    var amountoOfVehicle: Int {get{cars.count}}
    
    init(factoryName: String) {
        self.factoryName = factoryName
    }
    
    func createVehicle(engineType: Engines) -> Vehicle{
        var car: Vehicle
        switch engineType{
        case .donkey:
            car = Telega(assemblyFactory: factoryName, engine: engineType)
        case .oilEngine:
            car = Parovoz(assemblyFactory: factoryName, engine: engineType)
        case .solarEngine:
            car = Stupa(assemblyFactory: factoryName, engine: engineType)
        }
        cars.append(car)
        
        return car
    }
}


protocol Vehicle{
    var assemblyFactory: String { get }
    var engine: Engines { get set }
    var passengers: Int? { get }

    func changeEngine(with engine: Engines) -> Void
    func showInfo() -> Void
}


class Transport: Vehicle{
    var assemblyFactory: String
    var engine: Engines
    var passengers: Int?
    
    init(assemblyFactory: String, engine: Engines) {
        self.assemblyFactory = assemblyFactory
        self.engine = engine
        self.passengers = 0
    }
    
    func changeEngine(with engine: Engines) {
        self.engine = engine
    }
    
    func showInfo(){
        print( """
                I've been assembled at \(assemblyFactory)
                My engine is \(engine)
                I can carry \(passengers ?? 0) passengers
                """)
    }
}

final class Telega: Transport{
    
    override func showInfo(){
        print("\nHi I am Telega 🚛")
        super.showInfo()
    }
    
    private func cargoTranspotation(){
        print("🚛 -_-_- transproted something someware -_-_-  🏚")
    }
    
}



final class Parovoz: Transport {
    
    override func showInfo(){
        print("\nHi I am Parovoz 🚂")
        super.showInfo()
    }
    
    private func voiceSignal(){
        print("🚂 💨_ tu_ _tu _ _ _tuuuu_ _ _ _ _ _ _ _ _ _ _ _")
    }
    
}

final class Stupa: Transport {
    
    override func showInfo(){
        print("\nHi I am Stupa 🏺")
        super.showInfo()
    }
    
    private func fearCitizens(){
        "____😩__😱__😩__😩_🙀__😨__😩__😩____"
    }
    
}


let factory = Factory(factoryName: "BestFactory")

let stupa = factory.createVehicle(engineType: .solarEngine)
stupa.showInfo()
factory.amountoOfVehicle//1
stupa.changeEngine(with: .oilEngine)
stupa.showInfo()

let parovoz = factory.createVehicle(engineType: .oilEngine)
factory.amountoOfVehicle//2
