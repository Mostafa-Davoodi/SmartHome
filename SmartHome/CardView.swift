//
//  CardView.swift
//  SmartHome
//
//  Created by Mostafa Davoodi on 7/10/22.
//

import SwiftUI

struct CardView: View {
	var title: String
	var subtitle: String
	var imageName: String
	
	@State private var isOn: Bool = true
	
	var body: some View {
		
		VStack(alignment: .leading, spacing: 32) {
			HStack(spacing: 8) {
				Image(imageName)
				Toggle("", isOn: $isOn)
					.tint(.secondaryColor)
			}
			
			Spacer()
			
			VStack(alignment: .leading, spacing: 8) {
				Text(title)
					.font(.headline)
					.fontWeight(.bold)
				
				Text(subtitle)
					.font(.body)
					.foregroundColor(.gray)
			}
		}
		.padding()
		
	}
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
			CardView(title: "Temperature", subtitle: "30c", imageName: "key")
    }
}
