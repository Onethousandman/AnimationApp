//
//  Animation.swift
//  AnimationApp
//
//  Created by Никита Тыщенко on 12.03.2024.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let animation = Animation(
            preset: DataStore().animationPreset.randomElement() ?? "pop",
            curve: DataStore().animationCurve.randomElement() ?? "easeIn",
            force: Double.random(in: 1.0...2.5),
            duration: Double.random(in: 0.5...2.0),
            delay: Double.random(in: 0...1.0)
        )
        return animation
    }
}
