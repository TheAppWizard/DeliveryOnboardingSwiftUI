//
//  Parallax3DObjects.swift
//  DeliveryOnboardingSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 19/06/21.
//

import SwiftUI

struct Parallax3DObjects: View {
    
    @State private var jar = false
    @State private var cream = false
    @State private var pendrive = false
    @State private var fan = false
    
    var body: some View {
        
        ZStack{
            
            VStack{
            HStack{
                
                ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.gray)
                    .blur(radius: 3.0)
                    .opacity(0.2)
                    .frame(width: 175, height: 175, alignment: .center)
                    
                    Image("jar")
                        .resizable()
                        .frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .opacity(0.8)
                        .rotationEffect(.degrees(jar ? 10 : -10))
                        .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                        .onAppear() {
                                self.jar.toggle()
                                }
                    
                  }
                    
                ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.gray)
                    .blur(radius: 3.0)
                    .opacity(0.2)
                    .frame(width: 175, height: 175, alignment: .center)
                    
                    Image("pendrive")
                        .resizable()
                        .frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .opacity(0.8)
                        .rotationEffect(.degrees(pendrive ? 10 : -10))
                        .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                        .onAppear() {
                                self.pendrive.toggle()
                                }
                    
                  }
                
            }
                HStack{
                    ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.gray)
                        .blur(radius: 3.0)
                        .opacity(0.2)
                        .frame(width: 175, height: 175, alignment: .center)
                        
                        Image("fan")
                            .resizable()
                            .frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .opacity(0.8)
                            .rotationEffect(.degrees(fan ? 10 : -10))
                            .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                            .onAppear() {
                                    self.fan.toggle()
                                    }
                        
                      }
                        
                    ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.gray)
                        .blur(radius: 3.0)
                        .opacity(0.2)
                        .frame(width: 175, height: 175, alignment: .center)
                        
                        Image("cream")
                            .resizable()
                            .frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .opacity(0.8)
                            .rotationEffect(.degrees(cream ? 10 : -10))
                            .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                            .onAppear() {
                                    self.cream.toggle()
                                    }
                        
                      }
                    
                }
            }
                
            }.offset(x: 0, y: -100)
        }
    }


struct Parallax3DObjects_Previews: PreviewProvider {
    static var previews: some View {
        Parallax3DObjects()
    }
}
