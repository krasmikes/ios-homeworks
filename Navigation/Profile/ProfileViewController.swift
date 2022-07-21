//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//
import UIKit

class ProfileViewController: UIViewController {
    
    private let profileHeaderView = ProfileHeaderView()
    private var statusText: String = "Waiting for something..."
    private let newButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.clipsToBounds = true
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.backgroundColor = .systemBackground
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Profile"
        
        profileHeaderView.avatarImageView.image = UIImage(named: "cat")
        profileHeaderView.fullNameLabel.text = "Hipster Cat"
        profileHeaderView.statusLabel.text = statusText
        profileHeaderView.statusTextField.placeholder = statusText
        profileHeaderView.setStatusButton.setTitle("Show status", for: .normal)
        
        profileHeaderView.setStatusButton.addTarget(self, action: #selector(statusButtonPressed), for: .touchUpInside)
        profileHeaderView.statusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        
        newButton.setTitle("New button", for: .normal)
        newButton.setTitleColor(.black, for: .normal)
        newButton.backgroundColor = .cyan
        newButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leftAnchor.constraint(equalTo: view.leftAnchor),
            profileHeaderView.rightAnchor.constraint(equalTo: view.rightAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            newButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            newButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc func statusButtonPressed() {
        profileHeaderView.statusLabel.text = statusText
        print(profileHeaderView.statusLabel.text)

    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text ?? statusText
    }
}
