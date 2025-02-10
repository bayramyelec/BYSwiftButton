//
//  BYNeonButton.swift
//  BYButton
//
//  Created by Bayram Yeleç on 10.02.2025.
//

import UIKit

public class BYNeonButton: UIButton {
    
    public init(title: String, textColor: UIColor = .white, shadowColor: UIColor, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        self.layer.shadowColor = shadowColor.cgColor
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.backgroundColor = .clear
        
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 20
        
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
        
        self.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        self.addTarget(self, action: #selector(buttonReleased), for: .touchUpInside)
        self.addTarget(self, action: #selector(buttonReleased), for: .touchUpOutside)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
        sender.alpha = 0.8
    }
    
    @objc func buttonReleased(_ sender: UIButton){
        sender.transform = .identity
        sender.alpha = 1
    }
}
