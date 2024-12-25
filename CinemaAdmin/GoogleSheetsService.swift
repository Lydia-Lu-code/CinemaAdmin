//
//  MockData.swift
//  CinemaAdmin
//
//  Created by Lydia Lu on 2024/12/25.
//

import Foundation

protocol MovieTicketServiceProtocol {
    func fetchTickets() async throws -> [MovieTicket]
    func updateTicket(_ ticket: MovieTicket) async throws
    func deleteTicket(_ ticket: MovieTicket) async throws
}

struct MockData {
    static let testTickets = [
        MovieTicket(
            bookingDate: Date(),
            movieName: "蜘蛛人3",
            showDate: Date(),
            showTime: "14:30",
            numberOfPeople: 2,
            ticketType: "全票",
            seatNumbers: "A1, A2",
            totalAmount: 600
        ),
        MovieTicket(
            bookingDate: Date(),
            movieName: "蜘蛛人3",
            showDate: Date().addingTimeInterval(3600*2),
            showTime: "16:30",
            numberOfPeople: 1,
            ticketType: "全票",
            seatNumbers: "B1",
            totalAmount: 300
        ),
        MovieTicket(
            bookingDate: Date(),
            movieName: "玩具總動員4",
            showDate: Date(),
            showTime: "13:30",
            numberOfPeople: 3,
            ticketType: "全票",
            seatNumbers: "C1, C2, C3",
            totalAmount: 900
        )
    ]
}

enum ServiceError: Error {
    case fetchError
    case updateError
    case deleteError
}

class GoogleSheetsService: MovieTicketServiceProtocol {
    private let spreadsheetId = "1pTsdAcJLSO4CgNI481cLPJd9WryuClxmVvgUxBOKM8E"
    
    func fetchTickets() async throws -> [MovieTicket] {
        // 模擬網絡請求延遲
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒延遲
        return MockData.testTickets
    }
    
    func updateTicket(_ ticket: MovieTicket) async throws {
        // 實際實現會與 Google Sheets API 互動
        try await Task.sleep(nanoseconds: 1_000_000_000)
        // 如果更新失敗，拋出錯誤
        // throw ServiceError.updateError
    }
    
    func deleteTicket(_ ticket: MovieTicket) async throws {
        try await Task.sleep(nanoseconds: 1_000_000_000)
        // 如果刪除失敗，拋出錯誤
        // throw ServiceError.deleteError
    }
}

