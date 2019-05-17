////
////  SnowParticle.swift
////  SerenityUI
////
////  Created by Andi Ikhsan Eldrian on 17/05/19.
////  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
////
//
//import Cocoa
//
//class SnowflakeView: NSView {
//    
//    private let rootLayer = CALayer()
//    private let snowflakeEmitterLayer = CAEmitterLayer()
//    private let snowflakeEmitterCell = CAEmitterCell()
//    
//    // MARK: - Initializers
//    override public init(frame frameRect: NSRect) {
//        super.init(frame: frameRect)
//        commonInit()
//    }
//    
//    required public init?(coder decoder: NSCoder) {
//        super.init(coder: decoder)
//        commonInit()
//    }
//    
//    private func commonInit() {
//        wantsLayer = true
//        layer = rootLayer
//        
//        setupRootLayer()
//        setupSnowflakeEmitterLayer()
//        setupSnowflakeEmitterCell()
//        
//        snowflakeEmitterLayer.emitterCells = [snowflakeEmitterCell]
//        rootLayer.addSublayer(snowflakeEmitterLayer)
//    }
//    
//    // MARK: - Setup Layers
//    private func setupRootLayer() {
//        rootLayer.backgroundColor = NSColor(currentColorSchemeHex: 0x70a3bc).cgColor
//    }
//    
//    private func setupSnowflakeEmitterLayer() {
//        snowflakeEmitterLayer.emitterSize = bounds.size
//        snowflakeEmitterLayer.emitterShape = kCAEmitterLayerRectangle
//        snowflakeEmitterLayer.emitterPosition = CGPoint(x: NSWidth(bounds) / 2, y: NSHeight(bounds))
//    }
//    
//    private func setupSnowflakeEmitterCell() {
//        snowflakeEmitterCell.color = NSColor.white.cgColor
//        snowflakeEmitterCell.contents = NSImage(named: NSImage.Name(rawValue: "snowflake"))?.cgImage
//        snowflakeEmitterCell.lifetime = 5.5
//        snowflakeEmitterCell.birthRate = 200
//        snowflakeEmitterCell.blueRange = 0.15
//        snowflakeEmitterCell.alphaRange = 0.4
//        snowflakeEmitterCell.velocity = 10
//        snowflakeEmitterCell.velocityRange = 300
//        snowflakeEmitterCell.scale = 0.4
//        snowflakeEmitterCell.scaleRange = 1.3
//        snowflakeEmitterCell.emissionRange = CGFloat.pi / 2
//        snowflakeEmitterCell.emissionLongitude = CGFloat.pi
//        snowflakeEmitterCell.yAcceleration = -70
//        snowflakeEmitterCell.scaleSpeed = -0.1
//        snowflakeEmitterCell.alphaSpeed = -0.05
//    }
//}
