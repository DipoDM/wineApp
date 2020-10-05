//
//  ContentView.swift
//  wineApp
//
//  Created by ODM on 8/10/20.
//  Copyright © 2020 ODM. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var usertext = ""
    var mainBgColor : Color = Color(red: 150/225, green: 86/225, blue: 161/225, opacity: 0.8)
    
    var body: some View {
        NavigationView {
            ZStack {
                mainBgColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Spacer()
                        Text("Mercy")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                        
                        Image("mercy")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }
                    .padding(.trailing, 20)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            HStack{
                                Text("The best wine in \nNigeria")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .fontWeight(.medium)
                                
                                Spacer()
                            }
                            .padding()
                            
                            
                            TextField("Enter text", text: $usertext)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding([.leading, .trailing])
                                .shadow(radius: 15, x: 10, y:10 )
                            
                            
                            HStack{
                                Text("Best Sellers")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.medium)
                                
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .padding([.top, .bottom], 10)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    NavigationLink(destination: DetailView(wineName: wineData[0], wineImage: wineData[1], winePrice: wineData[2], bgColor: wineBg1), label: {
                                        wineOptions(bgColor: wineBg1, wineName: wineData[0], wineImage: wineData[1], winePrice: wineData[2], wineAge:"12 Years")
                                    })
                                    
                                    NavigationLink(destination: DetailView(wineName: wineData2[0], wineImage: wineData2[1], winePrice: wineData2[2], bgColor: wineBg2)) {
                                        wineOptions(bgColor: wineBg2, wineName: wineData2[0], wineImage: wineData2[1], winePrice: wineData2[2], wineAge: "18 Years")
                                    }
                                    
                                }
                                .padding([.leading])
                                
                            }
                            .padding(.top, -10)
                            
                            HStack{
                                Text("Blogs")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.medium)
                                //.shadow(radius: 10)
                                
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .padding(.top, 10)
                            
                            ZStack{
                                Image("wineBanner")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .overlay(Color(red: 32/225, green: 32/225, blue: 64/224, opacity: 0.2))
                                    .frame(height: 200)
                                    .cornerRadius(20)
                                
                                VStack {
                                    Spacer()
                                    
                                    HStack{
                                        Spacer()
                                        
                                        Text("Which food goes best\nwith Red wine")
                                            .foregroundColor(.white)
                                            .font(.system(size: 22))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                            .shadow(radius: 10)
                                            .padding()
                                        
                                    }
                                }
                                
                            }
                            .padding([.leading, .trailing, .bottom])
                            .padding(.top, -10)
                            
                            Spacer()
                        }
                    }
                }
            }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

var wineBg1 : Color = /*Color(red: 0/225, green: 161/225, blue: 171/225)*/ .black
var wineBg2 : Color = Color(red: 91/225, green: 86/225, blue: 86/225)

struct wineOptions: View {
    
    var bgColor : Color
    var wineName : String
    var wineImage : String
    var winePrice : String
    var wineAge : String
    
    var body: some View {
        ZStack{
            bgColor
            
            VStack{
                HStack {
                    Text(wineName)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .padding()
                    
                    Spacer()
                }
                HStack {
                    Text(wineAge)
                        .foregroundColor(.white)
                        .italic()
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                        .padding([.leading])
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text(winePrice)
                        .italic()
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                        .fontWeight(.medium)
                        .padding()
                    
                    Spacer()
                }
            }
            
            Image(wineImage)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .offset(x: 60)
        }
        .frame(width: 200, height: 250)
        .cornerRadius(20)
    }
}

var wineData = ["White Knight\nViognier", "wine1","$68.23"]
var wineData2 = ["Yellow Tail\nWine", "wine3","$97.23"]
