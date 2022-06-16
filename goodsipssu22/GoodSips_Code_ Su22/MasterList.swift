//
//  MasterList.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

// router function

// Create array of list sizes
// Create array or arrays to carry drink name, ingredients and photos
    // maybe map and key to acess ingredients and photo

struct MasterList: View {
    
    @State private var Stext: String = ""
    @ObservedObject var drinkListVM:DrinkListViewModel
    
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
                VStack{
                List {
                    ForEach(drinkListVM.drinks, id: \.strDrink){ drink in
                        NavigationLink(destination: DrinkProfile(drinkListVM:drink)){
                            Text(drink.strDrink)
                        }
                        }.listStyle(.plain)
                        
                    }
                }
            }

    }
}
}


struct MasterList_Previews: PreviewProvider {
    static var previews: some View {
        MasterList(drinkListVM: .init())
    }
}

    
