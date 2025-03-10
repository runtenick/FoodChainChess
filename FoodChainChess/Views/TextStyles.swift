import Foundation
import SwiftUI

protocol TextStyle : ViewModifier {
    
}

struct TitleTextStyle : TextStyle {
    func body (content: Content) -> some View {
        content
            .foregroundColor(Colors.text)
            .fontWeight(.bold)
            .font(.title)
    }
}

struct TitleHomeTextStyle : TextStyle {
    func body (content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .fontWeight(.bold)
            .font(.title)
    }
}

struct ScoreTextStyle : TextStyle {
    var isBold: Bool
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Colors.text)
            .font(.title)
            .fontWeight(isBold ? .bold : .regular)
    }
}

struct BoldBodyTextStyle : TextStyle {
    func body (content: Content) -> some View {
        content
            .foregroundColor(Colors.text)
            .fontWeight(.bold)
            .font(.body)
    }
}

extension Text {
    func TextStyle <T:TextStyle>(_ style : T) -> some View {
        modifier(style)
    }
}

struct TextStyles {
    static let titleTextStyle = TitleTextStyle()
}
