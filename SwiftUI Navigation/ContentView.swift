//
//  ContentView.swift
//  SwiftUI Navigation
//
//  Created by 박현우 on 2023/01/29.
//
import SwiftUI
import SwiftUINavigation


final class FeatureViewModel : ObservableObject {
    @Published var destination: Destination?

      enum Destination {
        case alert(String)
        case edit(String)
        case meeting(String)
        case record(String)
      }
}

struct FeatureView: View {
    @StateObject var viewModel : FeatureViewModel = FeatureViewModel()
    
 var body: some View {
   Button("Show sheet") {
       viewModel.destination = .edit(WithState(initialValue: Value, content: <#T##(Binding<Value>) -> View#>))
//     viewModel.presentedValue = "Hello!"
   }
//   .sheet(unwrapping: $viewModel.presentedValue) { $value in
//     TextField("Value", text: $value)
//   }
   
 }
}
