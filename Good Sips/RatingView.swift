//
//  RatingView.swift
//  Good Sips
//
//  Created by Mason Greenwell on 4/11/22.
//

import Foundation
import SwiftUI
//struct Drank {
//    let id: UUID = .init()
//    var name: String
//    var rating: Int
//}
//@StateObject var drankList : = Drank
//
//func addToSips (Drank){
//    var temp : Drank
//    temp.append(Drank)
//}


struct RatingView: View {
    @Binding var rating: Int
    
    var label = ""
    var maxRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.blue
    
    
    var body: some View {
        HStack{
            if label.isEmpty == false{
                Text(label)
            }
            ForEach(1..<maxRating + 1, id: \.self) {
                number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(4))
        
    }
}
