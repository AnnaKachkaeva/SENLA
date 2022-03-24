import Foundation

class Factory{
    private(set) var factoryName = "BEST_FACTORY"
    private(set) var cars: [Car] = []
    var amountoOfVehicle: Int {get{cars.count}}
    
    let dealerDelegate: CarDealer  //= Dealer(name: "Best_Dealer")
    
    init(dealerDelegate: CarDealer){
        self.dealerDelegate = dealerDelegate
    }
    
    
    func sellVehicle() -> Car? {
        dealerDelegate.sellVehicle(vehicle: cars.popLast())
    }
    
    @discardableResult
    func createVehicle(engineType: Engines) -> Car{
        var car: Car
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
