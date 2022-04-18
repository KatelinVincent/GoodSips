//
//  BarTabList.swift
//  Good Sips
//
//  Created by Katelin Vincent on 3/4/22.
//

import SwiftUI
import Combine


struct BarTabList: View {
    // AppView for task handler
    @ObservedObject var taskStore : TaskStore
    @State var newToDo : String = ""

      var searchBar : some View{
        HStack {
          TextField("Enter drink name here", text:         self.$newToDo)
          Button(action: self.addNewToDo, label:{
              Text("Add New")
          })
        }
      }

      func addNewToDo(){
        taskStore.tasks.append(DSTask(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
        // add auto generated id in the future
      }


      var body: some View {
        
          VStack{
              searchBar.padding()
            List{
              ForEach($taskStore.tasks){
                  
                $task in
                  HStack{
                      Text(task.toDoItem)
                      Spacer()
                      RatingView(rating: $task.rating)
                          .onChange(of: task.rating){ value in // change to checkmark bool variable
                              async {
                                  if value > 0 {
                                      // Call function that adds
                                  }
                              }
                          }
                  }
              }.onMove(perform: self.move)
              .onDelete(perform: self.delete) // Add checkbox function - move drink to bottoms, insert pop up to ask for rating
            }.navigationBarTitle("Bar Tab")
            }.navigationBarItems(trailing: EditButton())

        }
    func move(from source : IndexSet, to destination: Int){
      taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    func delete(at offsets : IndexSet){
      taskStore.tasks.remove(atOffsets : offsets)
    }
    }



struct BarTabList_Previews: PreviewProvider {
    static var previews: some View {
        BarTabList(taskStore: .init())
    }
}
