//
//  ContentView.swift
//  DeliveryOnboardingSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 19/06/21.
//  The App Wizard
// Instagram : theappwizard2408

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        FinalView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








































struct FinalView: View {
    
    @State private var showDetails = false
   
    var body: some View {
       
        ZStack{
           Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            AnimatedStack()
            TopBar()
           
            
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(.black)
                .frame(width: 450, height: 400, alignment: .center)
                .overlay( RoundedRectangle(cornerRadius: 35).stroke(Color.white, lineWidth: 1))
                .offset(x: 0, y: 380)
                .opacity(1)
            
            Text("WELCOME TO ROCKET DELIVERY")
                .font(.title3)
                .fontWeight(.thin)
                .opacity(0.5)
                .foregroundColor(Color.white)
                .offset(x: 0, y: 240)
            
            
            
           
            
            ZStack{
            Button(action: {
                           self.showDetails.toggle()
                       }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 300, height: 80, alignment: .center)
                        .foregroundColor(.clear)
                        .overlay( RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 1))
                    
                        
                    Text("LOGIN TO CONTINUE")
                        .font(.title2)
                        .fontWeight(.regular)
                        .opacity(0.9)
                        .foregroundColor(Color.white)
                        
                        
                }
                
              
                
            }.offset(x: 0, y: 310)
               
                if showDetails{
                    
                    ZStack{
                       
                        RoundedRectangle(cornerRadius: 35)
                            .overlay( RoundedRectangle(cornerRadius: 35).stroke(Color.white, lineWidth: 1))
                            .frame(width: 450, height: 400, alignment: .center)
                            .foregroundColor(.black)
                            .offset(x: 0, y: 380)
                           
                            .opacity(1)
                        
                        
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 300, height: 80, alignment: .center)
                        .foregroundColor(.black)
                        .overlay( RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 1))
                        
                    
                    Text("LOGIN WITH APPLE ID")
                        .font(.title2)
                        .fontWeight(.regular)
                        .opacity(1)
                        .foregroundColor(Color.white)
                    }.offset(x: 0, y: 310)
                    
                    Text("FORGOT PASSWORD ?")
                        .font(.title3)
                        .fontWeight(.thin)
                        .opacity(0.5)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: 390)
               
                }
               
            }
            
        }
    }

}




struct TopBar: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(.gray)
                .frame(width: 450, height: 100, alignment: .center)
                .opacity(0.1)
                .offset(x: 0, y: -420)
            
            HStack{
            Text("ROCKET DELIVERY")
                .font(.title2)
                .fontWeight(.thin)
                .foregroundColor(Color.white)
                .opacity(1)
                
                Spacer().frame(width: 180, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                
                Image(systemName: "magnifyingglass.circle")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.white)
                    .opacity(0.5)
                
            
            }.offset(x: 0, y: -410)
            .padding()
            
            
        }
    }
}






struct AnimatedStack: View {
    
    @State private var animateStack = false
    
    var body: some View {
        HStack{
            Parallax3DObjects()
            Spacer()
                .frame(width: 50, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Parallax3DRocket()
            Spacer()
                .frame(width: 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Parallax3DObjects()
        }
        .offset(x: animateStack ? 300 : -300, y: 0)
        
        .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
        .onAppear() {
                self.animateStack.toggle()
        }
    }
}




