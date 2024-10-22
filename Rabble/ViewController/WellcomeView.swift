//
//  WellcomeView.swift
//  Rabble
//
//  Created by Mujahed Ansari on 18/10/24.
//

import UIKit

class WellcomeView: BaseViewController {
    
    let welcomeImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(named: Constants.imageName.welcomeImage)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let titleLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.welcomeTitleText
        label.font = UIFont.init(name: Constants.fontName.outfitExtraBold, size: 34)
        label.textAlignment = .center
        label.textColor = .aapTextHeadingColor
        return label
    }()
    
    let subTitleLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.welcomeSubTitleText
        label.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 17)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.textColor = .appTextColor
        return label
    }()
    
    let walletNoLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.welcomeWaletText
        label.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 17)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.textColor = .appTextColor
        return label
    }()
    
    let continueBtn: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle(Constants.textContaint.launchScreenBtn, for: .normal)
        button.setTitleColor(.appContinueButtonText, for: .normal)
        button.backgroundColor = .appButtonColor
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 15)
        button.addTarget(self, action: #selector(continueTapped), for: .touchUpInside)
        return button
    }()
    
    
    let copyAddressBtn: UIButton = {
        let button: UIButton = UIButton(type: .custom)
        button.setTitle(Constants.textContaint.copyAddressText, for: .normal)
        button.setTitleColor(.appButtonColor, for: .normal)
        button.titleLabel?.font = UIFont.init(name: Constants.fontName.outfitMedium, size: 11)
        button.addTarget(self, action: #selector(copyAddressTapped), for: .touchUpInside)
        button.layer.style = .none
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupUI()
        setAutoLayoutConstraint()
    } //end function body.
    
    private func setupUI() {
        self.view.addSubview(welcomeImageView)
        self.view.addSubview(titleLbl)
        self.view.addSubview(subTitleLbl)
        self.view.addSubview(walletNoLbl)
        self.view.addSubview(copyAddressBtn)
        self.view.addSubview(continueBtn)
    }//end function body.
    
    private func setAutoLayoutConstraint() {
        welcomeImageView.translatesAutoresizingMaskIntoConstraints = false
        welcomeImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        welcomeImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:   (self.view.height / 8)).isActive = true
        
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.centerXAnchor.constraint(equalTo: self.welcomeImageView.centerXAnchor).isActive = true
        titleLbl.topAnchor.constraint(equalTo: self.welcomeImageView.bottomAnchor, constant: 1 * (self.view.height / 20)).isActive = true
        
        subTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        subTitleLbl.centerXAnchor.constraint(equalTo: self.welcomeImageView.centerXAnchor).isActive = true
        subTitleLbl.topAnchor.constraint(equalTo: self.titleLbl.bottomAnchor, constant: 20).isActive = true
        
        walletNoLbl.translatesAutoresizingMaskIntoConstraints = false
        walletNoLbl.centerXAnchor.constraint(equalTo: self.welcomeImageView.centerXAnchor).isActive = true
        walletNoLbl.topAnchor.constraint(equalTo: self.subTitleLbl.bottomAnchor, constant: 1 * (self.view.height / 20)).isActive = true
        
        copyAddressBtn.translatesAutoresizingMaskIntoConstraints = false
        copyAddressBtn.centerXAnchor.constraint(equalTo: self.welcomeImageView.centerXAnchor).isActive = true
        copyAddressBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        copyAddressBtn.topAnchor.constraint(equalTo: self.walletNoLbl.bottomAnchor, constant: 20).isActive = true
        
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        continueBtn.centerXAnchor.constraint(equalTo: self.welcomeImageView.centerXAnchor).isActive = true
        continueBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        continueBtn.widthAnchor.constraint(equalToConstant: (self.view.width - 80)).isActive = true
        continueBtn.bottomAnchor.constraint(equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.bottomAnchor, multiplier: 1).isActive = true
    }//end function body.
    
    @objc func continueTapped(sender: UIButton) {
        
    }//end function body.
    
    
    @objc func copyAddressTapped(sender: UIButton){
        
    }//end function body.
} //end class body.
