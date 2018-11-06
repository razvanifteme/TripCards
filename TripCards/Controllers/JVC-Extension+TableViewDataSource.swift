import Foundation
import UIKit

extension JourneyViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journey.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let route = journey[indexPath.row]
        let journeyTableViewCell = journeyTableView.dequeueReusableCell(withIdentifier: "JourneyTableViewCell", for: indexPath) as! JourneyTableViewCell
        
        journeyTableViewCell.journeyDetailLabel.text = route
        
        return journeyTableViewCell
    }
}
