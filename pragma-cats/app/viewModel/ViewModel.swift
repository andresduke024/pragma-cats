//
//  ViewModel.swift
//  pragma-cats
//
//  Created by Andres Duque on 6/12/22.
//

import Foundation

open class ViewModel {
    @Published var isLoading: Bool = false
    @Published var isPresentingAlert: Bool = false
    @Published var alertMessage: String = ""
    
    public func showAlert(_ message: String) {
        alertMessage = message
        isPresentingAlert = true
    }
}
