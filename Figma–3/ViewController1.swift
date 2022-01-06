//
//  ViewController1.swift
//  Figma–3
//
//  Created by Aziz on 5/1/22.
//

import Foundation
import SnapKit

class ViewController1: UIViewController {
    
    private var image = UIImageView()
    private var label = UILabel()
    private var imageFlag = UIImageView()
    private var textField = UITextField()
    private var viewLine = UIView()
    private var label1 = UILabel()
    
    private var buttonF = UIButton()
    private var buttonG = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(image)
        image.image = UIImage(named: "Image")
        image.snp.makeConstraints{make in
            make.top.trailing.leading.equalToSuperview()
        }
        
        view.addSubview(label)
        label.numberOfLines = 0
        label.text = "Get your groceries \nwith nectar"
        label.textAlignment = .left
        label.textColor = .black
        label.font  = label.font.withSize(25)
        label.snp.makeConstraints{make in
            make.left.equalToSuperview().offset(25)
            make.centerY.equalToSuperview()
        }
        
        view.addSubview(imageFlag)
        imageFlag.image = UIImage(named: "Flag")
        imageFlag.snp.makeConstraints{make in
            make.centerY.equalToSuperview().offset(60)
            make.left.equalToSuperview().offset(35)
        }
        
        view.addSubview(textField)
        textField.placeholder = "+996"
        
        textField.snp.makeConstraints {make in
            make.left.equalTo(imageFlag.snp.right)
            make.centerY.equalToSuperview().offset(60)
            make.height.equalTo(40)
            make.width.equalTo(280)
        }
        
        view.addSubview(viewLine)
        viewLine.backgroundColor = .darkGray
        viewLine.snp.makeConstraints{make in
            make.top.equalTo(textField.snp.bottom)
            make.left.right.equalToSuperview().inset(70)
            make.height.equalTo(1)
        }
        
        
        view.addSubview(label1)
        
        label1.text = "Or connect with social media"
        label1.numberOfLines = 0
        label1.textAlignment = .center
        label1.alpha = 0.7
        label1.textColor = .black
        label1.font  = label1.font.withSize(13)
        label1.snp.makeConstraints{make in
            make.top.equalTo(textField.snp.bottom).offset(60)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(buttonG)
        buttonG.backgroundColor = UIColor(red: 93/255, green: 130/255, blue: 228/255, alpha: 1)
        buttonG.setTitle("Continue with Google", for: .normal)
        buttonG.setTitleColor(.white, for: .normal)
        buttonG.layer.cornerRadius = 20
        buttonG.addTarget(nil, action: #selector(tapButton(sender:)), for: .touchUpInside)
        buttonG.snp.makeConstraints{make in
            make.top.equalTo(label1.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(330)
            make.height.equalTo(60)
        }
        
        view.addSubview(buttonF)
        buttonF.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 167/255, alpha: 1)
        buttonF.setTitle("Continue with FaceBook", for: .normal)
        buttonF.setTitleColor(.white, for: .normal)
        buttonF.layer.cornerRadius = 20
        buttonF.addTarget(nil, action: #selector(tapButton(sender:)), for: .touchUpInside)
        buttonF.snp.makeConstraints{make in
            make.top.equalTo(buttonG.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(330)
            make.height.equalTo(60)
        }
        
        
        
    }
    @objc func tapButton(sender: UIButton) {
        if sender.titleLabel?.text == "Continue with Google"{
            navigationController?.pushViewController(ViewController2(), animated: true)
        }else if sender.titleLabel?.text == "Continue with FaceBook"{
            navigationController?.pushViewController(ViewController2(), animated: true)
            
            
        }
    }
}
