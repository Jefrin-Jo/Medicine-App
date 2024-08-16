//
//  CalendarView.swift
//  Medicine
//
//  Created by Jo W on 24/11/23.
//

import SwiftUI

struct CalendarView: View {
    @State private var selectedDate = Date()
    @State private var events = [Event]()
    
    var body: some View {
        Text("Hello World")
    }
    

}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
