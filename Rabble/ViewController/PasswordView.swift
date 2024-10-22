//
//  PasswordView.swift
//  Rabble
//
//  Created by Mujahed Ansari on 18/10/24.
//

import UIKit

class PasswordView: BaseViewController {
    
    let passwordImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(named: Constants.imageName.passwordImage)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let titleLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.passwordTitleText
        label.font = UIFont.init(name: Constants.fontName.outfitExtraBold, size: 34)
        label.textAlignment = .center
        label.textColor = .aapTextHeadingColor
        return label
    }()
    
    let subTitleLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.passwordSubTitleText
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
        button.backgroundColor = .appTextColor
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 15)
        button.addTarget(self, action: #selector(continueTapped), for: .touchUpInside)
        return button
    }()
    
    let passwordTxtfield: UITextField = {
        let textfield: UITextField = UITextField()
        textfield.placeholder = Constants.textContaint.passwordTitleText
        textfield.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 15)
        textfield.textColor = .appTextColor
        textfield.borderStyle = .none
        return textfield
    }()
    
    let lineLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = " "
        label.backgroundColor = .appTextColor
        return label
    }()
    
    let forgotPwsBtn: UIButton = {
        let button: UIButton = UIButton(type: .custom)
        button.setTitle(Constants.textContaint.forgotPasswordText, for: .normal)
        button.setTitleColor(.appButtonColor, for: .normal)
        button.titleLabel?.font = UIFont.init(name: Constants.fontName.outfitMedium, size: 11)
        button.addTarget(self, action: #selector(forgotPasswordTapped), for: .touchUpInside)
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
        self.view.addSubview(passwordImageView)
        self.view.addSubview(titleLbl)
        self.view.addSubview(subTitleLbl)
        self.view.addSubview(passwordTxtfield)
        self.view.addSubview(lineLbl)
        self.view.addSubview(forgotPwsBtn)
        self.view.addSubview(continueBtn)
    }//end function body.
    
    private func setAutoLayoutConstraint() {
        passwordImageView.translatesAutoresizingMaskIntoConstraints = false
        passwordImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        passwordImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:   (self.view.height / 8)).isActive = true
        
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.centerXAnchor.constraint(equalTo: self.passwordImageView.centerXAnchor).isActive = true
        titleLbl.topAnchor.constraint(equalTo: self.passwordImageView.bottomAnchor, constant: 1 * (self.view.height / 20)).isActive = true
        
        subTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        subTitleLbl.centerXAnchor.constraint(equalTo: self.passwordImageView.centerXAnchor).isActive = true
        subTitleLbl.topAnchor.constraint(equalTo: self.titleLbl.bottomAnchor, constant: 20).isActive = true
        
        passwordTxtfield.translatesAutoresizingMaskIntoConstraints = false
        passwordTxtfield.centerXAnchor.constraint(equalTo: self.passwordImageView.centerXAnchor).isActive = true
        passwordTxtfield.topAnchor.constraint(equalTo: self.subTitleLbl.bottomAnchor, constant: 1 * (self.view.height / 15)).isActive = true
        passwordTxtfield.widthAnchor.constraint(equalToConstant: (self.view.width - 20)).isActive = true
        passwordTxtfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        lineLbl.translatesAutoresizingMaskIntoConstraints = false
        lineLbl.centerXAnchor.constraint(equalTo: self.passwordImageView.centerXAnchor).isActive = true
        lineLbl.topAnchor.constraint(equalTo: self.passwordTxtfield.bottomAnchor, constant: 2).isActive = true
        lineLbl.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineLbl.widthAnchor.constraint(equalToConstant: (self.view.width - 10)).isActive = true
        
        forgotPwsBtn.translatesAutoresizingMaskIntoConstraints = false
        forgotPwsBtn.centerXAnchor.constraint(equalTo: self.passwordImageView.centerXAnchor).isActive = true
        forgotPwsBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        forgotPwsBtn.topAnchor.constraint(equalTo: self.lineLbl.bottomAnchor, constant: 6).isActive = true
        
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        continueBtn.centerXAnchor.constraint(equalTo: self.passwordImageView.centerXAnchor).isActive = true
        continueBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        continueBtn.widthAnchor.constraint(equalToConstant: (self.view.width - 80)).isActive = true
        continueBtn.topAnchor.constraint(equalTo: self.forgotPwsBtn.bottomAnchor, constant: 1 * (self.view.height / 15)).isActive = true
       // continueBtn.bottomAnchor.constraint(equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.bottomAnchor, multiplier: 1).isActive = true
    }//end function body.
    
    @objc func continueTapped(sender: UIButton) {
       let inviteCodeView = InviteCodeView()
        self.navigationController?.pushViewController(inviteCodeView, animated: true)
    }
    
    @objc func forgotPasswordTapped(sender: UIButton) {
    }
} //end class.
