protocol CarDealer{
    var vehicles: [Car] { get set }
    func sellVehicle(vehicle: Car?) -> Car?
}


class Dealer: CarDealer{
    let name: String
    var vehicles: [Car]
    
    init(name: String){
        self.name = name
        vehicles = []
    }

    func sellVehicle(vehicle: Car?) -> Car?{
        guard let car = vehicle else {
            print("no more cars")
            return nil
        }
        print("here is your car \(car)")
        return car
    }
}
