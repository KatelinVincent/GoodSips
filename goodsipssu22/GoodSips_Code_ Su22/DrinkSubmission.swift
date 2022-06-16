//
//  DrinkSubmission.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//
// Scrap for now - touch in summer

import SwiftUI

struct DrinkSubmission: View {
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
                ScrollView{
                    
                }
            }
        }
    }
}

struct DrinkSubmission_Previews: PreviewProvider {
    static var previews: some View {
        DrinkSubmission()
    }
}
