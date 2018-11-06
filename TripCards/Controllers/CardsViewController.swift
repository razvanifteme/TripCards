import UIKit

class CardsViewController: UIViewController {

    
    @IBOutlet weak var cardsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cardsTableView.delegate = self
        cardsTableView.dataSource = self
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            if let destinationViewController = segue.destination as? TicketDetailViewController {
                let indexPath = self.cardsTableView.indexPathForSelectedRow!
                let index = indexPath.row
                
                destinationViewController.ticketModel = cardsViewModel[index]
            }
        } else if segue.identifier == "showJourneySegue" {
            if let destinationViewController = segue.destination as? JourneyViewController {
                destinationViewController.journey = TripSorter().returnTripCollection()
            }
        }
    }


    @IBAction func showJourney(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "showJourneySegue", sender: self)
    }
}

