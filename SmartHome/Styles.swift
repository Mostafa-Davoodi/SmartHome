//
//  Styles.swift
//  SmartHome
//
//  Created by Mostafa Davoodi on 7/10/22.
//

import SwiftUI

struct DropShadowStyle<S: Shape>: ButtonStyle {
	var shape: S
	func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.padding(30)
			.background(
				Group {
					if configuration.isPressed {
						shape
							.fill(Color.primaryColor)
							.shadow(color: Color.darkShadowColor, radius: 10, x: -5, y: -5)
							.shadow(color: Color.white, radius: 10, x: 10, y: 10)
					} else {
						shape
							.fill(Color.primaryColor)
							.shadow(color: Color.darkShadowColor, radius: 10, x: 10, y: 10)
							.shadow(color: Color.white, radius: 10, x: -5, y: -5)
					}
				}
			)
	}
}

struct InnerShadowButtonStyle<S: Shape>: ButtonStyle {
	var shape: S
	func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.padding(30)
			.background(
				Group {
					if configuration.isPressed {
						shape
							.fill(Color.primaryColor)
							.overlay(
								shape
									.stroke(Color.gray, lineWidth: 4)
									.blur(radius: 4)
									.offset(x: 2, y: 2)
									.mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
							)
							.overlay(
								shape
									.stroke(Color.white, lineWidth: 8)
									.blur(radius: 4)
									.offset(x: -2, y: -2)
									.mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
							)
					} else {
						shape
							.fill(Color.primaryColor)
							.shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
							.shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
					}
				}
			)
	}
}

extension LinearGradient {
	init(_ colors: Color...) {
		self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
	}
}

extension Shape {
	func getDarkOffset(isPressed: Bool) -> CGPoint {
		switch self {
		case is Circle:
			return isPressed ? CGPoint(x: -5, y: -5) : CGPoint(x: 10, y: 10)
		case is RoundedRectangle:
			return isPressed ? CGPoint(x: 10, y: 10) : CGPoint(x: 10, y: 10)
		default:
			return .zero
			
		}
		
	}
	
	func getLightOffset(isPressed: Bool) -> CGPoint {
		switch self {
		case is Circle:
			return isPressed ? CGPoint(x: 10, y: 10) : CGPoint(x: -5, y: -5)
		case is RoundedRectangle:
			return isPressed ? CGPoint(x: 10, y: 10) : CGPoint(x: -5, y: -5)
		default:
			return .zero
			
		}
		
	}
}
