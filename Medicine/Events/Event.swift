//
//  Event.swift
//  Medicine
//
//  Created by Jo W on 01/12/23.
//

import Foundation

struct Event: Identifiable {
    enum EventType: String, Identifiable, CaseIterable {
        case work, home, social, sport, unspecified
        var id: String {
            self.rawValue
        }
        var icon: String {
            switch self {
            case .work:
                return "B."
            case .home:
                return "*"
            case .social:
                return "soc"
            case .sport:
                return "@"
            case .unspecified:
                return "un"
            }
        }
    }
    
    var eventType: EventType
    var date: Date
    var note: String
    var id: String
    
    init(id: String = UUID() .uuidString, eventType: EventType = .unspecified, date: Date, note: String) {
        self.eventType = eventType
        self.date = date
        self.note = note
        self.id = id
    }
    
    static var sampleEvents: [Event] {
        return [
            Event (eventType: .home, date: Date().diff(numDays: 0), note: "Take dog to groomers"),
            Event (date: Date().diff (numDays: -1), note: "Get gift for Emily"),
            Event (eventType: .home, date: Date() .diff(numDays: 6), note: "File tax returns."),
            Event (eventType: .social, date: Date().diff(numDays: 2), note: "Dinner party at Dave and Janet's"),
            Event (eventType: .work, date: Date().diff(numDays: -1), note: "Complete Audit."),
            Event (eventType: .sport, date: Date().diff(numDays: -3), note: "Football Game"),
            Event (date: Date() .diff (numDays:-4), note: "Plan for winter vacation.")
        ]
    }
}

extension Date {
    func diff(numDays: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: numDays, to: self) ?? self
    }
}
        
