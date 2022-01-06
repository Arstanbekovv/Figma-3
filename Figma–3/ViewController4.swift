//
//  ViewContoller4.swift
//  Figma–3
//
//  Created by Aziz on 5/1/22.
//

import Foundation
import SnapKit

class ViewController4: UIViewController {
    
    private var imageFone = UIImageView()
    private var imageGps = UIImageView()
    private var label = UILabel()
    private var label1 = UILabel()
    private var label2 = UILabel()
    private var label3 = UILabel()
    private var textField = UITextField()
    private var viewline = UIView()
    private var textField1 = UITextField()
    private var viewline1 = UIView()
    private var button = UIButton()
    
    private var viewBack = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(viewBack)
        viewBack.snp.makeConstraints{make in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(300)
        }
        
        
        view.addSubview(imageFone)
        imageFone.image = UIImage(named: "Group2")
        imageFone.snp.makeConstraints{make in
            make.left.top.right.equalToSuperview()
        }
        
        view.addSubview(imageGps)
        imageGps.image = UIImage(named: "illustration")
        imageGps.snp.makeConstraints{make in
            make.top.equalToSuperview().offset(120)
            make.centerX.equalToSuperview()
            make.width.equalTo(220)
            make.height.equalTo(170)
        }
        
        
        
        label.text = "Select Your Location"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        
        view.addSubview(label)
        label.snp.makeConstraints{make in
            make.top.equalTo(imageGps.snp.bottom).offset(40)
            make.centerX.equalToSuperview()
        }
        
        label1.text = "Swithch on your location to stay in tune with \nwhat’s happening in your area"
        label1.numberOfLines = 0
        label1.textAlignment = .center
        label1.textColor = .black
        label1.alpha = 0.6
        label1.font = label1.font.withSize(15)
        
        view.addSubview(label1)
        label1.snp.makeConstraints{make in
            make.top.equalTo(label.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(37)
            make.centerX.equalToSuperview()
        }
        
        
        
        
        label2.text = "Your Zone"
        label2.numberOfLines = 0
        label2.textAlignment = .center
        label2.textColor = .gray
        label2.font = UIFont.boldSystemFont(ofSize: 14)
        label2.alpha = 0.9
        view.addSubview(label2)
        label2.snp.makeConstraints{make in
            make.bottom.equalTo(viewBack.snp.top).offset(-70)
            make.left.equalToSuperview().offset(25)
        }
        
        
        
        textField.placeholder = "Banasree"
        view.addSubview(textField)
        textField.snp.makeConstraints {make in
            make.left.equalToSuperview().offset(25)
            make.bottom.equalTo(viewBack.snp.top).offset(-23)
            make.height.equalTo(40)
            make.width.equalTo(330)
        }
        
        viewline.backgroundColor = .gray
        view.addSubview(viewline)
        viewline.snp.makeConstraints{make in
            make.left.right.equalToSuperview().inset(25)
            make.bottom.equalTo(viewBack.snp.top).offset(-18)
            make.height.equalTo(1)
        }
        
        label3.text = "Your Area"
        label3.numberOfLines = 0
        label3.textAlignment = .center
        label3.textColor = .gray
        label3.font = UIFont.boldSystemFont(ofSize: 14)
        label3.alpha = 0.9
        view.addSubview(label3)
        label3.snp.makeConstraints{make in
            make.top.equalTo(viewBack.snp.top).offset(15)
            make.left.equalToSuperview().offset(25)
        }
        
        
        textField1.placeholder = "Type of your area"
        view.addSubview(textField1)
        textField1.snp.makeConstraints {make in
            make.left.equalToSuperview().offset(25)
            make.bottom.equalTo(viewBack.snp.top).offset(80)
            make.height.equalTo(40)
            make.width.equalTo(330)
        }
        
        viewline1.backgroundColor = .gray
        view.addSubview(viewline1)
        viewline1.snp.makeConstraints{make in
            make.left.right.equalToSuperview().inset(25)
            make.top.equalTo(textField1.snp.bottom).inset(2)
            make.height.equalTo(1)
        }
        
        
        viewBack.addSubview(button)
        button.backgroundColor = UIColor(red: 107/255, green: 175/255, blue: 122/255, alpha: 1)
        button.setTitle("Sabmit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(nil, action: #selector(tapButton(sender:)), for: .touchUpInside)
        button.snp.makeConstraints{make in
            make.bottom.equalTo(viewBack.snp.bottom).offset(-105)
            make.centerX.equalToSuperview()
            make.width.equalTo(330)
            make.height.equalTo(60)
        }
        
    }
    
    @objc func tapButton(sender: UIButton) {
        if sender.titleLabel?.text == "Sabmit"{
            navigationController?.pushViewController(ViewController5(), animated: true)
            
            
            
        }
    }
}
