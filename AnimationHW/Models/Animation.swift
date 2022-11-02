//
//  Animation.swift
//  AnimationHW
//
//  Created by Roman Golubinko on 02.11.2022.
//

struct SpringAnimation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimations() -> SpringAnimation {
        SpringAnimation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 1...3),
            duration: Float.random(in: 1...3),
            delay: 0.3)
    }
}
