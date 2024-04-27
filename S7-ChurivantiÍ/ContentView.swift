//
//  ContentView.swift
//  S7-ChurivantiÍ
//
//  Created by Mac19 on 27/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            ImageCircle()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                Text("Tom Cat")
                    .font(.title)
                HStack {
                    Text("Tom and Jerry is beautiful")
                        .font(.subheadline)
                    Spacer()
                    Text("Peru")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About Tom Cat")
                    .font(.title2)
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
