//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Михаил Апанасенко on 21.07.22.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    private let postTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.numberOfLines = 2
        return label
    }()
    private let postImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        return imageView
    }()
    private let postDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.numberOfLines = 0
        return label
    }()
    private let postLikes: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    private let postViewsCount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        label.textAlignment = .right
        return label
    }()

    private let padding: CGFloat = 16

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        [
            postTitle,
            postImage,
            postDescription,
            postLikes,
            postViewsCount
        ].forEach { addSubview($0) }

        NSLayoutConstraint.activate([
            postTitle.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            postTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            postTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),

            postImage.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: padding),
            postImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            postImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            postImage.widthAnchor.constraint(equalTo: widthAnchor),
            postImage.heightAnchor.constraint(equalTo: postImage.widthAnchor),

            postDescription.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: padding),
            postDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            postDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),

            postLikes.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: padding),
            postLikes.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            postLikes.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),

            postViewsCount.topAnchor.constraint(equalTo: postLikes.topAnchor),
            postViewsCount.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            postViewsCount.bottomAnchor.constraint(equalTo: postLikes.bottomAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureCell(_ post: Post) {
        postTitle.text = post.title
        postImage.image = UIImage(named: post.image)
        postDescription.text = post.description
        postLikes.text = "Likes: \(post.likes)"
        postViewsCount.text = "Views: \(post.views)"
    }

}
