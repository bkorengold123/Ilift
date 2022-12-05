//
//  Goals.swift
//  SigninV2
//
//  Created by akotecha on 11/30/22.
//

import Foundation
import SwiftUI

struct Goals: View {
    
    //We are not using this page any more
    
    var body: some View {
        ZStack{
            //  BG
            Image("calm")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("      What are your goals?      ")
                    .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 18, fontColor: Color.white))
                
            }
            .frame(height: 45)
            .overlay(Capsule().stroke(Color.white, lineWidth: 5).frame(height: 40))
            .padding(.bottom,600)
            
            VStack{
                Text("      iLIFT      ")
                    .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 18, fontColor: Color.white))
                
            }
            .frame(height: 5000)
            .padding(.bottom,-700)
            
            VStack{
                
                
                /*
                 Text("What are your goals?")
                 .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 18, fontColor: Color.blue))
                 **/
                
                
                //  Button SignIn
                Button(action: {
                    //(ScreenSix)
                }){
                    Text("Bulk")
                        .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 18, fontColor: Color.white))
                    
                }
                .modifier(SFButton())
                //.background(Color.white)
                .padding(.top,2)
                .frame(height: 45)
                .overlay(Rectangle().stroke(Color.white, lineWidth: 2).frame(height: 40))
                
                
                Button(action: {
                    //(ScreenSix)
                }){
                    Text("Maintain")
                        .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 18, fontColor: Color.white))
                }
                .modifier(SFButton())
                //.background(Color.white)
                .padding(.top,0)
                .frame(height: 45)
                .overlay(Rectangle().stroke(Color.white, lineWidth: 2).frame(height: 40))
                //  Button SignUp
                Button(action: {
                    
                }){
                    Text("Cut")
                        .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 18, fontColor: Color.white))
                }
                .modifier(SFButton())
                //.background(Color.white)
                .padding(.bottom,2)
                .frame(height: 40)
                .overlay(Rectangle().stroke(Color.white, lineWidth: 2).frame(height: 40))
                
                
                
            }
            .foregroundColor(.white)
            .padding(.horizontal,20)
            .padding(.bottom,100)
            
            
        }
    }
    
    
    struct Goals_Previews: PreviewProvider {
        static var previews: some View {
            Goals()
        }
    }
    struct CustomText: ViewModifier {
        let fontName: String
        let fontSize: CGFloat
        let fontColor: Color
        
        func body(content: Content) -> some View {
            content
                .font(.custom(fontName, size: fontSize))
                .foregroundColor(fontColor)
        }
    }
    struct SFButton: ViewModifier {
        func body(content: Content) -> some View {
            content
                .frame(maxWidth: .infinity)
                .frame(height: 56, alignment: .leading)
        }
    }
}

