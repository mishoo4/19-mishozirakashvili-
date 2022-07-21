//
//  ViewController.swift
//  19(mishozirakashvili)
//
//  Created by misho zirakashvili on 21.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundGradient()
        configureStackView()
        configureUI()
    }
    
    // MARK: create Title
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS App Templates"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize:35)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    // MARK: create rocket logo with circle background
    private let rocketWithEmoji: UILabel = {
        let label = UILabel()
        label.text = "🚀"
        label.font = .systemFont(ofSize: 100)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    private var circleBackground: UIView = {
        let circle = UIView()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 240, height: 240)
        gradientLayer.colors = [UIColor.systemIndigo.cgColor,UIColor.systemPurple.cgColor]
        gradientLayer.cornerRadius = 120
        circle.layer.addSublayer(gradientLayer)
        circle.backgroundColor = .purple
        circle.layer.cornerRadius = 120
        circle.layer.borderWidth = 4
        circle.layer.borderColor = CGColor(red: 1.5, green: 1.5, blue: 1.5, alpha: 1.5)
        
        circle.translatesAutoresizingMaskIntoConstraints = false
        return circle
    }()
    // MARK: create textfields and add in stackView
    private let textfields: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.layer.cornerRadius = 20
        textField.textPadding(17)
        textField.backgroundColor = UIColor.init(white: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    
    private var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.textPadding(17)
        textField.layer.cornerRadius = 20
        textField.backgroundColor = UIColor.init(white: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    // MARK: create sign in Button
    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.systemGreen
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // MARK: create bottom label for registration
    lazy var bottomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dont have an account?Sign Up"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15)
        
        return label
    }()
    
    // MARK: make purple and blue color gradients for background
    
    private func backgroundGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor,UIColor.systemBlue.cgColor]
        
        view.layer.addSublayer(gradientLayer)
    }
    
    private func configureStackView() {
        textfields.addArrangedSubview(emailTextField)
        textfields.addArrangedSubview(passwordTextField)
    }
    // MARK: configureUIComponents
    
    private func configureUI() {
        
        self.view.addSubview(topLabel)
        circleBackground.addSubview(rocketWithEmoji)
        self.view.addSubview(circleBackground)
        configureStackView()
        self.view.addSubview(textfields)
        self.view.addSubview(signInButton)
        self.view.addSubview(bottomLabel)
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            rocketWithEmoji.centerXAnchor.constraint(equalTo: circleBackground.centerXAnchor),
            rocketWithEmoji.centerYAnchor.constraint(equalTo: circleBackground.centerYAnchor),
            rocketWithEmoji.heightAnchor.constraint(equalToConstant: 100),
            rocketWithEmoji.widthAnchor.constraint(equalToConstant: 100),
            
            circleBackground.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 70),
            circleBackground.widthAnchor.constraint(equalToConstant: 240),
            circleBackground.heightAnchor.constraint(equalToConstant: 240),
            circleBackground.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textfields.topAnchor.constraint(equalTo: circleBackground.bottomAnchor, constant: 50),
            textfields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            textfields.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            textfields.heightAnchor.constraint(equalToConstant: 130),
            
            signInButton.topAnchor.constraint(equalTo: textfields.bottomAnchor, constant: 50),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            
            bottomLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

