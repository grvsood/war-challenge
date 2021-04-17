//
//  ContentView.swift
//  war-challenge
//
//  Created by Sood, Gaurav on 11/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("Background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Image(playerCard)
                        Text("Player Card").padding().foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Image(cpuCard)
                        Text("CPU Card").padding().foregroundColor(.white)
                    }
                    Spacer()
                    
                }
                Spacer()
                
                Button(action: {
                    
                    //random between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update the scores
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    } else {
                        
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
