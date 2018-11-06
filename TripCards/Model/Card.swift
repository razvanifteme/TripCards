import Foundation
import UIKit


//MARK: - Card Model

struct CardDataModel {
    
    // MARK: Properties
    
    var departure: String           // Ticket departure
    var arrival: String             // Ticket arrival
    var transportation: String      // Ticket transportation method
    var transportation_no: String   // Ticket transportation number
    var gate: String                // Ticket flight gate
    var seat: String                // Ticket seat
    var baggage: String             // Ticket baggage

}


// MARK: - Model Data
let card1 = CardDataModel(departure: "Iasi", arrival: "Bristol", transportation: "Plane", transportation_no: "KLM352", gate: "7", seat: "44C", baggage: "")
let card2 = CardDataModel(departure: "London", arrival: "New York JFK", transportation: "Plane", transportation_no: "NY22", gate: "22", seat: "7B", baggage: "")
let card3 = CardDataModel(departure: "Girona Airport", arrival: "London", transportation: "Plane", transportation_no: "LON44", gate: "9", seat: "12A", baggage: "334")
let card4 = CardDataModel(departure: "Bucharest", arrival: "Iasi", transportation: "Train", transportation_no: "CFR49", gate: "", seat: "22B", baggage: "")
let card5 = CardDataModel(departure: "Barcelona", arrival: "Girona Airport", transportation: "Bus", transportation_no: "", gate: "", seat: "", baggage: "")
let card6 = CardDataModel(departure: "Berlin", arrival: "Bucharest", transportation: "Plane", transportation_no: "BL14", gate: "3", seat: "7C", baggage: "")
let card7 = CardDataModel(departure: "New York JFK", arrival: "Tokyo", transportation: "Plane", transportation_no: "JFK17", gate: "17", seat: "65F", baggage: "")
let card8 = CardDataModel(departure: "Tokyo", arrival: "Berlin", transportation: "Plane", transportation_no: "TK14", gate: "3", seat: "21B", baggage: "")
let card9 = CardDataModel(departure: "Madrid", arrival: "Barcelona", transportation: "Train", transportation_no: "78A", gate: "", seat: "45B", baggage: "")
