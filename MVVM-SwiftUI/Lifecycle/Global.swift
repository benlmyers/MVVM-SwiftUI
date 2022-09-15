//
//  Global.swift
//  MVVM-SwiftUI
//
//  Created by Ben Myers on 9/14/22.
//

import SwiftUI

class Global: ObservableObject {
  
  // MARK: - Wrapped Properties
  
  /// The user's name.
  @Published var userName: String = "Ben Myers"
  
  // MARK: - Properties
  
  var userIsGuest: Bool {
    return userName == "Guest"
  }
}
