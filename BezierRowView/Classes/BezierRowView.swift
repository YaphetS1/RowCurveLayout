//
//  BezierRowView.swift
//  BezierRowView
//
//  Created by Dmitry Marinin on 28.06.2018.
//  Copyright © 2018 Dmitry Marinin. All rights reserved.
//

import UIKit

public class BezierRowUIView: UIView {
    fileprivate var maskProp: Any?
    fileprivate var models: [Any]?
    fileprivate var shapes: [UIBezierPath] = []
    fileprivate var clickEvent: ((Any) -> ())!

    private let sectionsCount = 1000;


    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

   public func setupBind(p prop: Any, m models: [Any], clb clickEvent: @escaping (Any) -> ()) {
        self.maskProp = prop
        self.models = models
        self.shapes = []
        self.clickEvent = clickEvent

        let tapGR = UITapGestureRecognizer(target: self, action: #selector(BezierRowUIView.didTap(tapGR:)))
        self.addGestureRecognizer(tapGR)

    }

    @objc func didTap(tapGR: UITapGestureRecognizer) {
        let tapPoint = tapGR.location(in: self)

        if let tempItem = self.isContains(tapLocation: CGPoint(x: tapPoint.x, y: tapPoint.y)) {
            if let _clickEvent = self.clickEvent {
                _clickEvent(tempItem)
            }
        }

    }

    func isContains(tapLocation: CGPoint) -> Any? {
        for (index, item) in shapes.enumerated() {
            if item.contains(tapLocation) {
                return models![index]
            }
        }

        return nil
    }

    //MARK: - One row - one Cell - three subViews
    func setShapePath(topLeft: Int, topRight: Int, bottomLeft: Int, bottomRight: Int, width: CGFloat, height: CGFloat) -> UIBezierPath {
        let rowWidth = self.bounds.width;
        let rowHeight = self.bounds.height;
        let xCoords = [topLeft, topRight, bottomLeft, bottomRight];
        let path = UIBezierPath()
        path.move(to: CGPoint(x: CGFloat(topLeft - xCoords.min()!) * rowWidth / CGFloat(self.sectionsCount), y: 0))
        path.addLine(to: CGPoint(x: CGFloat(topRight - xCoords.min()!) * rowWidth / CGFloat(self.sectionsCount), y: 0))
        path.addLine(to: CGPoint(x: CGFloat(bottomRight - xCoords.min()!) * rowWidth / CGFloat(self.sectionsCount), y: rowHeight))
        path.addLine(to: CGPoint(x: CGFloat(bottomLeft - xCoords.min()!) * rowWidth / CGFloat(self.sectionsCount), y: rowHeight))
        path.close()

        let pathRowProjection = UIBezierPath()
        pathRowProjection.move(to: CGPoint(x: CGFloat(topLeft) * rowWidth / CGFloat(self.sectionsCount), y: 0))
        pathRowProjection.addLine(to: CGPoint(x: CGFloat(topRight) * rowWidth / CGFloat(self.sectionsCount), y: 0))
        pathRowProjection.addLine(to: CGPoint(x: CGFloat(bottomRight) * rowWidth / CGFloat(self.sectionsCount), y: rowHeight))
        pathRowProjection.addLine(to: CGPoint(x: CGFloat(bottomLeft) * rowWidth / CGFloat(self.sectionsCount), y: rowHeight))
        pathRowProjection.close()
        shapes.append(pathRowProjection)
        return path
    }

    func setContentFrame(topLeft: Int, topRight: Int, bottomLeft: Int, bottomRight: Int) -> CGRect {
        let rowWidth = self.bounds.width;
        let rowHeight = self.bounds.height;
        let xCoords = [topLeft, topRight, bottomLeft, bottomRight];
        let maxWidth = CGFloat(xCoords.max()! - xCoords.min()!) * rowWidth / CGFloat(self.sectionsCount);
        return CGRect(x: CGFloat(xCoords.min()!) * rowWidth / CGFloat(self.sectionsCount), y: 0, width: maxWidth, height: rowHeight);
    }

    func setupItem(topLeft: Int, topRight: Int, bottomLeft: Int, bottomRight: Int, imagePath: String) -> UIImageView {
        let image = UIImageView();
        image.setImage(fromPath: imagePath, animatedOnce: true)

        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true;
        image.frame = self.setContentFrame(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft, bottomRight: bottomRight)

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = self.setShapePath(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft, bottomRight: bottomRight, width: image.frame.width, height: image.frame.height).cgPath
        image.layer.mask = shapeLayer;
        return image
    }

    override public func draw(_ rect: CGRect) {
        clipsToBounds = true;

        if let mask = self.maskProp as? typeOfMaskThreeShape {
            for (index, item) in self.models!.enumerated() {
                if let tempPhoto = item as? PhotoModel {
                    self.addSubview(self.setupItem(topLeft: mask.type[index].topLeft, topRight: mask.type[index].topRight,
                            bottomLeft: mask.type[index].bottomLeft, bottomRight: mask.type[index].bottomRight,
                            imagePath: tempPhoto.url))
                }

                self.addSubview(self.setupItem(topLeft: mask.type[index].topLeft, topRight: mask.type[index].topRight,
                        bottomLeft: mask.type[index].bottomLeft, bottomRight: mask.type[index].bottomRight,
                        imagePath: item as! String))
            }
        } else if let mask = self.maskProp as? typeOfMaskTwoShape {
            for (index, item) in self.models!.enumerated() {
                if let tempPhoto = item as? PhotoModel {
                    self.addSubview(self.setupItem(topLeft: mask.type[index].topLeft, topRight: mask.type[index].topRight,
                                                   bottomLeft: mask.type[index].bottomLeft, bottomRight: mask.type[index].bottomRight,
                                                   imagePath: tempPhoto.url))
                }
                
                self.addSubview(self.setupItem(topLeft: mask.type[index].topLeft, topRight: mask.type[index].topRight,
                                               bottomLeft: mask.type[index].bottomLeft, bottomRight: mask.type[index].bottomRight,
                                               imagePath: item as! String))
            }
        }
    }
}
