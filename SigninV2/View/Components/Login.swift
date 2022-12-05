import SwiftUI
import Firebase

struct Login: View {
    
    
    var body: some View {
        NavigationView{
            ZStack{
                //  BG
                Image("calm")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("      iLIFT      ")
                        .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 26, fontColor: Color.white))
                        .padding(.bottom,100)
                    
                    
                    /*Button(action: {}){
                        //(ScreenSix)
                        
                        
                        Text("SIGN IN")
                            .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 18, fontColor: Color.black))
                    }
                    .modifier(SFButton())
                    .background(Color.white)
                    .padding(.bottom,30)
                    */
                    
                    NavigationLink(destination: ScreenSix(),label: {
                        Text("LOGIN")
                            .modifier(CustomTextM(fontName: "NunitoSans-Bold",fontSize: 18,fontColor: .black))
                           .frame(maxWidth:.infinity, maxHeight: 60)
                           .background(Color.white)
                    })
                    //  Button SignUp
                    NavigationLink(destination: AccountInfo(),label: {
                        Text("SIGN UP")
                            .modifier(CustomTextM(fontName: "NunitoSans-Bold",fontSize: 18,fontColor: .black))
                            .frame(maxWidth:.infinity, maxHeight: 60)
                            .background(Color.white)
                    })
                    
                    
                    
                }
                .foregroundColor(.white)
                
                .padding(.bottom,60)
                
                
            }
        }
    }
    
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            Login()
        }
    }
    
    
}
struct CustomTextM: ViewModifier {
    let fontName: String
    let fontSize: CGFloat
    let fontColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName, size: fontSize))
            .foregroundColor(fontColor)
    }
}
