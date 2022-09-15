//
//  ViewModel.swift
//  MVVM-SwiftUI
//
//  Created by Ben Myers on 9/13/22.
//

import Foundation

protocol ViewModel: ObservableObject {

  // MARK: - Properties

  /// The global instance.
  var global: Global? { get set }
}

extension ViewModel {

  // MARK: - Methods

  /**
   Prepares the view model with the global instance.

   - parameter global: The global instance, taken from a `View`
   */
  func prepare(with global: Global) {
    self.global = global
  }
}
