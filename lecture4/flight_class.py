class Flight:

    def __init__(self,origin,destination,duration):
        self.origin = origin
        self.destination = destination
        self.duration = duration

    def print_info(self):
        print(f"Flight origin: {self.origin}")
        print(f"Flight destination: {self.destination}")
        print(f"Flight duration: {self.duration}")

    def delay(self,amount):
        self.duration += amount

def main():
    f1 = Flight('Washington','NY',40)
    f1.print_info()
    f1.delay(5)
    print('Flight 1 delayed by 5 mins')
    f1.print_info()

if __name__ == "__main__":
    main()
