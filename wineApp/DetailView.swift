//
//  DetailView.swift
//  wineApp
//
//  Created by ODM on 8/11/20.
//  Copyright © 2020 ODM. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var mainBgColor : Color = Color(red: 175/225, green: 139/225, blue: 175/225, opacity: 0.9)
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var likedButton : Bool = true
    
    var wineName : String
    var wineImage : String
    var winePrice : String
    var bgColor : Color

    var body: some View {
        ZStack {
            bgColor.opacity(0.7)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        self.likedButton.toggle()
                        
                    }, label: {
                        Image(systemName: likedButton ? "heart" : "heart.fill" )
                            .resizable()
                            .frame(width: 23, height: 20)
                            .foregroundColor(.white)
                    })
                    
                }
                .padding()
                
                Image(wineImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: .white, radius: 80)
                    .padding()
                
                wineInfo(wineName: self.wineName, wineImage: self.wineImage, winePrice: self.winePrice, bgColor: self.bgColor)
                    .frame(height: 170)
                    .cornerRadius(20)
                    .padding()
                
                Spacer()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(wineName: "wine", wineImage: "wine1", winePrice: "32.33", bgColor: Color.black)
    }
}

