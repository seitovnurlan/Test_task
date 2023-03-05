//
//  SecondViewController.swift
//  Test_task
//
//  Created by Nurlan Seitov on 5/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    var nameValue: String?
    
    let beginLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .blue
        label.numberOfLines = 0
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.blue.cgColor
        label.layer.cornerRadius = 5
        label.layer.backgroundColor = UIColor.white.cgColor
        return label
    } ()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .blue
        label.numberOfLines = 0
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.blue.cgColor
        label.layer.cornerRadius = 5
        label.layer.backgroundColor = UIColor.white.cgColor
        return label
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        guard let name = nameValue else {return}
        
        view.addSubview(beginLabel)
        view.addSubview(nameLabel)
        
        beginLabel.text = "Your mail has been identified"
        nameLabel.text = name
        
        beginLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(251)
//            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
            
        }
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(beginLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            //make.leading.equalToSuperview().inset(80)
        }
    }
}
