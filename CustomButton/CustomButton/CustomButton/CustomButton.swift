//
//  CustomButton.swift
//  UIButton
//
//  Created by Joseph Cha on 2022/05/10.
//

import UIKit

@IBDesignable
class CustomButton: UIControl {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadXib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadXib()
    }
    
    private func loadXib() {
        let bundle = Bundle(for: CustomButton.self)
        let identifier = String(describing: type(of: self))
        let nibs = bundle.loadNibNamed(identifier, owner: self, options: nil)

        guard let customView = nibs?.first as? UIView else { return }
        customView.frame = self.bounds
        addSubview(customView)
    }
    
    @IBInspectable var text: String {
        get {
            return label.text ?? ""
        }
        
        set {
            label.text = newValue
        }
    }
    
    @IBInspectable var image: UIImage? {
        get {
            return imageView.image
        }
        
        set {
            imageView.image = newValue
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        label.alpha = 0.5
        imageView.alpha = 0.5
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        label.alpha = 1
        imageView.alpha = 1
        self.sendActions(for: .touchUpInside)
    }
}
