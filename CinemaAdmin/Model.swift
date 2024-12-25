//
//  Model.swift
//  CinemaAdmin
//
//  Created by Lydia Lu on 2024/12/25.
//

import Foundation

// MARK: - Model
struct MovieTicket: Codable, Equatable {
    var bookingDate: Date
    var movieName: String
    var showDate: Date
    var showTime: String
    var numberOfPeople: Int
    var ticketType: String
    var seatNumbers: String
    var totalAmount: Double
    
    static func == (lhs: MovieTicket, rhs: MovieTicket) -> Bool {
        return lhs.bookingDate == rhs.bookingDate &&
               lhs.movieName == rhs.movieName &&
               lhs.showDate == rhs.showDate &&
               lhs.showTime == rhs.showTime &&
               lhs.numberOfPeople == rhs.numberOfPeople &&
               lhs.ticketType == rhs.ticketType &&
               lhs.seatNumbers == rhs.seatNumbers &&
               lhs.totalAmount == rhs.totalAmount
    }
}


