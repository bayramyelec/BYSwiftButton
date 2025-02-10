//
//  BYAxisRightPressableButton.swift
//  BYButton
//
//  Created by Bayram Yeleç on 10.02.2025.
//

import UIKit

public class BYAxisRightPressableButton: UIButton {
    
    public init(title: String, backgroundColor: UIColor, textColor: UIColor, shadowColor: UIColor, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 2
        self.layer.borderColor = shadowColor.cgColor
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.layer.shadowColor = shadowColor.cgColor
        setup()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 3, height: 5)
        self.layer.shadowRadius = 0
        
        self.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        self.addTarget(self, action: #selector(buttonReleased), for: .touchUpInside)
        self.addTarget(self, action: #selector(buttonReleased), for: .touchUpOutside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        self.frame.origin.y += 5
        self.frame.origin.x += 3
        self.layer.shadowOffset = .zero
    }
    
    @objc func buttonReleased(_ sender: UIButton){
        self.frame = .zero
        self.layer.shadowOffset = CGSize(width: 3, height: 5)
    }
    
}
