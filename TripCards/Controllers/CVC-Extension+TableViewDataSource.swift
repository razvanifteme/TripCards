import Foundation
import UIKit

extension CardsViewController: UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cardsViewModel.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ticketTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TicketTableViewCell", for: indexPath) as! TicketTableViewCell
        
        let ticket = cardsViewModel[indexPath.row]

        ticketTableViewCell.ticketLabel.text = "\(ticket.departure) ➞ \(ticket.arrival) \n\(ticket.transportation)"
        
        return ticketTableViewCell
    }
}
