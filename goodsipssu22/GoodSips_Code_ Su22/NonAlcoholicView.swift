//
//  NonAlcoholicView.swift
//  Good Sips
//
//  Created by Katelin Vincent on 4/16/22.
//

import SwiftUI

struct NonAlcoholicView: View {
    @ObservedObject var drinkListVM :DrinkListViewModel
    var body: some View {
        DrinkUIView(drinkListVM: drinkListVM)
            .onAppear(){
                print("non alcoholic")
           Task{ await drinkListVM.nonAlcoholic()}
        }
    }
}

struct NonAlcoholicView_Previews: PreviewProvider {
    static var previews: some View {
        NonAlcoholicView(drinkListVM: .init())
    }
}
