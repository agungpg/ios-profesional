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
    let statusView = PasswordStatusView()
    let confirmPasswordTextField = PasswordTextField(placeHolderText: "Re-enter new password")
    let resetButton = UIButton(type: .system)
    
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
        newPasswordTextField.delegate = self
        
        statusView.translatesAutoresizingMaskIntoConstraints = false
        statusView.layer.cornerRadius = 5
        statusView.clipsToBounds = true
        
        
        confirmPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        confirmPasswordTextField.delegate = self
        
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.configuration = .filled()
        resetButton.setTitle("Reset password", for: [])
//        resetButton.addTarget(self, action: #selector(resetPasswordButtoTapped), for: .primaryActionTriggered)
    }
    
    private func layout() {
        stackview.addArrangedSubview(newPasswordTextField)
        stackview.addArrangedSubview(statusView)
        stackview.addArrangedSubview(confirmPasswordTextField)
        stackview.addArrangedSubview(resetButton)
        
        view.addSubview(stackview)
        
        NSLayoutConstraint.activate([
            stackview.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier:2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: statusView.trailingAnchor, multiplier:2),
            stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

// MARK: PasswordTextFieldDelegate
extension ViewController: PasswordTextFieldDelegate {
    func editingChanged(_ sender: PasswordTextField) {
        if sender === newPasswordTextField {
            statusView.updateDisplay(sender.textField.text ?? "")
        }
    }
}

