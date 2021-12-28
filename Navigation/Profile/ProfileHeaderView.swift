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
    let nameLabel = UILabel()
    let statusLabel = UILabel()
    let statusInputTextField = UITextField()
    let statusButton = UIButton()
    
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
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nameLabel.textColor = .black
        
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.font = UIFont.systemFont(ofSize: 14)
        statusLabel.textColor = .gray
        
        statusInputTextField.translatesAutoresizingMaskIntoConstraints = false
        statusInputTextField.font = UIFont.systemFont(ofSize: 15)
        statusInputTextField.textColor = .black
        statusInputTextField.backgroundColor = .white
        
        statusInputTextField.layer.borderWidth = 1
        statusInputTextField.layer.borderColor = UIColor.black.cgColor
        statusInputTextField.layer.cornerRadius = 12
        
        statusButton.translatesAutoresizingMaskIntoConstraints = false
        statusButton.layer.cornerRadius = 4
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.backgroundColor = .magenta
        
        statusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        statusButton.layer.shadowRadius = 4
        statusButton.layer.shadowOpacity = 0.7
        statusButton.layer.shadowColor = UIColor.black.cgColor
        
        [
            avatarImageView,
            nameLabel,
            statusLabel,
            statusInputTextField,
            statusButton
        ].forEach { addSubview($0) }
        
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            avatarImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: avatarImageViewWidth),
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 27),
            nameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 16),
            nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            statusLabel.topAnchor.constraint(greaterThanOrEqualTo: nameLabel.bottomAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: statusInputTextField.topAnchor, constant: -16),
            statusLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 16),
            statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            statusInputTextField.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -16),
            statusInputTextField.leftAnchor.constraint(equalTo: statusLabel.leftAnchor),
            statusInputTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            statusInputTextField.heightAnchor.constraint(equalToConstant: 40),
            
            statusButton.topAnchor.constraint(greaterThanOrEqualTo: avatarImageView.bottomAnchor, constant: 16),
            statusButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            statusButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            statusButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
