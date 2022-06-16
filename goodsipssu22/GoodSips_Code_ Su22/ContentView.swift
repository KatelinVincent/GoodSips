//
//  ContentView.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/25/22.
//

import SwiftUI
import Foundation
import UIKit


struct ContentView: View {
    
    @StateObject private var drinkListVM = DrinkListViewModel()
    
    var body: some View {
        NavigationView {
                    ZStack {
                        VStack {
                            Spacer().frame(height: 44.0)
                            HStack {
                                Spacer()
                                Image("Good Sips Icons - words") // good sips icon at top
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 40, alignment: .center)
                                Spacer()
                            }
//                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                            Spacer()
                        }
                        .edgesIgnoringSafeArea(.top)

                        .background()
                        VStack {
                    Spacer()
                    .background()
                                            HStack {
                                                    Spacer()
                                                    NavigationLink(destination: DrinkUIView(drinkListVM:drinkListVM)){
                                                        Text("Search by Name")
                                                            .frame(width: 150, height: 150)
                                                            //.background(Color(red: 169/255, green: 143/255, blue: 105/255))
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .cornerRadius(10)
                                                    }
                                                    Spacer()
                                                    NavigationLink(destination: DrinkUIView(drinkListVM:drinkListVM)){
                                                        Text("Search by Ingredient")
                                                            .frame(width: 150, height: 150)
                                                         //   .background(Color(red: 169/255, green: 143/255, blue: 105/255))
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .cornerRadius(10)
                                                    }
                                                
                                                Spacer()
                                            }
                                            Spacer()
                                            NavigationLink(destination: MasterList(drinkListVM:drinkListVM)){
                                                Text("COCKTAIL MASTER LIST")
                                                    .frame(width: 340, height: 90)
                                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color.white)
                                                    .cornerRadius(10)
                                                    }
                                                Spacer()
                                                NavigationLink(destination: Roulette(drinkListVM:drinkListVM)){
                                                Text("ROULETTE")
                                                    .frame(width: 340, height: 90)
                                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color.white)
                                                    .cornerRadius(10)
                                            }
                                            Spacer()
                                            NavigationLink(destination: Featured(drinkListVM:drinkListVM)){
                                                Text("FEATURED")
                                                    .frame(width: 340, height: 90)
                                                   // .background(Color(red: 169/255, green: 143/255, blue: 105/255))
                                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color.white)
                                                    .cornerRadius(10)
                                                }
                                            Spacer()
                                            Spacer()

                                            }
                
                                        .background{
                                            Image("Bar photo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
        }

        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

