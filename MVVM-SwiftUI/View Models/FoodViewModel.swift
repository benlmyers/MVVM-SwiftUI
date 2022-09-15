//
//  FoodViewModel.swift
//  MVVM-SwiftUI
//
//  Created by Ben Myers on 9/13/22.
//

import SwiftUI
import Foundation

/**
 Encapsulates logic for food.
 */
class FoodViewModel: ObservableObject {
  
  // MARK: - Wrapped Properties
  
  /// All of the foods.
  @Published var allFoods: [Food] = [
    Food(name: "honeycrisp apple", favorite: true),
    Food(name: "steak tacos", favorite: true),
    Food(name: "chicken soup", favorite: false)
  ]
  
  /// Whether to display the user's favorite foods **only**, or **all of the foods**.
  @Published var showAll: Bool = false
  
  // MARK: - Methods
  
  /**
   Sets the food as a favorite, or not a favorite.
   
   - parameter favorite: Whether to favorite the food.
   - parameter food: The food to change the status of.
   */
  func toggleFavorite(food: Binding<Food>) {
    food.wrappedValue.favorite.toggle()
  }
}
