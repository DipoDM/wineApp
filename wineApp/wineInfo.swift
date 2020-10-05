//
//  wineInfo.swift
//  wineApp
//
//  Created by ODM on 8/14/20.
//  Copyright © 2020 ODM. All rights reserved.
//

import SwiftUI

struct wineInfo: View {
    
    var wineName : String
    var wineImage : String
    var winePrice : String
    var bgColor : Color
    
    var body: some View {
        ZStack {
            bgColor.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            HStack{
                Image(wineImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 150)
                
                VStack(alignment: .leading) {
                    Text(wineName)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Text("4.2")
                            .foregroundColor(.yellow)
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                    }
                    
                    Text(winePrice)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                }
            }
            .padding()
        }
    }
}




struct wineInfo_Previews: PreviewProvider {
    static var previews: some View {
        wineInfo(wineName: "test", wineImage: "wine1", winePrice: "$40.9", bgColor: Color.black)
    }
}
