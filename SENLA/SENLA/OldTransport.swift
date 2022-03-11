protocol Vehicle{
    var assemblyFactory: String { get }
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
