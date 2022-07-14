//
//  FeedViewController.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//
import UIKit

class FeedViewController: UIViewController {
    private let verticalStack = UIStackView()
    private let firstPostButton = UIButton()
    private let secondPostButton = UIButton()
    private let post = Post(title: "Post Title")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(verticalStack)

        firstPostButton.setTitle("Open post", for: .normal)
        firstPostButton.setTitleColor(.black, for: .normal)
        firstPostButton.backgroundColor = .gray
        
        secondPostButton.setTitle("Open second post", for: .normal)
        secondPostButton.setTitleColor(.darkGray, for: .normal)
        secondPostButton.backgroundColor = .lightGray

        firstPostButton.addTarget(self, action: #selector(postButtonTapped), for: .touchUpInside)
        secondPostButton.addTarget(self, action: #selector(postButtonTapped), for: .touchUpInside)
        
        verticalStack.axis = .vertical
        verticalStack.distribution = .equalSpacing
        verticalStack.spacing = 10
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        
        [firstPostButton,
         secondPostButton
        ].forEach { verticalStack.addArrangedSubview($0) }
        
        NSLayoutConstraint.activate([
            firstPostButton.heightAnchor.constraint(equalToConstant: 50),
            secondPostButton.heightAnchor.constraint(equalTo: firstPostButton.heightAnchor),
            secondPostButton.widthAnchor.constraint(equalTo: firstPostButton.widthAnchor),
            
            verticalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verticalStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }

    @objc private func postButtonTapped(_ sender: UIButton) {
        let postViewController = PostViewController(post: post)
        navigationController?.pushViewController(postViewController, animated: true)
    }
}
