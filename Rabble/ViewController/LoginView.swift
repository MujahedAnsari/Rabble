//
//  LoginView.swift
//  Rabble
//
//  Created by Mujahed Ansari on 18/10/24.
//

import UIKit
import PhoneNumberKit

class LoginView: BaseViewController {
    
    let telephoneImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(named: Constants.imageName.telephoneImage)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let titleLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.loginViewTitle
        label.font = UIFont.init(name: Constants.fontName.outfitExtraBold, size: 34)
        label.textAlignment = .center
        label.textColor = .aapTextHeadingColor
        return label
    }()
    
    let subTitleLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = Constants.textContaint.loginViewSubTitle
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
        button.isEnabled = false
        return button
    }()
    
    let phoneTextfield: PhoneNumberTextField = {
        let textfield: PhoneNumberTextField = PhoneNumberTextField()
        textfield.placeholder = Constants.textContaint.loginViewTitle
        textfield.font = UIFont.init(name: Constants.fontName.outfitRegular, size: 15)
        textfield.textColor = .appTextColor
        textfield.borderStyle = .none
        textfield.withExamplePlaceholder = true
        textfield.withFlag = true
        textfield.withPrefix = true
        textfield.countryCodePlaceholderColor = .appTextColor
        textfield.withDefaultPickerUI = true
        return textfield
    }()
    
    let lineLbl: UILabel = {
        let label: UILabel = UILabel()
        label.text = " "
        label.backgroundColor = .appTextColor
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupUI()
        setAutoLayoutConstraint()
        
    } //end function body.
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      
    }
    
    private func setupUI() {
        self.view.addSubview(telephoneImageView)
        self.view.addSubview(titleLbl)
        self.view.addSubview(subTitleLbl)
        self.view.addSubview(phoneTextfield)
        self.view.addSubview(lineLbl)
        self.view.addSubview(continueBtn)
        phoneTextfield.delegate = self
    }//end function body.
    
    private func setAutoLayoutConstraint() {
        telephoneImageView.translatesAutoresizingMaskIntoConstraints = false
        telephoneImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        telephoneImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:   (self.view.height / 8)).isActive = true
        
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.centerXAnchor.constraint(equalTo: self.telephoneImageView.centerXAnchor).isActive = true
        titleLbl.topAnchor.constraint(equalTo: self.telephoneImageView.bottomAnchor, constant: 1 * (self.view.height / 20)).isActive = true
        
        subTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        subTitleLbl.centerXAnchor.constraint(equalTo: self.telephoneImageView.centerXAnchor).isActive = true
        subTitleLbl.topAnchor.constraint(equalTo: self.titleLbl.bottomAnchor, constant: 20).isActive = true
        
        phoneTextfield.translatesAutoresizingMaskIntoConstraints = false
        phoneTextfield.centerXAnchor.constraint(equalTo: self.telephoneImageView.centerXAnchor).isActive = true
        phoneTextfield.topAnchor.constraint(equalTo: self.subTitleLbl.bottomAnchor, constant: 1 * (self.view.height / 20)).isActive = true
        phoneTextfield.widthAnchor.constraint(equalToConstant: (self.view.width - 20)).isActive = true
        phoneTextfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        lineLbl.translatesAutoresizingMaskIntoConstraints = false
        lineLbl.centerXAnchor.constraint(equalTo: self.telephoneImageView.centerXAnchor).isActive = true
        lineLbl.topAnchor.constraint(equalTo: self.phoneTextfield.bottomAnchor, constant: 2).isActive = true
        lineLbl.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineLbl.widthAnchor.constraint(equalToConstant: (self.view.width - 10)).isActive = true
        
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        continueBtn.centerXAnchor.constraint(equalTo: self.telephoneImageView.centerXAnchor).isActive = true
        continueBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        continueBtn.widthAnchor.constraint(equalToConstant: (self.view.width - 80)).isActive = true
        continueBtn.bottomAnchor.constraint(equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.bottomAnchor, multiplier: 1).isActive = true
    }//end function body.
    
    private func continueBtnEnable(){
        if phoneTextfield.isValidNumber {
            continueBtn.setTitleColor(.aapButtonTextColor, for: .normal)
            continueBtn.backgroundColor = .appButtonColor
            continueBtn.isEnabled = true
        }else {
            continueBtn.setTitleColor(.appContinueButtonText, for: .normal)
            continueBtn.backgroundColor = .appTextColor
            continueBtn.isEnabled = false
        }
    }//end function body.
    
    @objc func continueTapped(sender: UIButton) {
        let passwordView = PasswordView()
        self.navigationController?.pushViewController(passwordView, animated: true)
        
    }
} //end View class.

extension LoginView : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        continueBtnEnable()
    }
   
    func textFieldDidEndEditing(_ textField: UITextField) {
        continueBtnEnable()
    }
}
