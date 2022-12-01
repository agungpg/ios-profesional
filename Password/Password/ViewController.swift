//
//  ViewController.swift
//  Password
//
//  Created by Agung Perda Gumelar on 01/12/22.
//
import UIKit

class ViewController: UIViewController {
    
    let stackview = UIStackView()
    
    let newPasswordTextField = PasswordTextField(placeHolderText: "New password")
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    
}

extension ViewController {
    
    
    private func style(){
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.spacing = 20
        
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        stackview.addArrangedSubview(newPasswordTextField)
        
        view.addSubview(stackview)
        
        NSLayoutConstraint.activate([
            stackview.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier:2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: newPasswordTextField.trailingAnchor, multiplier:2),
            stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}


