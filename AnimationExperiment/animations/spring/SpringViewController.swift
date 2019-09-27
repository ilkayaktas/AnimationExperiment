//
//  SpringViewController.swift
//  AnimationExperiment
//
//  Created by İlkay Aktaş on 26.09.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import UIKit
import Spring

class SpringViewController: UIViewController {

    @IBOutlet weak var animatableView: SpringView!
    
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var dampingLabel: UILabel!
    @IBOutlet weak var velocityLabel: UILabel!
    @IBOutlet weak var scaleLabel: UILabel!
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var rotateLabel: UILabel!
    
    @IBOutlet weak var delaySlider: UISlider!
    @IBOutlet weak var durationSlider: UISlider!
    @IBOutlet weak var forceSlider: UISlider!
    @IBOutlet weak var dampingSlider: UISlider!
    @IBOutlet weak var velocitySlider: UISlider!
    @IBOutlet weak var scaleSlider: UISlider!
    @IBOutlet weak var xSlider: UISlider!
    @IBOutlet weak var ySlider: UISlider!
    @IBOutlet weak var rotateSlider: UISlider!
    
    var selectedRow: Int = 0
    var selectedEasing: Int = 0
    
    var selectedForce: CGFloat = 1
    var selectedDuration: CGFloat = 1
    var selectedDelay: CGFloat = 0
    
    var selectedDamping: CGFloat = 0.7
    var selectedVelocity: CGFloat = 0.7
    var selectedScale: CGFloat = 1
    var selectedX: CGFloat = 0
    var selectedY: CGFloat = 0
    var selectedRotate: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var isBall = false
    @IBAction func changeShapeAction(_ sender: Any) {
        isBall = !isBall
        let animation = CABasicAnimation()
        let halfWidth = animatableView.frame.width / 2
        let cornerRadius: CGFloat = isBall ? halfWidth : 10
        animation.keyPath = "cornerRadius"
        animation.fromValue = isBall ? 10 : halfWidth
        animation.toValue = cornerRadius
        animation.duration = 0.2
        animatableView.layer.cornerRadius = cornerRadius
        animatableView.layer.add(animation, forKey: "radius")
    }
    
    func animateView() {
        setOptions()
        animatableView.animate()
    }
    
    func setOptions() {
        animatableView.force = selectedForce
        animatableView.duration = selectedDuration
        animatableView.delay = selectedDelay
        
        animatableView.damping = selectedDamping
        animatableView.velocity = selectedVelocity
        animatableView.scaleX = selectedScale
        animatableView.scaleY = selectedScale
        animatableView.x = selectedX
        animatableView.y = selectedY
        animatableView.rotate = selectedRotate
        
        animatableView.animation = animations[selectedRow].rawValue
        animatableView.curve = animationCurves[selectedEasing].rawValue
    }
    
    let animations: [Spring.AnimationPreset] = [
        .Shake,
        .Pop,
        .Morph,
        .Squeeze,
        .Wobble,
        .Swing,
        .FlipX,
        .FlipY,
        .Fall,
        .SqueezeLeft,
        .SqueezeRight,
        .SqueezeDown,
        .SqueezeUp,
        .SlideLeft,
        .SlideRight,
        .SlideDown,
        .SlideUp,
        .FadeIn,
        .FadeOut,
        .FadeInLeft,
        .FadeInRight,
        .FadeInDown,
        .FadeInUp,
        .ZoomIn,
        .ZoomOut,
        .Flash
    ]

    var animationCurves: [Spring.AnimationCurve] = [
        .EaseIn,
        .EaseOut,
        .EaseInOut,
        .Linear,
        .Spring,
        .EaseInSine,
        .EaseOutSine,
        .EaseInOutSine,
        .EaseInQuad,
        .EaseOutQuad,
        .EaseInOutQuad,
        .EaseInCubic,
        .EaseOutCubic,
        .EaseInOutCubic,
        .EaseInQuart,
        .EaseOutQuart,
        .EaseInOutQuart,
        .EaseInQuint,
        .EaseOutQuint,
        .EaseInOutQuint,
        .EaseInExpo,
        .EaseOutExpo,
        .EaseInOutExpo,
        .EaseInCirc,
        .EaseOutCirc,
        .EaseInOutCirc,
        .EaseInBack,
        .EaseOutBack,
        .EaseInOutBack
    ]
    @IBAction func Shake(_ sender: AnyObject) {
        selectedRow = 0
        selectedEasing = 0
        animateView()
    }
    @IBAction func Pop(_ sender: AnyObject) {
        selectedRow = 1
        selectedEasing = 1
        animateView()
    }
    @IBAction func Morph(_ sender: AnyObject) {
        selectedRow = 2
        selectedEasing = 2
        animateView()
    }
    @IBAction func Squeeze(_ sender: AnyObject) {
        selectedRow = 3
        selectedEasing = 3
        animateView()
    }
    @IBAction func Wobble(_ sender: AnyObject) {
        selectedRow = 4
        selectedEasing = 4
        animateView()
    }
    @IBAction func Swing(_ sender: AnyObject) {
        selectedRow = 5
        selectedEasing = 5
        animateView()
    }
    @IBAction func FlipX(_ sender: AnyObject) {
        selectedRow = 6
        selectedEasing = 6
        animateView()

    }
    @IBAction func FlipY(_ sender: AnyObject) {
        selectedRow = 7
        selectedEasing = 7
        animateView()
    }
    @IBAction func Fall(_ sender: AnyObject) {
        selectedRow = 8
        selectedEasing = 8
        animateView()
    }
    @IBAction func SqueezeLeft(_ sender: AnyObject) {
        selectedRow = 9
        selectedEasing = 9
        animateView()
    }
    @IBAction func SqueezeRight(_ sender: AnyObject) {
        selectedRow = 10
        selectedEasing = 10
        animateView()
    }
    @IBAction func SqueezeDown(_ sender: AnyObject) {
        selectedRow = 11
        selectedEasing = 11
        animateView()
    }
    @IBAction func SqueezeUp(_ sender: AnyObject) {
        selectedRow = 12
        selectedEasing = 12
        animateView()
    }
    @IBAction func SlideLeft(_ sender: AnyObject) {
        selectedRow = 13
        selectedEasing = 13
        animateView()
    }
    @IBAction func SlideRight(_ sender: AnyObject) {
        selectedRow = 14
        selectedEasing = 14
        animateView()
    }
    @IBAction func SlideDown(_ sender: AnyObject) {
        selectedRow = 15
        selectedEasing = 15
        animateView()
    }
    @IBAction func SlideUp(_ sender: AnyObject) {
        selectedRow = 16
        selectedEasing = 16
        animateView()
    }
    @IBAction func FadeIn(_ sender: AnyObject) {
        selectedRow = 17
        selectedEasing = 17
        animateView()
    }
    @IBAction func FadeOut(_ sender: AnyObject) {
        selectedRow = 18
        selectedEasing = 18
        animateView()
    }
    @IBAction func FadeInLeft(_ sender: AnyObject) {
        selectedRow = 19
        selectedEasing = 19
        animateView()
    }
    @IBAction func FadeInRight(_ sender: AnyObject) {
        selectedRow = 20
        selectedEasing = 20
        animateView()
    }
    @IBAction func FadeInDown(_ sender: AnyObject) {
        selectedRow = 21
        selectedEasing = 21
        animateView()
    }
    @IBAction func FadeInUp(_ sender: AnyObject) {
        selectedRow = 22
        selectedEasing = 22
        animateView()
    }
    @IBAction func ZoomIn(_ sender: AnyObject) {
        selectedRow = 23
        selectedEasing = 23
        animateView()
    }
    @IBAction func ZoomOut(_ sender: AnyObject) {
        selectedRow = 24
        selectedEasing = 24
        animateView()
    }
    @IBAction func Flash(_ sender: AnyObject) {
        selectedRow = 25
        selectedEasing = 25
        animateView()
    }


    
    
    @IBAction func forceSliderChanged(_ sender: AnyObject) {
        selectedForce = sender.value(forKey: "value") as! CGFloat
        forceLabel.text = String(format: "Force: %.1f", Double(selectedForce))
    }
    @IBAction func durationSliderChanged(_ sender: AnyObject) {
        selectedDuration = sender.value(forKey: "value") as! CGFloat
        durationLabel.text = String(format: "Duration: %.1f", Double(selectedDuration))
    }
    @IBAction func delaySliderChanged(_ sender: AnyObject) {
        selectedDelay = sender.value(forKey: "value") as! CGFloat
        delayLabel.text = String(format: "Delay: %.1f", Double(selectedDelay))
    }

    @IBAction func dampingSliderChanged(_ sender: AnyObject) {
        selectedDamping = sender.value(forKey: "value") as! CGFloat
        dampingLabel.text = String(format: "Damping: %.1f", Double(selectedDamping))
    }
    
    @IBAction func velocitySliderChanged(_ sender: AnyObject) {
        selectedVelocity = sender.value(forKey: "value") as! CGFloat
        velocityLabel.text = String(format: "Velocity: %.1f", Double(selectedVelocity))
    }
    
    @IBAction func scaleSliderChanged(_ sender: AnyObject) {
        selectedScale = sender.value(forKey: "value") as! CGFloat
        scaleLabel.text = String(format: "Scale: %.1f", Double(selectedScale))
    }
    
    @IBAction func xSliderChanged(_ sender: AnyObject) {
        selectedX = sender.value(forKey: "value") as! CGFloat
        xLabel.text = String(format: "X: %.1f", Double(selectedX))
    }
    
    @IBAction func ySliderChanged(_ sender: AnyObject) {
        selectedY = sender.value(forKey: "value") as! CGFloat
        yLabel.text = String(format: "Y: %.1f", Double(selectedY))
    }
    
    @IBAction func rotateSliderChanged(_ sender: AnyObject) {
        selectedRotate = sender.value(forKey: "value") as! CGFloat
        rotateLabel.text = String(format: "Rotate: %.1f", Double(selectedRotate))
    }
    
    @IBAction func resetButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
        
        maximizeView(self)
    }
    
    @objc func minimizeView(_ sender: AnyObject) {
         SpringAnimation.spring(duration: 0.7, animations: {
             self.view.transform = CGAffineTransform(scaleX: 0.935, y: 0.935)
         })
     }
     
    @objc func maximizeView(_ sender: AnyObject) {
         SpringAnimation.spring(duration: 0.7, animations: {
             self.view.transform = CGAffineTransform(scaleX: 1, y: 1)
         })
     }
}
