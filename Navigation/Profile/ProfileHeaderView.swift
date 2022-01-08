//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 23.12.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    let avatarImageView = UIImageView()
    private let avatarImageViewWidth: CGFloat = 100
    let fullNameLabel = UILabel()
    let statusLabel = UILabel()
    let statusTextField = UITextField()
    let setStatusButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.cornerRadius = avatarImageViewWidth / 2
        
        avatarImageView.contentMode = .scaleAspectFill
        
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        fullNameLabel.textColor = .black
        
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.font = UIFont.systemFont(ofSize: 14)
        statusLabel.textColor = .gray
        
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.font = UIFont.systemFont(ofSize: 15)
        statusTextField.textColor = .black
        statusTextField.backgroundColor = .white
        
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.layer.cornerRadius = 12
        
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.backgroundColor = .magenta
        
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        
        [
            avatarImageView,
            fullNameLabel,
            statusLabel,
            statusTextField,
            setStatusButton
        ].forEach { addSubview($0) }
        
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            avatarImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: avatarImageViewWidth),
            
            fullNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 27),
            fullNameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 16),
            fullNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            statusLabel.topAnchor.constraint(greaterThanOrEqualTo: fullNameLabel.bottomAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -16),
            statusLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 16),
            statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -16),
            statusTextField.leftAnchor.constraint(equalTo: statusLabel.leftAnchor),
            statusTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            
            setStatusButton.topAnchor.constraint(greaterThanOrEqualTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            setStatusButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
