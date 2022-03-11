class Dealer{
    let name: String
    var vehicles: [Cars]
    
    init(name: String){
        self.name = name
        vehicles = []
    }
    
    func byVehicles(vehicles: [Cars]){
        self.vehicles.append(contentsOf: vehicles)
    }
    
    func sellVehicle(vehicle: Cars) -> Cars?{
        if let index = vehicles.firstIndex(where: {$0.engine == vehicle.engine}) {
            print("we've got the vehicle")
            return vehicles.remove(at: index)
        } else {
            print("sorry^ we can't help you")
            return nil
        }
    }
}
