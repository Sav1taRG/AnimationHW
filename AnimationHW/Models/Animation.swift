//
//  Animation.swift
//  AnimationHW
//
//  Created by Roman Golubinko on 02.11.2022.
//

struct SpringAnimation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
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
            force: .random(in: 1...2),
            duration: .random(in: 1...2),
            delay: .random(in: 0.1...0.5))
    }
}
