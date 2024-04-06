//
//  ViewController.swift
//  AppEventCount
//
//  Created by Piyush saini on 02/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchWithOptions: UILabel!
    var didFinishLaunch = 0
    
    @IBOutlet weak var configurationForConnecting: UILabel!
    var configurationConnecting = 0
    
    @IBOutlet weak var willConnectTo: UILabel!
    var willConnect = 0
    
    @IBOutlet weak var sceneDidBecomeActive: UILabel!
    var sceneBecomeActive = 0
    
    @IBOutlet weak var sceneWillResignActive: UILabel!
    var sceneResignActive = 0
    
    @IBOutlet weak var sceneWillEnterForeground: UILabel!
    var sceneEnterForeground  = 0
    
    @IBOutlet weak var sceneDidEnterBackground: UILabel!
    var sceneEnterBackground = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    
    func updateView() {
        didFinishLaunchWithOptions.text = "The App has launched \(didFinishLaunch) time(s)"
        
        configurationForConnecting.text = "The App was Terminated \(configurationConnecting) time(s)"
        
        willConnectTo.text = "The App has connected \(willConnect) time(s)"
        
        sceneDidBecomeActive.text = "The App did become Active \(sceneBecomeActive) time(s)"
        
        sceneWillResignActive.text = "The App is IN-Active \(sceneResignActive) time(s)"
        
        sceneWillEnterForeground.text = "The App has entered Foreground \(sceneEnterForeground) time(s)"
        
        sceneDidEnterBackground.text = "The App has entered Background \(sceneEnterBackground) time(s)"
    }

}

