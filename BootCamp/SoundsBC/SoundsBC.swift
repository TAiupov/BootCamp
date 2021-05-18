//
//  SoundsBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-20.
//

import SwiftUI
import AVKit


class SoundManager: ObservableObject {
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    
    enum SoundOption: String, CaseIterable {
        case burp
        case squeakytoy
        case aww
        case largecrowd
    }
    
    
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error. \(error.localizedDescription)")
        }
        
    }
    
}

struct SoundsBC: View {
    
    var body: some View {
        VStack {
            ForEach(SoundManager.SoundOption.allCases, id: \.self) { sound in
                Button(action: {
                    SoundManager.instance.playSound(sound: sound)
                }, label: {
                    Text("Sound \(sound.rawValue)")
                        .font(.title)
                        .frame(height: 130, alignment: .center)
                        .frame(maxWidth: .infinity)
                        .background(Color.white.cornerRadius(10))
                        .shadow(radius: 10)
                        .padding()
                })
            }
        }
    }
}

struct SoundsBC_Previews: PreviewProvider {
    static var previews: some View {
        SoundsBC()
    }
}
