//
//  DeteilView.swift
//  Unsplash(no3Party)
//
//  Created by Mac on 23.01.2023.
//

import SwiftUI

struct DeteilView: View {
    
    var urlString: String
    @State private var showAlert: Bool = false
    @State var imageScale: CGFloat = 1
    
    var body: some View {
        
        
        ScrollView(.init()) {
            
            AsyncImage(url: URL(string: urlString)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(imageScale)
                    .gesture (
                        MagnificationGesture().onChanged { (value) in
                            imageScale = value
                        }.onEnded { _ in
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    )
            } placeholder: {
                ProgressView()
            }
            
            
        }
        .background(Color("ContentColor"))
        
    }
}

struct DeteilView_Previews: PreviewProvider {
    static var previews: some View {
        DeteilView(urlString: "")
    }
}
