//
//  ViewController2.swift
//  Figma–3
//
//  Created by Aziz on 5/1/22.
//

import Foundation
import SnapKit

class ViewController2: UIViewController {
    
    private var label = UILabel()
    private var label1 = UILabel()
    private var imageFlag = UIImageView()
    private var textField = UITextField()
    private var viewLine = UIView()
    private var button = UIButton()
    private var viewNumber = UIView()
    private var imageFone = UIImageView()
    
    
    private var zero     = UIButton(type: .system)
    private var one      = UIButton(type: .system)
    private var two      = UIButton(type: .system)
    private var three    = UIButton(type: .system)
    private var four     = UIButton(type: .system)
    private var five     = UIButton(type: .system)
    private var six      = UIButton(type: .system)
    private var seven    = UIButton(type: .system)
    private var eight    = UIButton(type: .system)
    private var nine     = UIButton(type: .system)
    
    
    private var clear    = UIButton(type: .system)
    private var plus     = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(imageFone)
        imageFone.image = UIImage(named: "Group2")
        imageFone.snp.makeConstraints{make in
            make.left.top.right.equalToSuperview()
        }
        
        label.text = "Enter your mobile number"
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        view.addSubview(label)
        label.snp.makeConstraints{make in
            make.left.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(140)
            make.right.equalToSuperview().offset(-80)
        }
        
        
        
        label1.text = "Mobile Number"
        label1.numberOfLines = 0
        label1.textAlignment = .left
        label1.alpha = 0.7
        label1.textColor = .black
        label1.font  = label1.font.withSize(13)
        
        view.addSubview(label1)
        label1.snp.makeConstraints{make in
            make.top.equalTo(label.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(25)
            make.width.equalTo(120)
        }
        
        view.addSubview(imageFlag)
        imageFlag.image = UIImage(named: "Flag")
        imageFlag.snp.makeConstraints{make in
            make.top.equalTo(label1.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(25)
        }
        
        textField.placeholder = "+996"
        
        view.addSubview(textField)
        textField.snp.makeConstraints {make in
            make.left.equalTo(imageFlag.snp.right)
            make.top.equalTo(label1.snp.bottom).offset(2)
            make.height.equalTo(40)
            make.width.equalTo(280)
        }
        
        
        view.addSubview(viewLine)
        viewLine.backgroundColor = .darkGray
        viewLine.snp.makeConstraints{make in
            make.top.equalTo(textField.snp.bottom)
            make.left.right.equalToSuperview().inset(60)
            make.height.equalTo(1)
        }
        
        button.backgroundColor = UIColor(red: 107/255, green: 175/255, blue: 122/255, alpha: 1)
        button.setTitle(">", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 35
        button.addTarget(nil, action: #selector(tapButton(sender:)), for: .touchUpInside)
        view.addSubview(button)
        button.snp.makeConstraints{make in
            make.width.height.equalTo(70)
            make.right.equalToSuperview().offset(-25)
            make.bottom.equalToSuperview().offset(-330)
        }
        
        view.addSubview(viewNumber)
        viewNumber.backgroundColor = .gray
        viewNumber.snp.makeConstraints{make in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(300)
        }
        
        
        viewNumber.addSubview(one)
        one.snp.makeConstraints{make in
            make.left.top.equalToSuperview()
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(two)
        two.snp.makeConstraints{make in
            make.top.equalToSuperview()
            make.left.equalTo(one.snp.right)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(three)
        three.snp.makeConstraints{make in
            make.top.right.equalToSuperview()
            make.left.equalTo(two.snp.right)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        
        viewNumber.addSubview(four)
        four.snp.makeConstraints{make in
            make.left.equalToSuperview()
            make.top.equalTo(one.snp.bottom)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(five)
        five.snp.makeConstraints{make in
            make.top.equalTo(two.snp.bottom)
            make.left.equalTo(four.snp.right)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(six)
        six.snp.makeConstraints{make in
            make.right.equalToSuperview()
            make.left.equalTo(five.snp.right)
            make.top.equalTo(three.snp.bottom)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        
        viewNumber.addSubview(seven)
        seven.snp.makeConstraints{make in
            make.left.equalToSuperview()
            make.top.equalTo(four.snp.bottom)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(eight)
        eight.snp.makeConstraints{make in
            make.top.equalTo(five.snp.bottom)
            make.left.equalTo(seven.snp.right)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(nine)
        nine.snp.makeConstraints{make in
            make.right.equalToSuperview()
            make.left.equalTo(eight.snp.right)
            make.top.equalTo(six.snp.bottom)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        
        
        viewNumber.addSubview(plus)
        plus.snp.makeConstraints{make in
            make.left.equalToSuperview()
            make.top.equalTo(seven.snp.bottom)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(zero)
        zero.snp.makeConstraints{make in
            make.top.equalTo(eight.snp.bottom)
            make.left.equalTo(plus.snp.right)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        viewNumber.addSubview(clear)
        clear.snp.makeConstraints{make in
            make.left.equalTo(zero.snp.right)
            make.top.equalTo(nine.snp.bottom)
            make.right.equalToSuperview()
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        zero.backgroundColor = .white
        zero.setTitle("0", for: .normal)
        zero.setTitleColor(.black, for: .normal)
        zero.layer.cornerRadius = 7
        zero.layer.borderWidth = 4
        zero.layer.borderColor = UIColor.gray.cgColor
        zero.titleLabel?.font = .systemFont(ofSize: 30)
        
        one.backgroundColor = .white
        one.setTitle("1", for: .normal)
        one.setTitleColor(.black, for: .normal)
        one.layer.cornerRadius = 7
        one.layer.borderWidth = 4
        one.layer.borderColor = UIColor.gray.cgColor
        one.titleLabel?.font = .systemFont(ofSize: 30)
        
        two.backgroundColor = .white
        two.setTitle("2", for: .normal)
        two.setTitleColor(.black, for: .normal)
        two.layer.cornerRadius = 7
        two.layer.borderWidth = 4
        two.layer.borderColor = UIColor.gray.cgColor
        two.titleLabel?.font = .systemFont(ofSize: 30)
        
        three.backgroundColor = .white
        three.setTitle("3", for: .normal)
        three.setTitleColor(.black, for: .normal)
        three.layer.cornerRadius = 7
        three.layer.borderWidth = 4
        three.layer.borderColor = UIColor.gray.cgColor
        three.titleLabel?.font = .systemFont(ofSize: 30)
        
        four.backgroundColor = .white
        four.setTitle("4", for: .normal)
        four.setTitleColor(.black, for: .normal)
        four.layer.cornerRadius = 7
        four.layer.borderWidth = 4
        four.layer.borderColor = UIColor.gray.cgColor
        four.titleLabel?.font = .systemFont(ofSize: 30)
        
        five.backgroundColor = .white
        five.setTitle("5", for: .normal)
        five.setTitleColor(.black, for: .normal)
        five.layer.cornerRadius = 7
        five.layer.borderWidth = 4
        five.layer.borderColor = UIColor.gray.cgColor
        five.titleLabel?.font = .systemFont(ofSize: 30)
        
        six.backgroundColor = .white
        six.setTitle("6", for: .normal)
        six.setTitleColor(.black, for: .normal)
        six.layer.cornerRadius = 7
        six.layer.borderWidth = 4
        six.layer.borderColor = UIColor.gray.cgColor
        six.titleLabel?.font = .systemFont(ofSize: 30)
        
        seven.backgroundColor = .white
        seven.setTitle("7", for: .normal)
        seven.setTitleColor(.black, for: .normal)
        seven.layer.cornerRadius = 7
        seven.layer.borderWidth = 4
        seven.layer.borderColor = UIColor.gray.cgColor
        seven.titleLabel?.font = .systemFont(ofSize: 30)
        
        eight.backgroundColor = .white
        eight.setTitle("8", for: .normal)
        eight.setTitleColor(.black, for: .normal)
        eight.layer.cornerRadius = 7
        eight.layer.borderWidth = 4
        eight.layer.borderColor = UIColor.gray.cgColor
        eight.titleLabel?.font = .systemFont(ofSize: 30)
        
        nine.backgroundColor = .white
        nine.setTitle("9", for: .normal)
        nine.setTitleColor(.black, for: .normal)
        nine.layer.cornerRadius = 7
        nine.layer.borderWidth = 4
        nine.layer.borderColor = UIColor.gray.cgColor
        nine.titleLabel?.font = .systemFont(ofSize: 30)
        
        
        plus.backgroundColor = .gray
        plus.setTitle("+", for: .normal)
        plus.setTitleColor(.black, for: .normal)
        plus.layer.cornerRadius = 7
        plus.layer.borderWidth = 4
        plus.layer.borderColor = UIColor.gray.cgColor
        plus.titleLabel?.font = .systemFont(ofSize: 35)
        
        
        clear.backgroundColor = .gray
        clear.setTitle("C", for: .normal)
        clear.setTitleColor(.black, for: .normal)
        clear.layer.cornerRadius = 7
        clear.layer.borderWidth = 4
        clear.layer.borderColor = UIColor.gray.cgColor
        clear.titleLabel?.font = .systemFont(ofSize: 30)
        
        
        
    }
    
    @objc func tapButton(sender: UIButton) {
        if sender.titleLabel?.text == ">"{
            navigationController?.pushViewController(ViewController3(), animated: true)

        }
    }
    
}
