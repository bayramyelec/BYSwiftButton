//
//  BYSkeuomorphicButton.swift
//  BYButton
//
//  Created by Bayram Yeleç on 10.02.2025.
//

import UIKit

public class BYSkeuomorphicButton: UIButton {
    
    private var gradientLayer: CAGradientLayer!
    
    public init(title: String, textColor: UIColor, backgroundColor: UIColor, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setTitleColor(textColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.darkGray.withAlphaComponent(0.5).cgColor
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
        gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.withAlphaComponent(0.6).cgColor,
                                UIColor.clear.cgColor,
                                UIColor.clear.cgColor,
                                UIColor.black.withAlphaComponent(0.6).cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        self.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        self.addTarget(self, action: #selector(buttonReleased), for: .touchUpInside)
        self.addTarget(self, action: #selector(buttonReleased), for: .touchUpOutside)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
    }
    
    @objc func buttonReleased(_ sender: UIButton) {
        sender.transform = .identity
    }
}
