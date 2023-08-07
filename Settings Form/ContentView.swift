//
//  ContentView.swift
//  Settings Form
//
//  Created by Brett Moxey on 8/8/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isDarkModeEnabled: Bool = true
    @State var downloadViaWifiEnabled: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Group {
                    HStack{
                        Image(uiImage: "👶🏻".textToImage(size: 60)!)
                        VStack(alignment: .leading) {
                            Text("Wolf Knight")
                                .font(.title)
                            Text("Age: 0")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                
                        }
                        
                    }
                }
                
                Section(header: Text("HEALTH, WEALTH and HAPPINESS"), content: {
                    HStack{
                        Image(uiImage: "♥️".textToImage(size: 30)!)
                        Text("Health")
                    }

                    HStack{
                        Image(uiImage: "💰".textToImage(size: 30)!)
                        Text("Wealth")
                    }

                    HStack{
                        Image(uiImage: "🙂".textToImage(size: 30)!)
                        Text("Happiness")
                    }
                })

                Section(header: Text("PREFRENCES"), content: {
                    HStack{
                        Image(systemName: "globe")
                        Text("Language")
                    }
                    HStack{
                        Image(systemName: "moon")
                        Toggle(isOn: $isDarkModeEnabled) {
                            Text("Dark Mode")
                        }
                    }
                    HStack{
                        Image(systemName: "wifi")
                        Toggle(isOn: $downloadViaWifiEnabled) {
                            Text("Only Download via Wi-Fi")
                        }
                    }
                    HStack{
                        Image(systemName: "iphone.gen3.badge.play")
                        Text("Play in Background")
                    }

                })
                Section {
                    Button(action: {
                        print("Edit Profile tapped")
                    }) {
                        Text("Next Year ->")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.blue.gradient)
                            .foregroundColor(Color.white)
                            .font(.system(size:20,weight: .bold))
                            .cornerRadius(25.0)
                            .padding(.horizontal)
                    }

                }
                .listRowBackground(Color.clear)
                
                
            }
            
            .navigationBarTitle("Game Of A Life")

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
