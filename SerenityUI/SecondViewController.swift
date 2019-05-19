//
//  SecondViewController.swift
//  SerenityUI
//
//  Created by Andi Ikhsan Eldrian on 17/05/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit
import AVFoundation
import SpriteKit
class SecondViewController: UIViewController {
    
    var isSnowOn = false
    var isMusicOn = false
    
    @IBAction func SnowButtonTapped(_ sender: Any) {
        if isSnowOn == true{
        }else{
//            createParticles(particle: "spark")
            UIView.animate(withDuration: 10, animations: {
                self.createParticles(particle: "spark")
            })
            isSnowOn = true
        }
    }
    
    //Particle Emitter
    func createParticles(particle: String) {
        let particleEmitter = CAEmitterLayer()
        
        particleEmitter.emitterPosition = CGPoint(x: view.frame.width / 2.0, y: 50)
        particleEmitter.emitterShape = .line
        particleEmitter.emitterSize = CGSize(width: view.frame.width, height: 1)
        particleEmitter.renderMode = .additive
        
        let cell = CAEmitterCell()
        cell.birthRate = 20
        cell.lifetime = 9.0
        cell.velocity = 90
        cell.velocityRange = 50
        cell.emissionLongitude = .pi
//        cell.spinRange = 5
        cell.scale = 0.1
        cell.scaleRange = 0.1
        cell.color = UIColor(white: 1, alpha: 0.8).cgColor
//        cell.alphaSpeed = -0.025
        cell.contents = UIImage(named: particle)?.cgImage
        particleEmitter.emitterCells = [cell]
        
        view.layer.insertSublayer(particleEmitter, at: 1)
    }
    
    func createParticlesCar() {
        let particleEmitter = CAEmitterLayer()
        
        particleEmitter.emitterPosition = CGPoint(x: view.frame.width, y: view.frame.height-43)
        particleEmitter.emitterShape = .point
        particleEmitter.emitterSize = CGSize(width: view.frame.width, height: 1)
        particleEmitter.renderMode = .additive
        
        let cell = CAEmitterCell()
        cell.birthRate = 0.15
        cell.lifetime = 10
        cell.velocity = 90
//        cell.velocityRange = 50
        cell.emissionLongitude = .pi
        //        cell.spinRange = 5
        cell.scale = 0.17
//        cell.scaleRange = 0.1
        cell.color = UIColor(white: 1, alpha: 1.0).cgColor
        //        cell.alphaSpeed = -0.025
        cell.contents = UIImage(named: "Car")?.cgImage
        particleEmitter.emitterCells = [cell]
        
        view.layer.insertSublayer(particleEmitter, at: 1)
    }
    
    @IBAction func musicButtonTapped(_ sender: Any) {
        
        if isMusicOn == true{
        }else{
            setBackgroundMusic(songName: "NightMusic")
            isMusicOn = true
        }
    }
    
    @IBAction func muteButtonTapped(_ sender: Any) {
        isMusicOn = false
        player.stop()
    }
    
    @IBAction func NightButtonTapped(_ sender: Any) {
        isMusicOn = false
        player.stop()
    }
    
    //BackgroundMusic
    var player: AVAudioPlayer = AVAudioPlayer()
    
    func setBackgroundMusic(songName: String){
        do{
            let audioPath = Bundle.main.path(forResource: songName, ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //PROCESS ERROR
        }
        player.play()
        player.numberOfLoops = -1
    }
    
    //BackgroundImage
    func setBackgroundImage(imageName: String){
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: imageName)
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createParticlesCar()
        setBackgroundImage(imageName: "NightCity")
//        setBackgroundImage(imageName: "5")
    }

}
