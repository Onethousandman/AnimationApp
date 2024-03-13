//
//  ViewController.swift
//  AnimationApp
//
//  Created by Никита Тыщенко on 12.03.2024.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var runButton: SpringButton!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatedView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
        setTextAnimatedView()
    }
    
    @IBAction func runButtonAction() {
        setTextAnimatedView()
        
        animatedView.animation = animation.preset
        animatedView.curve = animation.curve
        animatedView.force = animation.force
        animatedView.duration = animation.duration
        animatedView.delay = animation.delay
        animatedView.animate()
        
        animation = Animation.getAnimation()
        
        runButton.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func setTextAnimatedView() {
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = String(format: "force: %.2f", animation.force)
        durationLabel.text = String(format: "force: %.2f", animation.duration)
        delayLabel.text = String(format: "force: %.2f", animation.delay)
    }
    
}

