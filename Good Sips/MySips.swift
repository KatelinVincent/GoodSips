//
//  MySips.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct MySips: View {
    @ObservedObject var taskStore : TaskStore
    
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
                    List{
                        ForEach(taskStore.tasks.filter{task in
                            task.rating>0
                        }){
                          
                        task in
                          HStack{
                              Text(task.toDoItem)
                              Spacer()
                              RatingView(rating: Binding(get: {
                                  task.rating
                              }, set: {new in
                                  if let idx = taskStore.tasks.firstIndex(where: { oldtask in
                                      oldtask.id == task.id
                                  }){
                                      taskStore.tasks[idx].rating = new
                                  }
                              }))
                          }
                      }
                    }.navigationBarTitle("My Sips")
                    Spacer()
                }
                    .navigationBarTitleDisplayMode(.inline)

    }
    
    }
}
}
struct MySips_Previews: PreviewProvider {
    static var previews: some View {
        MySips(taskStore: .init())
    }
}
