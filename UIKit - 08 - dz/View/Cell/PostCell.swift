//
//  PostCell.swift
//  UIKit - 08 - dz
//
//  Created by Олег Дмитриев on 09.08.2024.
//

import UIKit

class PostCell: UITableViewCell {
    
    static let reuseID: String = "PostCell"
    
    lazy var cellView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .appGray
        $0.layer.cornerRadius = 30
        return $0
    }(UIView())
    
    lazy var postThumbnail: UIImageView = AddImage(postImage: "post-01")
    
    lazy var postTitle: UILabel = AddLabel(labelText: "Title", labelFontS: 20, labelLines: 1)
    
    lazy var postDescr: UILabel = AddLabel(labelText: "Descr", labelFontS: 14, labelFontW: .regular, labelLines: 2)
    
    lazy var postGallery01: UIImageView = AddImage(postImage: "post-01-thumbnail-01", postBrs: 20)
    
    lazy var postGallery02: UIImageView = AddImage(postImage: "post-01-thumbnail-02", postBrs: 20)
    
    lazy var postGallery03: UIImageView = AddImage(postImage: "post-01-thumbnail-03", postBrs: 20)
    
    lazy var postButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.heightAnchor.constraint(equalToConstant: 48).isActive = true
        $0.setTitle("show details", for: .normal)
        $0.tintColor = .white
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 24
        return $0
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(cellView)
        
        cellView.addSubviews(postThumbnail, postTitle, postDescr, postGallery01, postGallery02, postGallery03, postButton)
        
        setupConstraints()
    }
    
    override func prepareForReuse() {
        self.postThumbnail.image = nil
        self.postTitle.text = nil
        self.postDescr.text = nil
        self.postGallery01.image = nil
        self.postGallery02.image = nil
        self.postGallery03.image = nil
    }
    
    func setupCell(post: PostData) {
        self.postThumbnail.image = UIImage(named: post.thumbnail)
        self.postTitle.text = post.title
        self.postDescr.text = post.descr
        self.postGallery01.image = UIImage(named: post.gallery01)
        self.postGallery02.image = UIImage(named: post.gallery02)
        self.postGallery03.image = UIImage(named: post.gallery03)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            
            postThumbnail.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 20),
            postThumbnail.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 25),
            postThumbnail.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -25),
            postThumbnail.heightAnchor.constraint(equalToConstant: 163),
            
            postTitle.bottomAnchor.constraint(equalTo: postDescr.topAnchor, constant: -5),
            postTitle.leadingAnchor.constraint(equalTo: postThumbnail.leadingAnchor, constant: 20),
            postTitle.trailingAnchor.constraint(equalTo: postThumbnail.trailingAnchor, constant: -20),
            
            postDescr.bottomAnchor.constraint(equalTo: postThumbnail.bottomAnchor, constant: -14),
            postDescr.leadingAnchor.constraint(equalTo: postThumbnail.leadingAnchor, constant: 20),
            postDescr.trailingAnchor.constraint(equalTo: postThumbnail.trailingAnchor, constant: -20),
            
            postGallery01.topAnchor.constraint(equalTo: postThumbnail.bottomAnchor, constant: 12),
            postGallery01.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 25),
            postGallery01.widthAnchor.constraint(equalTo: postThumbnail.widthAnchor, multiplier: 0.33, constant: -3),
            postGallery01.heightAnchor.constraint(equalToConstant: 99),
            
            postGallery02.topAnchor.constraint(equalTo: postThumbnail.bottomAnchor, constant: 12),
            postGallery02.centerXAnchor.constraint(equalTo: postThumbnail.centerXAnchor),
            postGallery02.widthAnchor.constraint(equalTo: postThumbnail.widthAnchor, multiplier: 0.33, constant: -3),
            postGallery02.heightAnchor.constraint(equalToConstant: 99),
            
            postGallery03.topAnchor.constraint(equalTo: postThumbnail.bottomAnchor, constant: 12),
            postGallery03.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -25),
            postGallery03.widthAnchor.constraint(equalTo: postThumbnail.widthAnchor, multiplier: 0.33, constant: -3),
            postGallery03.heightAnchor.constraint(equalToConstant: 99),
            
            postButton.topAnchor.constraint(equalTo: postGallery01.bottomAnchor, constant: 15),
            postButton.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 25),
            postButton.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -25),
            postButton.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: -15),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
