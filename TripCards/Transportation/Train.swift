import Foundation
import UIKit


class Train {
    
    // MARK: Messages
    let MESSAGE = "Take train %@"
    let MESSAGE_FROM_TO = " from %@ to %@."
    let MESSAGE_SEAT = " Sit in seat %@."
    
    
    // MARK: Properties
    let departure: String
    let arrival: String
    let transportation_no: String
    let seat: String
    
    
    init(departure: String, arrival: String, transportation_no: String, seat: String) {
        self.departure = departure
        self.arrival = arrival
        self.transportation_no = transportation_no
        self.seat = seat
    }
    
    
    
    func getMessage() -> String {
        
        var message = String(format: "\(MESSAGE)", arguments: [transportation_no])
        
        message = message + String(format: "\(MESSAGE_FROM_TO)", arguments: [departure, arrival])
        
        if (!seat.isEmpty) {
            message = message + String(format: "\(MESSAGE_SEAT)", arguments: [seat])
        }
        
        return message
    }
}
