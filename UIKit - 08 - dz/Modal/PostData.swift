//
//  PostData.swift
//  UIKit - 08 - dz
//
//  Created by Олег Дмитриев on 09.08.2024.
//

import UIKit

struct PostData {
    let title: String
    let descr: String
    let thumbnail: String
    let gallery01: String
    let gallery02: String
    let gallery03: String
    
    static func mockData() -> [PostData] {
        [
            PostData(title: "Oleg Dmitriev 1", 
                     descr: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt 1",
                     thumbnail: "post-01",
                     gallery01: "post-01-thumbnail-01",
                     gallery02: "post-01-thumbnail-02",
                     gallery03: "post-01-thumbnail-03"),
            PostData(title: "Oleg Dmitriev 2",
                     descr: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt 2",
                     thumbnail: "post-02",
                     gallery01: "post-02-thumbnail-01",
                     gallery02: "post-02-thumbnail-02",
                     gallery03: "post-02-thumbnail-03"),
            PostData(title: "Oleg Dmitriev 3",
                     descr: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt 3",
                     thumbnail: "post-03",
                     gallery01: "post-03-thumbnail-01",
                     gallery02: "post-03-thumbnail-02",
                     gallery03: "post-03-thumbnail-03")
        ]
    }
}
