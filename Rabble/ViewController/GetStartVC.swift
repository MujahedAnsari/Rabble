//
//  GetStartVC.swift
//  Rabble
//
//  Created by Mujahed Ansari on 17/10/24.
//

import UIKit

class GetStartVC: BaseViewController {
    
    let logoImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(named: Constants.imageName.titleLogo)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let boxImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(named: Constants.imageName.launchScreenbox)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let welcomeLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.launchScreenHeading
        label.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 30)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.textColor = .aapTextHeadingColor
        let attributedText = label.text!.setColor(.appButtonColor, ofSubstring: Constants.textContaint.titleText)
        label.attributedText = attributedText
        return label
    }()
    
    let getStartBtn: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle(Constants.textContaint.launchScreenBtn, for: .normal)
        button.setTitleColor(.aapButtonTextColor, for: .normal)
        button.backgroundColor = .appButtonColor
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 15)
        button.addTarget(self, action: #selector(getStartTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setAutoLayoutConstraint()
    }//end function body.
    
    private func setupUI() {
        
        self.view.addSubview(logoImageView)
        self.view.addSubview(boxImageView)
        self.view.addSubview(welcomeLbl)
        self.view.addSubview(getStartBtn)
   
    }//end function body.
    
    private func setAutoLayoutConstraint() {
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    
        boxImageView.translatesAutoresizingMaskIntoConstraints = false
        boxImageView.centerXAnchor.constraint(equalTo: self.logoImageView.centerXAnchor).isActive = true
        boxImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -1 * (self.view.height / 10)).isActive = true
        
        logoImageView.bottomAnchor.constraint(equalTo: self.boxImageView.topAnchor, constant:  -1 * (self.view.height / 10)).isActive = true
        
        welcomeLbl.translatesAutoresizingMaskIntoConstraints = false
        welcomeLbl.centerXAnchor.constraint(equalTo: self.logoImageView.centerXAnchor).isActive = true
        welcomeLbl.topAnchor.constraint(equalTo: self.boxImageView.bottomAnchor, constant: 1 * (self.view.height / 8)).isActive = true
        
        getStartBtn.translatesAutoresizingMaskIntoConstraints = false
        getStartBtn.centerXAnchor.constraint(equalTo: self.logoImageView.centerXAnchor).isActive = true
        getStartBtn.topAnchor.constraint(equalTo: self.welcomeLbl.bottomAnchor, constant: 30).isActive = true
        getStartBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        getStartBtn.widthAnchor.constraint(equalToConstant: (self.view.width - 80)).isActive = true
        
    }//end function body.
    
    @objc func getStartTapped(sender: UIButton) {
        let logiView = LoginView()
        self.navigationController?.pushViewController(logiView, animated: true)
    } //end function body.
    
} //end ViewController class.
