

let factory = Factory(factoryName: "BEST_FACTORY")

let car1 = factory.createVehicle(engineType: .donkey)
let car2 = factory.createVehicle(engineType: .oilEngine)
let car3 = factory.createVehicle(engineType: .solarEngine)

print(factory.sellVehicle(vehicle: car2))
print(factory.sellVehicle(vehicle: car2))






