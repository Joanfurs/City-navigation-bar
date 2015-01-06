//
//  ParisController.swift
//  City navigation bar
//
//  Created by Zhanna Fursova on 1/5/15.
//  Copyright (c) 2015 John Doe. All rights reserved.
//

import UIKit

class ParisController: UIViewController {

   init(title: String) {
		super.init(nibName: nil, bundle: nil);
		self.title = title;	//self.title is the property, title is the parameter
		navigationItem.prompt = "Welcome to \(title)!";
	}

	//not called
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
	}

	//Give the view a reference to myself.

	override func loadView() {
		view = Paris(parisController: self);
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		navigationItem.rightBarButtonItem = UIBarButtonItem(
			title: "Go East",
			style: UIBarButtonItemStyle.Plain,
			target: navigationController!,
			action: "next2");
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