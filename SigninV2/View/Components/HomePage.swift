

import Firebase
import SwiftUI

//RAF
/*
 We want this to be a tab view with
 
 Main Screen (Try to make this the middle tab in the tab screen):
 Calorie tracker
 
 The placement of the other screens is up to you:
 Workout screen - tells you your workout split
 
 Maybe a settings screen as well, so you can change ur account details
 
 I can't think of any other screens
 */

struct HomePage: View {
    
    func getUserData() {
        let db = Firestore.firestore()
        
        let docRef = db.collection("users").document(userID)
        
        docRef.getDocument{(document,error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? nil
                print("User data: \(dataDescription)")
            }
                print("User doesn't exist")
        }
    }
 
    var body: some View {
        if ( ScreenSix.loginStatus == "LOGIN SUCCESS")
             {
             
        ZStack{
            //  BG
            Image("calm")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Welcome")
                }
            }
        } else {
            ScreenSix()
            Text("LOGIN FAILED, TRY AGAIN")
        }
    }
}
    struct HomePage_Previews: PreviewProvider{
    static var previews: some View{
        HomePage()
    }
}

