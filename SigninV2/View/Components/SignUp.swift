//
//  SignUp.swift
//  SigninV2
//
//  Created by akotecha on 11/30/22.
//

import SwiftUI

struct SignUp: View {

    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        TabView{
            AccountInfo()
                .tabItem {
                    //Image(systemName: "House")
                    Text("Account")
                        .frame(width: 100, height: 100)
                        .background(Color.black)
                }
            PersonalInfo()
                .tabItem{
                    Text("Personal")
                        .bold()
                }
            Goals()
                .tabItem{
                    Text("Goals")
                        .bold()
                        .frame(width: 50, height: 50)
                        .background(Color.black)
                }
            
        }
        .accentColor(.black)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}


