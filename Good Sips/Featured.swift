//
//  Featured.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct Featured: View {
    
    @ObservedObject var drinkListVM : DrinkListViewModel
    
    var body: some View {
        ZStack(alignment: .top){
            VStack(alignment: .center, spacing: 0){ // Good sips logo/bar photo/navigation buttons
                HStack {
                    Spacer()
                    Image("Good Sips Icons - words") // good sips icon at top
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 40, alignment: .center)
                    Spacer()
                }
                Divider()
            List {
             
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("1")
                }
            //    Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("2")
                }
            //    Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("3")
                }
           //     Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("4")
                }
          //      Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("5")
                }
           //     Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("6")
                }
           //     Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("7")
                }
           //     Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("8")
                }
          //      Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("9")
                }
           //     Divider()
                NavigationLink(destination: DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)){
                    Text("10")
                }
                
            }.listStyle(.plain)
                Spacer()
        }
    }
}
}

struct Featured_Previews: PreviewProvider {
    static var previews: some View {
        Featured(drinkListVM: .init())
    }
}
