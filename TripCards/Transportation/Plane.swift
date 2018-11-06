import Foundation
import UIKit

class Plane {
    
    // MARK: Messages
    let MESSAGE = "From %@ take flight %@ to %@. Gate %@, seat %@."
    let MESSAGE_BAGGAGE_TICKET = " Baggage drop at ticket counter %@."
    let MESSAGE_NO_BAGGAGE_TICKET = "\nBaggage will be automatically transferred from your last leg."
    
    
    // MARK: Properties
    let departure: String
    let arrival: String
    let transportation_no: String
    let gate: String
    let seat: String
    let baggage: String
    
    init(departure: String, arrival: String, transportation_no: String, gate: String, seat: String, baggage: String) {
        self.departure = departure
        self.arrival = arrival
        self.transportation_no = transportation_no
        self.gate = gate
        self.seat = seat
        self.baggage = baggage
    }
    
    
    func getMessage() -> String {
        
        var message = String(format: "\(MESSAGE)", arguments: [departure, arrival, transportation_no, gate, seat])
        
        if (!baggage.isEmpty) {
            message = message + String(format: "\(MESSAGE_BAGGAGE_TICKET)", arguments: [baggage])
        } else {
            message = message + MESSAGE_NO_BAGGAGE_TICKET
        }
        
        return message
    }
    
    
    func getEndPointMessage() -> String {
        
        var message = String(format: "\(MESSAGE)", arguments: [departure, transportation_no, arrival, gate, seat])
        
        return message
    }
}
