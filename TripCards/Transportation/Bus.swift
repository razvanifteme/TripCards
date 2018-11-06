import Foundation
import UIKit

class Bus {
    
    //MARK: Messages
    let MESSAGE = "Take the airport bus"
    let MESSAGE_FROM_TO = "from %@ to %@."
    let MESSAGE_NO_SEAT = " No seat assignment."
    
    let departure: String
    let arrival: String
    
    init(departure: String, arrival: String) {
        self.departure = departure
        self.arrival = arrival
    }
    
    required init(coder decoder: NSCoder) {
        self.departure = ""
        self.arrival = ""
    }
    
    func getMessage() -> String {
        
        var message = String(format: "\(MESSAGE) \(MESSAGE_FROM_TO)", arguments: [departure, arrival])
        
        message = message + MESSAGE_NO_SEAT
        
        return message
    }
}
