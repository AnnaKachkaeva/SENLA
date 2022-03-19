struct DonkeyCar: Car{
    var assemblyFactory: String
    var tires: Tires
    var engine: Engines
    var steeringWheelColor: Colors
    
    func showInfo() {
        print( """
                Hi I am Telega 🚛
                I've been assembled at \(assemblyFactory)
                My engine is \(engine), steering wheel is \(steeringWheelColor), my tires are \(tires)
                """)
    }
    
    init(assemblyFactory: String) {
        self.assemblyFactory = assemblyFactory
        self.engine = .donkey
        self.tires = .summer
        self.steeringWheelColor = .white
    }
    
    mutating func superFunction(){
        tires = .hoseshoe
    }
}

struct CosmoCar: Car{
    var assemblyFactory: String
    var tires: Tires
    var engine: Engines
    var steeringWheelColor: Colors
    var timeMultiplier: Int = 1
    
    func showInfo() {
        print( """
                Hi I am Rocket 🚀
                I've been assembled at \(assemblyFactory)
                My engine is \(engine), steering wheel is \(steeringWheelColor), my tires are \(tires)
                """)
    }
    
    init(assemblyFactory: String) {
        self.assemblyFactory = assemblyFactory
        self.engine = .solarEngine
        self.tires = .summer
        self.steeringWheelColor = .black
    }
    
    mutating func superFunction(){
        timeMultiplier = Int.random(in: 0...10)
    }
}

struct Bus: Car{
    var assemblyFactory: String
    var tires: Tires
    var engine: Engines
    var steeringWheelColor: Colors
    var isSteeringWheelRight: Bool

    
    func showInfo() {
        print( """
                Hi I am Buss 🚃
                I've been assembled at \(assemblyFactory)
                My engine is \(engine), steering wheel is \(steeringWheelColor), my tires are \(tires)
                """)
    }
    
    init(assemblyFactory: String) {
        self.assemblyFactory = assemblyFactory
        self.engine = .oilEngine
        self.tires = .winter
        self.steeringWheelColor = .red
        self.isSteeringWheelRight = true
    }
    
    mutating func superFunction(){
        if isSteeringWheelRight {
            isSteeringWheelRight = false
        } else {
            isSteeringWheelRight = true
        }
    }
}
