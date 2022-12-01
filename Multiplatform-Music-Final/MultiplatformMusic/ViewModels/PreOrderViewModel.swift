//
//  PreOrderViewModel.swift
//  MultiplatformMusic
//
//  Created by Luca Palmese for the Developer Academy on 30/10/22.
//

import SwiftUI

class PreOrderViewModel: ObservableObject {
    @Published var preOrders: [MusicEntry] = [
        MusicEntry(
            title: "La Ragazza Del Futuro",
            artist: "Cesare Cremonini",
            imageName: "PreOrder0"
        ),
        MusicEntry(
            title: "Earthling",
            artist: "Eddie Vedder",
            imageName: "PreOrder1"
        ),
        MusicEntry(
            title: "Unlimited Love",
            artist: "Red Hot Chili Peppers",
            imageName: "PreOrder2"
        ),
        MusicEntry(
            title: "Il giorno in cui ho smesso di pensare",
            artist: "Irama",
            imageName: "PreOrder3"
        ),
        MusicEntry(
            title: "23",
            artist: "Central Cee",
            imageName: "PreOrder4"
        ),
        MusicEntry(
            title: "Abrakadabra",
            artist: "Hardcore Superstar",
            imageName: "PreOrder5"
        ),
        MusicEntry(
            title: "=",
            artist: "Ed Sheeran",
            imageName: "NewMusic4"
        ),
        MusicEntry(
            title: "Laurel Hell",
            artist: "Mitski",
            imageName: "NewMusic0"
        )
    ]
}
