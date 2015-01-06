//
//  MapController.swift
//  City navigation bar
//
//  Created by Zhanna Fursova on 1/5/15.
//  Copyright (c) 2015 John Doe. All rights reserved.
//

import UIKit

class MapController: UINavigationController {

   let titles: [String] = [
		"New York",
		"Paris",
		"Moscow"
	];

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
		toolbarHidden = false;
		let firstController: NewYorkController = NewYorkController(title: titles[0]);
		pushViewController(firstController, animated: false);
	}

	//Called by the touchesEnded method of the StationController's view.

	func next() {
		if viewControllers.count == 1 {
			//Haven't reached the end of the line yet.
			let secondController: ParisController =
				ParisController(title: titles[1]);
			pushViewController(secondController, animated: true);
		}
	
	}
	
	func next2() {
	
		if viewControllers.count == 2 {
			//Haven't reached the end of the line yet.
			let thirdController: MoscowController =
				MoscowController(title: titles[2]);
			pushViewController(thirdController, animated: true);
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
    

	/*
	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		// Pass the selected object to the new view controller.
	}
	*/

}