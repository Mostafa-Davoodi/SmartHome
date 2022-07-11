//
//  Modifiers.swift
//  SmartHome
//
//  Created by Mostafa Davoodi on 7/10/22.
//

import SwiftUI

struct DropShadowWrapper: ViewModifier {
	func body(content: Content) -> some View {
		ZStack {
			RoundedRectangle(cornerRadius: 25)
				.fill(Color.primaryColor)
				.dropShadow()
			
			content
			
		}
	}
}

struct DropShadow: ViewModifier {
	func body(content: Content) -> some View {
		content
			.shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
			.shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
	}
}

extension View {
	func dropShadow() -> some View {
		modifier(DropShadow())
	}
	
	func dropShadowWrapper() -> some View {
		modifier(DropShadowWrapper())
	}
}
