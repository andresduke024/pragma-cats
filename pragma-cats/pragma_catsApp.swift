//
//  pragma_catsApp.swift
//  pragma-cats
//
//  Created by Andres Duque on 5/12/22.
//

import SwiftUI

@main
struct pragma_catsApp: App {
    var body: some Scene {
        WindowGroup {
            CatsView(
                viewModel: CatsViewModel(
                    CatsRepositoryFactory.get(AppSettings.appDataSourceType)
                )
            )
        }
    }
}
