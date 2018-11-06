import Foundation
import UIKit


// MARK: - App data through ViewModel
var cardsViewModel: [CardViewModel] = [CardViewModel(cardDataModel: card1),
                                       CardViewModel(cardDataModel: card2),
                                       CardViewModel(cardDataModel: card3),
                                       CardViewModel(cardDataModel: card4),
                                       CardViewModel(cardDataModel: card5),
                                       CardViewModel(cardDataModel: card6),
                                       CardViewModel(cardDataModel: card7),
                                       CardViewModel(cardDataModel: card8),
                                       CardViewModel(cardDataModel: card9)]


let MESSAGE_FINAL_DESTINATION = "You have arrived at your final destination."


// MARK: - Card View Model

class CardViewModel {
    
    private let cardDataModel: CardDataModel
    
    
    init(cardDataModel: CardDataModel) {
        self.cardDataModel = cardDataModel
    }
    
    
    public var departure: String {
        return cardDataModel.departure
    }
    
    public var arrival: String {
        return cardDataModel.arrival
    }
    
    public var transportation: String {
        return cardDataModel.transportation
    }
    
    public var transportation_no: String {
        return cardDataModel.transportation_no
    }
    
    public var gate: String {
        return cardDataModel.gate
    }
    
    public var seat: String {
        return cardDataModel.seat
    }
    
    public var baggage: String {
        return cardDataModel.baggage
    }
}
