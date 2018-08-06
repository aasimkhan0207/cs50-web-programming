import os
import sqlalchemy

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine("postgresql://postgres:shummu12345@localhost:5432/cs50")
db = scoped_session(sessionmaker(bind=engine))

def main():
    flights = db.execute("SELECT * FROM flights").fetchall()
    for flight in flights:
        print(flight)

    # input flight id
    flight_id = int(input("\nFlight ID: "))

    # make sure there exist flight with given flight id

    flight = db.execute("SELECT origin, destination, duration FROM flights WHERE id = :id", {"id": flight_id}).fetchone()
    # if above query results NONE
    if flight is None:
        print("No such flight exist")
        return

    # List passengers.
    passengers = db.execute("SELECT name FROM passengers WHERE flight_id = :id",{"id":flight_id}).fetchall()

    print("\nPassengers:")
    if len(passengers) == 0:
        print("No passengers.")

    for passenger in passengers:
        print(passenger.name)

if __name__ == "__main__":
    main()
