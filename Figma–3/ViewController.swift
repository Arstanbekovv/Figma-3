//
//  ViewController.swift
//  Figma–3
//
//  Created by Aziz on 5/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var background = UIImageView()
    private var mm = UIImageView()
    private var label = UILabel()
    private var label1 = UILabel()
    private var button = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .black
        
        
        view.addSubview(background)
        background.image = UIImage(named: "Fone")
        background.snp.makeConstraints{make in
            make.center.equalToSuperview()
            
        }
        
        background.addSubview(mm)
        mm.image = UIImage(named: "Group1")
        mm.snp.makeConstraints{make in
            make.center.equalToSuperview()
        }
        
        background.addSubview(label)
        label.numberOfLines = 0
        label.text = "Welcome \n to our store"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.snp.makeConstraints{make in
            make.top.equalTo(mm.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        
        
        background.addSubview(label1)
        label1.numberOfLines = 0
        label1.text = "Ger your groceries in as fast as one hour"
        label1.textAlignment = .center
        label1.textColor = .white
        label1.alpha = 0.7
        label1.snp.makeConstraints{make in
            make.top.equalTo(label.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        
        
        view.addSubview(button)
        button.backgroundColor = UIColor(red: 107/255, green: 175/255, blue: 122/255, alpha: 1)
        button.setTitle("Get Stated", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(nil, action: #selector(tapButton(sender:)), for: .touchUpInside)
        button.snp.makeConstraints{make in
            make.top.equalTo(label1.snp.bottom).offset(35)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(60)
        }
        
    }
    
    @objc func tapButton(sender: UIButton) {
        if sender.titleLabel?.text == "Get Stated"{
            navigationController?.pushViewController(ViewController1(), animated: true)
            
            
            
            
        }
    }
    
}


