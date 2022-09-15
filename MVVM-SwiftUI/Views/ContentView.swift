//
//  ContentView.swift
//  MVVM-SwiftUI
//
//  Created by Ben Myers on 9/13/22.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: - Properties
  
  let global = Global()
  
  // MARK: - Body View
  
  var body: some View {
    FoodView()
      .padding()
      .environmentObject(global)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
