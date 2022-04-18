//
//  DrinkProfile.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct DrinkProfile: View {
    
    @ObservedObject var drinkListVM :DrinkViewModel
    
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
                    VStack {
                        Spacer().frame(height: 16.0)
                        HStack {
                            Spacer().frame(width: 16.0)
                            VStack(alignment: .leading){
                                //HStack
                                    Text(drinkListVM.drink.strDrink) // place holder
                                        .bold()
                                        .font(.system(size: 25))
                                    .offset(x: 0, y: 0)
                                HStack(alignment: .top, spacing: 20){
                                    Group{
                                    if let StringUrl = drinkListVM.drink.strImageAttribution {
                                        AsyncImage(url: URL(string: StringUrl))
                                    }
                                    else{
                                        Image("Bar photo")
                                            .resizable()
                                    }
                                    }
                                        .frame(width: 150, height: 150, alignment: .top)
                                    VStack {
                                        HStack{
                                        Text("Ingredients")
                                            .bold()
                                            .font(.system(size: 15))
                                            Spacer()
                                        }
                                        
                                        ForEach(drinkListVM.drink.getIngredients())
                                        {
                                            ingredient in
                                            
                                            HStack{
                                                Text(ingredient.measurement)
                                                Text(ingredient.ingredient)
                                                Spacer()
                                            }
                                            
                                        }                                    }
                                }
                                
                            }
                        }
                        HStack{
                            Spacer().frame(width: 16.0)
                        HStack{
                            Text(" Instructions: ")
                                .bold()
                                .font(.system(size: 15))
                            Spacer()
                        }
                        }
                        HStack{
                            Spacer().frame(width: 16.0)
                        HStack{
                            Text(drinkListVM.drink.strInstructions)
                            Spacer()
                       }
                        }
                        Spacer()
                    
                    }
            }
        }
    }
}

struct DrinkProfile_Previews: PreviewProvider {
    static var previews: some View {
        DrinkProfile(drinkListVM: .init(drink: .sample))
    }
}
