//
//  Moscow.swift
//  City navigation bar
//
//  Created by Zhanna Fursova on 1/5/15.
//  Copyright (c) 2015 John Doe. All rights reserved.
//

import UIKit

class Moscow: UIView {

let moscowController: MoscowController;

  init(moscowController: MoscowController) {
		self.moscowController = moscowController;
		super.init(frame: CGRectZero);
		backgroundColor = UIColor.blackColor();
		//Call drawRect whenever orientation changes.
		contentMode = UIViewContentMode.Redraw;
	}

	//not called
	required init(coder aDecoder: NSCoder) {
		moscowController = MoscowController(title: "");
		super.init(coder: aDecoder);
	}
	

	//Put the origin (0, 0) of this View at the lower left corner of the navigation bar.
	//When drawRect prints at the origin, it will therefore print at the lower left
	//corner of the navigation bar.

	override func layoutSubviews() {
		bounds.origin = CGPointMake(
			bounds.origin.x,
			-moscowController.topLayoutGuide.length);
	}

	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.

	override func drawRect(rect: CGRect) {
		// Drawing code
		let mapController: MapController = moscowController.navigationController! as MapController;
		let i: Int = mapController.viewControllers.count;
		let n: Int = mapController.titles.count;

		var s: String = "\(moscowController.title!)\n"
			

		let m: CGFloat = min(bounds.size.width, bounds.size.height);
		let font: UIFont = UIFont.systemFontOfSize(m / 16);
		let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font];
		s.drawAtPoint(CGPointZero, withAttributes: attributes);
		
		
		let w: CGFloat = bounds.size.width;
		let h: CGFloat = bounds.size.height;

		let image: UIImage? = UIImage(named: "3.jpg");
		if image == nil {
		println("could not find photo");
		return;
		}


		let point2: CGPoint = CGPointMake(
		(w - image!.size.width) / 2,
		((h - image!.size.height) / 2 - 20));

		image!.drawAtPoint(point2);


	}

}