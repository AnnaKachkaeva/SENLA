import Foundation

class Factory{
    private let factoryName: String
    private(set) var cars: [Cars] = []
    var amountoOfVehicle: Int {get{cars.count}}
    
    let dealerDelegate = Dealer(name: "Best_Dealer")
    
    init(factoryName: String) {
        self.factoryName = factoryName
    }
    
    func sellVehicle(vehicle: Cars) -> Cars? {
        dealerDelegate.sellVehicle(vehicle: vehicle)
    }
    
    func createVehicle(engineType: Engines) -> Cars{
        var car: Cars
        switch engineType{
        case .donkey:
            car = DonkeyCar(assemblyFactory: factoryName)
        case .oilEngine:
            car = CosmoCar(assemblyFactory: factoryName)
        case .solarEngine:
            car = Bus(assemblyFactory: factoryName)
        }
        cars.append(car)
        
        return car
    }
}
