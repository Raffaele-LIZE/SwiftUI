//
//  CircleImage.swift
//  combining_views
//
//  Created by Raffaële PY  on 12/11/2019.
//  Copyright © 2019 Raffaële PY . All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
