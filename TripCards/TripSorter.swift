import Foundation
import UIKit

class TripSorter {
    // MARK: - Extract first and last trip
    private func extractFirstLastTrip() -> [CardViewModel] {
        
        var copyArray: [CardViewModel] = []
        
        if (cardsViewModel.count < 2) {
            return cardsViewModel
        }
        
        // Find the start and end point for the trips
        for i in 0..<cardsViewModel.count {
            var hasPreviousTrip = false
            var isLastTrip = true
            
            for j in 0..<cardsViewModel.count {
                if (cardsViewModel[i].departure == cardsViewModel[j].arrival) {
                    hasPreviousTrip = true
                } else if (cardsViewModel[i].arrival == cardsViewModel[j].departure) {
                    isLastTrip = false
                }
            }
            
            
            if (!hasPreviousTrip) {
                copyArray = [cardsViewModel[i]]
                cardsViewModel.remove(at: i)
                copyArray = copyArray + cardsViewModel
                cardsViewModel = copyArray
            } else if (isLastTrip) {
                
            }
        }
        
        cardsViewModel = copyArray
        
        return cardsViewModel
    }
    
    
    // MARK: - Paring trips
    private func paringTrips() {
        
        for i in 0..<cardsViewModel.count - 1 {
            for j in 0..<cardsViewModel.count {
                
                if (cardsViewModel[i].arrival == cardsViewModel[j].departure) {
                    
                    let nextIndex = i + 1
                    let tempRow = cardsViewModel[nextIndex]
                    cardsViewModel[nextIndex] = cardsViewModel[j]
                    cardsViewModel[j] = tempRow
                    
                    break
                }
            }
        }
    }
    
    
    private func sort() -> [CardViewModel] {
        cardsViewModel = extractFirstLastTrip()
        paringTrips()
        
        return cardsViewModel
    }
    
    
    func getTransportation() -> [String] {
        
        var transportationList: [String] = []
        cardsViewModel = sort()
        
        if (cardsViewModel.count == 0) {
            return transportationList
        }
        
        cardsViewModel.forEach { (trip) in
            if (!trip.transportation.isEmpty) {
                if (trip.transportation.elementsEqual("Bus")) {
                    transportationList.append(Bus.init(departure: trip.departure, arrival: trip.arrival).getMessage())
                } else if (trip.transportation.elementsEqual("Plane")) {
                    transportationList.append(Plane.init(departure: trip.departure, arrival: trip.arrival, transportation_no: trip.transportation_no, gate: trip.gate, seat: trip.seat, baggage: trip.baggage ?? "").getMessage())
                } else if (trip.transportation.elementsEqual("Train")) {
                    transportationList.append(Train.init(departure: trip.departure, arrival: trip.arrival, transportation_no: trip.transportation_no, seat: trip.seat).getMessage())
                }
            }
            
            if transportationList.count == cardsViewModel.count {
                transportationList[transportationList.endIndex - 1] = Plane.init(departure: trip.departure, arrival: trip.arrival, transportation_no: trip.transportation_no, gate: trip.gate, seat: trip.seat, baggage: trip.baggage ?? "").getEndPointMessage()
            }
        }
        
        transportationList.append(MESSAGE_FINAL_DESTINATION)
        
        return transportationList
    }
    
    public func returnTripCollection() -> [String] {
        return getTransportation()
    }

}

