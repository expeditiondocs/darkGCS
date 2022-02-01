//
//  SettingsView.swift
//  GCS
//
//  Created by Joshua Mularella on 1/16/22.
//

import SwiftUI
import MessageUI

struct SettingsView: View {
	
	@AppStorage("isDarkMode") private var isDarkMode = true
	@Binding var fontSize: Double

	@State private var isAdjustFont = false
	@State private var showDeveloperInfo = false
	@State private var isInfoPresented = false
	@State private var isShowingMailView = false
	@State private var isErrorPresented = false
	@State var result: Result<MFMailComposeResult, Error>?
	
	var versionString: String {
		Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
	}
	
	var body: some View {
		NavigationView {
			ZStack {
				BackgroundView()
				
				List {
					Section(header: Text("More Info").font(.headline.scaled(for: fontSize))) {
							NavigationLink(destination: AboutGCS()) {
							Text("About the Glasgow Coma Scale")
						}
						HStack {
							Link(destination: URL(string: "https://www.youtube.com/watch?v=v6qpEQxJQO4")!) {
								Text("Watch instructional video")
							}
							Spacer()
							Image(systemName: "link.circle")
						}
					}
					
					Section(header: Text("Feedback").font(.headline.scaled(for: fontSize))) {
						
						HStack {
							Text("Pease leave us a review!!!")
							Spacer()
							Image(systemName: "star.circle")
						}
						.onTapGesture {
							AppStoreReviewManager.requestReviewIfAppropriate()
						}
						
						HStack {
							Text("Any feedback? Send us an e-mail")
								.sheet(isPresented: $isShowingMailView, content: {
									if MFMailComposeViewController.canSendMail() {
										MailView(
											isShowing: $isShowingMailView,
											result: $result
										)
									} else {
										Text("You can't send emails from this device")
									}
								})
							
							Spacer()
							
							Image(systemName: "envelope.circle")
						}
						.onTapGesture {
							isShowingMailView.toggle()
						}
					}
					
					Section(header: Text("Appearance").font(.headline.scaled(for: fontSize))) {
						Toggle(isOn: $isDarkMode.animation()) {
							HStack {
								Text("Dark mode")
								Image(systemName: "moon.fill")
							}
						}
						Toggle(isOn: $isAdjustFont.animation()) {
							Text("Adjust text size")
						}
						
						if isAdjustFont {
							HStack {
								Image(systemName: "textformat.size.smaller")
								Slider(value: $fontSize, in: 6...32, step: 1)
								Image(systemName: "textformat.size.larger")}
						}
					}
					
					
					Section(header: Text("App Info").font(.headline.scaled(for: fontSize))) {
						Toggle(isOn: $showDeveloperInfo.animation()) {
							Text("Show App/Developer Information")
						}
						
						if showDeveloperInfo {
							HStack {
								Text("Developer")
								Spacer()
								Text("© 2022 ExpeditionDocs LLC")
							}
							.font(.caption)
						}
						if showDeveloperInfo {
							HStack {
								Text("App Version:")
								Spacer()
								Text("Version \(versionString)")
							}
							.font(.caption)
						}
					}
				}
				.font(.title3.scaled(for: fontSize))
				.listStyle(GroupedListStyle())
				.background(.clear)
				.onAppear {
					UITableView.appearance().backgroundColor = .clear
				}
				.onDisappear {
					UITableView.appearance().backgroundColor = .clear
				}
				
			}
			.navigationTitle("Settings")
			.navigationBarTitleDisplayMode(.inline)
		}
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView(fontSize: .constant(14))
	}
}
