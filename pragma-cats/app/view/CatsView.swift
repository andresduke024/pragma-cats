//
//  CatsView.swift
//  pragma-cats
//
//  Created by Andres Duque on 6/12/22.
//

import SwiftUI

struct CatsView: View {
    @StateObject var viewModel: CatsViewModel
    
    var body: some View {
        
        ZStack {
            List {
                Text(Strings.breeds)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding()
                    .listRowBackground(Color.clear)
                
                ForEach(viewModel.cats) { CatCard(data: $0) }
            }
            
            if viewModel.isLoading { ProgressView() }
            
        }.alert(isPresented: $viewModel.isPresentingAlert, content: {
            Alert(title: Text(viewModel.alertMessage))
        })
        .onAppear {
            viewModel.getCats()
        }
    }
}

struct CatsView_Previews: PreviewProvider {
    static var previews: some View {
        CatsView(viewModel: CatsViewModel(CatsRepositoryImpl()))
    }
}
