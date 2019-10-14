//
//  ViewController.swift
//
//  Created by Oyangiz on 2019-01-10.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        
        // 显示统计信息
        sceneView.showsStatistics = true
        
        // New scene
        let scene = SCNScene(named: "art.scnassets/eye.scn")!
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 创建会话配置
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // 暂停视图的会话
        sceneView.session.pause()
    }

    
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // 错误消息
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // 通知用户会话已被中断
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // 跟踪
        
    }
}
