//
//  NewMusicViewModel.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

class NewMusicViewModel: ObservableObject {
    @Published var newMusic: [MusicEntry] = [
        MusicEntry(
            title: "Laurel Hell - Single",
            artist: "Mitski",
            imageName: "NewMusic0"
        ),
        MusicEntry(
            title: "Brividi - Single",
            artist: "Mahmood & BLANCO",
            imageName: "NewMusic1"
        ),
        MusicEntry(
            title: "Requiem",
            artist: "Korn",
            imageName: "NewMusic2"
        ),
        MusicEntry(
            title: "Give Me The Future",
            artist: "Bastille",
            imageName: "NewMusic3"
        ),
        MusicEntry(
            title: "Bad Habits - Single",
            artist: "Ed Sheeran",
            imageName: "NewMusic4"
        ),
        MusicEntry(
            title: "Manifesto",
            artist: "Loredana Bertè",
            imageName: "NewMusic5"
        ),
        MusicEntry(
            title: "Earthling - Single",
            artist: "Eddie Vedder",
            imageName: "PreOrder1"
        ),
        MusicEntry(
            title: "Abrakadabra",
            artist: "Hardcore Superstar",
            imageName: "PreOrder5"
        )
    ]
}
