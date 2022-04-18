//
//  ProfileIcon.swift
//  Good Sips
//
//  Created by Katelin Vincent on 3/6/22.
//

import SwiftUI

struct ProfileSettings: View {
    var body: some View {
            ZStack(alignment: .top){
                VStack {
                    Color(red: 116/255, green: 149/255, blue: 154/255)// top BK color
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 44.0)
                }
                VStack(alignment: .center, spacing: 0){ // Good sips logo/bar photo/navigation buttons
                    HStack {
                        Spacer()
                        Image("Good Sips Icons - words") // good sips icon at top
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 40, alignment: .center)
                        Spacer()
                    }
                    
                    ScrollView {
                        
                        
// JORDAN - add page that holds phonenumber, username and password : should be an option to change password, username and phonenumber
// Kate - look into security measures
                        
                    }
                }
            }
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings()
    }
}
