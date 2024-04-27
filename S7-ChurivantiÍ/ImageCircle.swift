//
//  ImageCircle.swift
//  S7-ChurivantiÍ
//
//  Created by Mac19 on 27/04/24.
//

import SwiftUI

struct ImageCircle: View {
    
    var body: some View {
        
        Image("cat")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    ImageCircle()
}
