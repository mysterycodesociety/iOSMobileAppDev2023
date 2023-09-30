//
//  CircleImage.swift
//  test
//
//  Created by Nick Nalli on 9/16/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("MCS")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
