//
// Created by Dmitry Marinin on 29.06.2018.
// Copyright (c) 2018 Dmitry Marinin. All rights reserved.
//

import SDWebImage

// MARK: - UIImageView extension

extension UIImageView {


    func setImage(fromPath path: String, animatedOnce: Bool = true, withPlaceholder placeholder: UIImage? = nil) {
        guard let imageURL = URL(string: path) else {
            return
        }
        let hasImage: Bool = (self.image != nil)
        self.sd_setImage(with: imageURL, placeholderImage: nil, options: .avoidAutoSetImage) { [weak self] (image, error, cacheType, url) in
            if animatedOnce && !hasImage && cacheType == .none {
                self?.alpha = 0.0
                UIView.animate(withDuration: 0.5) {
                    self?.alpha = 1.0
                }
            }
            self?.image = image
        }
    }
}