

let dealer = Dealer(name: "BEST_DEALER")

let factory = Factory(dealerDelegate: dealer)

factory.createVehicle(engineType: .solarEngine)
factory.createVehicle(engineType: .donkey)

factory.sellVehicle()

