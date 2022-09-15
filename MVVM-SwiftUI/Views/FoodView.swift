//
//  FoodView.swift
//  MVVM-SwiftUI
//
//  Created by Ben Myers on 9/13/22.
//

import SwiftUI

struct FoodView: View {
  
  // MARK: - Wrapped Properties
  
  /// The view model for `FoodView`.
  @StateObject var viewModel = FoodViewModel()
  
  /// The Global `EnvironmentObject`.
  @EnvironmentObject var global: Global
  
  // MARK: - Body View
  
  var body: some View {
    ScrollView {
      VStack {
        Toggle("Show All", isOn: $viewModel.showAll)
        ForEach($viewModel.allFoods, id: \.wrappedValue.name) { foodItem in
          if foodItem.wrappedValue.favorite || viewModel.showAll {
            foodItemView(foodItem)
          }
        }
      }
    }
  }
  
  // MARK: - Supporting Views
  
  /**
   Displays a food item.
   
   - parameter food: The food item to display.
   */
  func foodItemView(_ food: Binding<Food>) -> some View {
    HStack {
      Text(food.wrappedValue.emoji)
      Text(food.wrappedValue.name.capitalized)
      Spacer()
      if food.wrappedValue.favorite {
        Image(systemName: "star.fill").foregroundColor(.yellow)
          .onTapGesture { viewModel.toggleFavorite(food: food) }
      }
    }
  }
}
