class Passenger:
    def __init__(self,name):
        self.name = name

class Flight:
    counter = 1 # will be incremented every time a Flight is created
    def __init__(self,origin,destination,duration):
        self.origin = origin
        self.destination = destination
        self.duration = duration

        # Keep track of id no.
        self.id = Flight.counter
        Flight.counter += 1

        # Keep track of passengers
        self.passengers = []

    def add_passenger(self,p):
        self.passengers.append(p)
        p.flight_id = self.id

    def print_info(self):
        print(f"Flight origin: {self.origin}")
        print(f"Flight destination: {self.destination}")
        print(f"Flight duration: {self.duration}")

        print()
        print("passengers: ")
        for p in self.passengers:
            print(f"{p.name}")



def main():
    f1 = Flight('NY','Paris',540)
    f2 = Flight('Delhi','LKO',40)

    bob = Passenger('Bob')
    max = Passenger('Max')

    f1.add_passenger(bob)
    f1.add_passenger(max)

    f1.print_info()

    print(bob.flight_id)

if __name__ == '__main__':
    main()
