//
//  viewController6.swift
//  Figma–3
//
//  Created by Aziz on 6/1/22.
//

import Foundation
import SnapKit

class ViewController6: UIViewController {
    
    private var imageFone = UIImageView()
    private var image = UIImageView()
    private var label = UILabel()
    private var label1 = UILabel()
    private var label2 = UILabel()
    private var label3 = UILabel()
    private var label4 = UILabel()
    private var label5 = UILabel()
    private var textField = UITextField()
    private var viewline = UIView()
    
    private var textField1 = UITextField()
    private var viewline1 = UIView()
    
    private var textField2 = UITextField()
    private var viewline2 = UIView()
    
    private var button = UIButton(type: .system)
    
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
        
        imageFone.addSubview(image)
        image.image = UIImage(named: "Group3")
        image.snp.makeConstraints{make in
            make.center.equalToSuperview()
        }
        
        
        label.text = "Sign Up"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .black
        label.font = label.font.withSize(24)
        
        view.addSubview(label)
        label.snp.makeConstraints{make in
            make.top.equalTo(imageFone.snp.bottom).offset(4)
            make.left.equalToSuperview().offset(25)
        }
        
        
        label1.text = "Enter your credentials to continue"
        label1.numberOfLines = 0
        label1.textAlignment = .center
        label1.textColor = .black
        label1.alpha = 0.6
        label1.font = label1.font.withSize(15)
        
        view.addSubview(label1)
        label1.snp.makeConstraints{make in
            make.top.equalTo(label.snp.bottom).offset(16)
            make.left.equalToSuperview().inset(25)
        }
        
        
        label2.text = "Username"
        label2.numberOfLines = 0
        label2.textAlignment = .center
        label2.textColor = .black
        label2.font = UIFont.boldSystemFont(ofSize: 14)
        label2.alpha = 0.9
        view.addSubview(label2)
        label2.snp.makeConstraints{make in
            make.top.equalTo(label1.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(25)
        }
        
        textField.placeholder = "@Azar Azarov"
        view.addSubview(textField)
        textField.snp.makeConstraints {make in
            make.left.equalToSuperview().offset(25)
            make.top.equalTo(label2.snp.bottom).offset(23)
            make.height.equalTo(40)
            make.width.equalTo(330)
        }
        
        viewline.backgroundColor = .gray
        view.addSubview(viewline)
        viewline.snp.makeConstraints{make in
            make.left.right.equalToSuperview().inset(25)
            make.top.equalTo(textField.snp.bottom).offset(2)
            make.height.equalTo(1)
        }
        
        
        label3.text = "Email"
        label3.numberOfLines = 0
        label3.textAlignment = .center
        label3.textColor = .black
        label3.font = UIFont.boldSystemFont(ofSize: 14)
        label3.alpha = 0.9
        view.addSubview(label3)
        label3.snp.makeConstraints{make in
            make.top.equalTo(viewline.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(25)
        }
        
        
        textField1.placeholder = "Azarov@gmail.com"
        view.addSubview(textField1)
        textField1.snp.makeConstraints {make in
            make.left.equalToSuperview().offset(25)
            make.top.equalTo(label3.snp.bottom).offset(20)
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
        
        
        
        label5.text = "Password"
        label5.numberOfLines = 0
        label5.textAlignment = .center
        label5.textColor = .black
        label5.font = UIFont.boldSystemFont(ofSize: 14)
        label5.alpha = 0.9
        view.addSubview(label5)
        label5.snp.makeConstraints{make in
            make.top.equalTo(viewline1.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(25)
        }
        
        
        textField2.placeholder = "• • • • • • • •"
        view.addSubview(textField2)
        textField2.snp.makeConstraints {make in
            make.left.equalToSuperview().offset(25)
            make.top.equalTo(label5.snp.bottom).offset(20)
            make.height.equalTo(40)
            make.width.equalTo(330)
        }
        
        viewline2.backgroundColor = .gray
        view.addSubview(viewline2)
        viewline2.snp.makeConstraints{make in
            make.left.right.equalToSuperview().inset(25)
            make.top.equalTo(textField2.snp.bottom).inset(2)
            make.height.equalTo(1)
        }
        
        
        
        label4.text = "By continuing you agree to our Terms of Service \nand Privacy Policy."
        label4.numberOfLines = 0
        label4.textAlignment = .left
        label4.textColor = .gray
        label4.font = UIFont.boldSystemFont(ofSize: 14)
        label4.alpha = 0.9
        view.addSubview(label4)
        label4.snp.makeConstraints{make in
            make.top.equalTo(viewline2.snp.bottom).offset(18)
            make.right.left.equalToSuperview().offset(25)
        }
        
        
        view.addSubview(button)
        button.backgroundColor = UIColor(red: 107/255, green: 175/255, blue: 122/255, alpha: 1)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.snp.makeConstraints{make in
            make.top.equalTo(label4.snp.bottom).offset(35)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(60)
        }
        
        
    }
}
