//
//  Home.swift
//  EnumAlert
//
//  Created by Maxim Macari on 7/3/21.
//

import SwiftUI

struct Home: View {
    
    //Declare nil alertTypes
    @State private var alertType: AlertType? = nil
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            
            Button("Title only"){
                alertType = AlertType.ok(title: "Title only")
            }
            
            Button("Titlee and message"){
                alertType = AlertType.ok(title: "Title",
                                         message: "and message")
            }
            
            Button("Single button, (Title and message)"){
                alertType = AlertType.singleButton(title: "Title",
                                                   message: "and messag",
                                                   dismissButton: Alert.Button.default(Text("OK"), action: {
                    //Some action
                    print("Action, single button")
                }))
            }
            
            Button("Two nuttons (no message)"){
                alertType = AlertType.twoButtons(title: "Are you sure about that?", message: "message", primaryButton: Alert.Button.destructive(Text("OK")), secundaryButton: Alert.Button.cancel())
            }
            .alert(item: $alertType ){ $0.alert }
            .buttonStyle(DefaultButtonStyle())
        })
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
