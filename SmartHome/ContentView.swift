//
//  ContentView.swift
//  SmartHome
//
//  Created by Mostafa Davoodi on 7/10/22.
//

import SwiftUI

struct ContentView: View {
    
	var body: some View {
		ZStack {
			Color.primaryColor
			
			VStack(spacing: 16) {
				Header()
				
				WeatherView()
				
				GridView()
				
				PlayerView()
				

			}
			.padding(.top, 32)
		}
		.ignoresSafeArea(.all, edges: .all)
		
		
    
	}
	
	@ViewBuilder
	func PlayerView() -> some View {
		HStack {
			Image("avatar")
				.padding()
			
			VStack(alignment: .leading, spacing: 8) {
				Text("Attention")
					.fontWeight(.bold)
					.font(.subheadline)
				
				Text("Charly puth")
					.fontWeight(.bold)
					.font(.subheadline)
			}
			
			Spacer()
			
			Image("pause")
				.padding(.trailing, 20)
				.dropShadow()
		}
		.dropShadowWrapper()
		.padding()
		.frame(height: 120)
	}
	
	@ViewBuilder
	func WeatherView() -> some View {
		HStack {
			Image("cloud")
				.padding()
			
			Spacer()
			
			HStack(spacing: 16) {
				VStack(alignment: .leading, spacing: 8) {
					Text("Partly cloudy")
					
					Text("16 c")
						.foregroundColor(.secondaryColor)
						.font(.title3)
				}
				
				VStack(alignment: .leading, spacing: 8) {
					Text("Humidity")
					
					Text("62%")
						.foregroundColor(.secondaryColor)
						.font(.title3)
				}
			}
			.padding()
		}
		.dropShadowWrapper()
		.padding()
		.frame(height: 140)
	}
	
	@ViewBuilder
	func GridView() -> some View {
		VStack(spacing: 16) {
			HStack(spacing: 16) {
				
				CardView(title: "Temperature", subtitle: "30c", imageName: "key")
					.dropShadowWrapper()
				
				CardView(title: "Router", subtitle: "128.67 Mbit/s", imageName: "wifi")
					.dropShadowWrapper()
			}
			
			HStack(spacing: 16) {
				CardView(title: "Lights", subtitle: "7 devices", imageName: "bulb")
					.dropShadowWrapper()
				
				CardView(title: "Smart tv", subtitle: "Active", imageName: "tv")
					.dropShadowWrapper()
			}
		}
		.padding()
	}
	
	@ViewBuilder
	func Header() -> some View {
		HStack {
			Image("rect")
			
			Spacer()
			
			VStack(spacing: 4) {
				Text("Welcome Home!")
					.font(.body)
					.foregroundColor(.gray)
				
				Text("July 8, 2022")
					.font(.caption)
			}
			
			Spacer()
			
			Image("avatar")
		}
		.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
