//
//  Book.swift
//  kindle
//
//  Created by Jeremy Robinson on 11/15/18.
//  Copyright © 2018 Jeremy Robinson. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let pages: [Page]
    let coverImageUrl: String
    
    
    init(dictionary: [String: Any]){
        title = dictionary["title"] as? String ?? ""
        author = dictionary["author"] as? String ?? ""
        self.coverImageUrl = dictionary["coverImageUrl"] as? String ?? ""
        
        var bookPages = [Page]()

        if let pagesDictionary = dictionary["pages"] as? [[String:Any]] {
            for pageDictionary in pagesDictionary {
                if let pageText = pageDictionary["text"] as? String {
                    let page = Page(number: 1, text: pageText)
                    bookPages.append(page)
                }
            }
        }
        pages = bookPages
    }
}
