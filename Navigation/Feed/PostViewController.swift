//
//  PostViewController.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//
import UIKit

class PostViewController: UIViewController {

    let post: Post

    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = post.title

        view.backgroundColor = .cyan

        let barButton = UIBarButtonItem(image: UIImage(systemName: "info.circle"),
                                        style: .plain,
                                        target: self,
                                        action: #selector(barButtonTapped))
        self.navigationItem.setRightBarButton(barButton, animated: true)
    }

    @objc private func barButtonTapped (_ sender: UIBarButtonItem) {
        let infoViewController = InfoViewController()
        navigationController?.present(infoViewController, animated: true, completion: nil)
    }
}
