//
//  Post.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//

import Foundation

struct Post {
    let title: String
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int

    init(
        title: String = "No title",
        author: String = "No author",
        description: String = "No description",
        image: String = "",
        likes: Int = 0,
        views: Int = 0
    ) {
        self.title = title
        self.author = author
        self.description = description
        self.image = image
        self.likes = likes
        self.views = views
    }

    static func getSomePosts() -> [Post] {
        return [
            Post(
                title: "First post",
                author: "First author",
                description: "First post text",
                image: "firstPostImage",
                likes: Int.random(in: 0...10),
                views: Int.random(in: 0...10)
            ),
            Post(
                title: "Second post",
                author: "Second author",
                description: "Second post text",
                image: "secondPostImage",
                likes: Int.random(in: 0...10),
                views: Int.random(in: 0...10)
            ),
            Post(
                title: "Third post",
                author: "Third author",
                description: "Third post text",
                image: "thirdPostImage",
                likes: Int.random(in: 0...10),
                views: Int.random(in: 0...10)
            ),
            Post(
                title: "Fourth post",
                author: "Fourth author",
                description: "Fourth post text",
                image: "fourthPostImage",
                likes: Int.random(in: 0...10),
                views: Int.random(in: 0...10)
            ),
            Post(
                title: "Fifth post",
                author: "Fifth author",
                description: "Fifth post text",
                image: "fifthPostImage",
                likes: Int.random(in: 0...10),
                views: Int.random(in: 0...10)
            )
        ]
    }
}
