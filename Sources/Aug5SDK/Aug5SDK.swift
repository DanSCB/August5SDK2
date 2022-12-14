//
//  TextAngler82 SDK
//
//  Created by Danny Schnabel on 2022-08-05.
//

import SwiftUI
import XCTest

@available(iOS 13.0, *)
public struct TextAngler82: View {
    let theText: String
    @Binding var angle: Double
    
    public init(theText: String, angle: Binding<Double>) {
        self.theText = theText
        self._angle = angle
    }
    
    public var body: some View {
        Text(theText)
            .fontWeight(Font.Weight.ultraLight)
            .font(Font.largeTitle)
            .padding()
            .rotationEffect(Angle.degrees(angle))
    }
}
