import UIKit

class TicketDetailViewController: UIViewController {
    
    var ticketModel: CardViewModel?

    @IBOutlet weak var ticketDetailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        switch ticketModel?.transportation {
        case "Bus":
            self.ticketDetailLabel.text = "Transportation: \(ticketModel!.transportation) \n\nDeparture: \(ticketModel!.departure) \nArrival: \(ticketModel!.arrival)"
        case "Plane":
            if (!self.ticketModel!.baggage.isEmpty) {
                self.ticketDetailLabel.text = "Transportation: \(ticketModel!.transportation) \n\nDeparture: \(ticketModel!.departure) \nArrival: \(ticketModel!.arrival) \n \nTransportation_no: \(ticketModel!.transportation_no) \nGate: \(ticketModel!.gate) \nSeat: \(ticketModel!.seat) \nBaggage: \(ticketModel!.baggage)"
            } else {
                self.ticketDetailLabel.text = "Transportation: \(ticketModel!.transportation) \n\nDeparture: \(ticketModel!.departure) \nArrival: \(ticketModel!.arrival) \n \nTransportation_no: \(ticketModel!.transportation_no) \nGate: \(ticketModel!.gate) \nSeat: \(ticketModel!.seat) \nBaggage: Missing information"
            }
        case "Train":
            self.ticketDetailLabel.text = "Transportation: \(ticketModel!.transportation) \n\nDeparture: \(ticketModel!.departure) \nArrival: \(ticketModel!.arrival) \n \nTransportation_no: \(ticketModel!.transportation_no) \nSeat: \(ticketModel!.seat)"
        default:
            self.ticketDetailLabel.text = "Transportation: \(ticketModel!.transportation) \n\nDeparture: \(ticketModel!.departure) \nArrival: \(ticketModel!.arrival)"
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
