import Foundation
import UIKit

//Coordinates to declare and store locations of stores and targets

struct Location {
    let x: Double
    let y: Double
}

//Store locations and range

let storeOne = Location(x: 3.0, y: 3.0)
let storeTwo = Location(x: 7.53, y: 8.675)
let storeRange: Double = 4.25

// Properties that will be used in an  array for storage of customer data

struct Customer{
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let coord: Location
}

// Array to store Customers information using struct Customer properties

let allCustomers: [Customer] = [
    Customer(name: "Salman Sattar", email: "salman.sattar@trisstudent.ca", 
             phoneNumber: "647-111-0000", acceptedNewsletter: true, coord: Location(x: 2.2, y: 3.7)),
    Customer(name: "Joe Biden", email: "joe.biden@whitehouse.com", 
             phoneNumber: "905-222-1111", acceptedNewsletter: false, coord: Location(x: 3.7, y: 7.7)),
    Customer(name: "Mike Zingerlli", email: "mike.zing@yahoo.com", 
             phoneNumber: "416-232-0000", acceptedNewsletter: false, coord: Location(x: 11.275, y: 10.17)),
    Customer(name: "Peter Bilt", email: "peter.b@aol.com", 
             phoneNumber: "817-000-9238", acceptedNewsletter: true, coord: Location(x: 5.5, y: 5.5)),
    Customer(name: "John Doe", email: "john.doe@gmail.com", 
             phoneNumber: "905-232-1111", acceptedNewsletter: true, coord: Location(x: 2.2, y: 3.7)),
    Customer(name: "Faraz Sadiq", email: "faraz.s@gmail.com", 
             phoneNumber: "705-333-9584", acceptedNewsletter: false, coord: Location(x: 10.2, y: 11.2)),
    Customer(name: "Daniel Burrows", email: "Daniel@gmail.com", 
             phoneNumber: "289-900-4545", acceptedNewsletter: true, coord: Location(x: 4.52, y: 8.7)),
    Customer(name: "Jimmy Kagney", email: "jim.k@hotmail.com",  
             phoneNumber: "289-343-4444",  acceptedNewsletter: true, coord: Location(x: 3.625, y: 1.57)),
    Customer(name: "John Cleese", email: "john.cleese@gmail.com", 
             phoneNumber: "705-777-0101", acceptedNewsletter: true, coord: Location(x: 12.2, y: 13.7)),
    Customer(name: "Nike Chang", email: "nike@aol.com", 
             phoneNumber: "343-333-1111", acceptedNewsletter: true, coord: Location(x: 9.2, y: 11.25))
]

// Calculate "totalDistance" of store to target location of customer - book pages 227/228

func totalDistance(from origin: Location, to destination: Location) -> Double {
    let distX = (origin.x - destination.x)
    let distY = (origin.y - destination.y)
    return sqrt(distX * distX + distY * distY)
}
// Function that compares range (customer and store) and prints out close by patrons.

func custNearStore(storeLoc: Location, patrons: [Customer]) -> Void{
    for customer in patrons {
        let distance = totalDistance(from: storeLoc, to: customer.coord)
        if distance <= storeRange {
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}
print("-------------------------------")
print("Customers within storeOne range")
print("-------------------------------")
custNearStore(storeLoc: storeOne, patrons: allCustomers)
print("-------------------------------")
print("Customers within storeTwo range")
print("-------------------------------")
custNearStore(storeLoc: storeTwo, patrons: allCustomers)
