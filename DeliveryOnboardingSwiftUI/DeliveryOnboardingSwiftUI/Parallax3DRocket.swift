//
//  Parallax3DRocket.swift
//  DeliveryOnboardingSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 19/06/21.
//

import SwiftUI

struct Parallax3DRocket: View {
    
    @State private var moveIn3D = false
    @State private var rocket = false
    @State private var shadow = false
   

    
    var body: some View {
        
        
        ZStack{
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.gray)
                .blur(radius: 3.0)
                .opacity(0.2)
                .frame(width: 400, height: 400, alignment: .center)
                
               
            Image("shadow")
                .resizable()
                .frame(width: 400, height: 400, alignment: .center)
                .opacity(0.2)
                .offset(x: 10, y: 0)
                .scaleEffect(shadow ? 0.9 : 1)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                .onAppear() {
                        self.shadow.toggle()
                        }
            
           
            Image("rocket")
                .resizable()
                .frame(width: 400, height: 400, alignment: .center)
                .offset(x: 0, y: rocket ? -50 : -30)
            
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                .onAppear() {
                        self.rocket.toggle()
                        }
            
        
         }  .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .rotation3DEffect(
            .degrees(moveIn3D ? 12 : -12),
            axis: (x: moveIn3D ? 90 : -45, y: moveIn3D ? -45 : -90, z: 0.0))
            .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
            .onAppear() {
                    self.moveIn3D.toggle()
                    }
            
            
        }.offset(x: 0, y: -100)
    }
}

struct Parallax3DRocket_Previews: PreviewProvider {
    static var previews: some View {
        Parallax3DRocket()
    }
}
