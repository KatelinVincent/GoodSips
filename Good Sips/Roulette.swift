//
//  Roulette.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct Roulette: View {
    @ObservedObject var drinkListVM : DrinkListViewModel

    var body: some View {
            ZStack {

                VStack {
                    DrinkProfile(drinkListVM:drinkListVM.drinks.randomElement()!)
                    }
                    .navigationBarTitleDisplayMode(.inline)
            }
    }
}

struct Roulette_Previews: PreviewProvider {
    static var previews: some View {
        Roulette(drinkListVM: .init())
    }
}
