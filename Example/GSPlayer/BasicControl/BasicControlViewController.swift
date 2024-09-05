//
//  BasicControlViewController.swift
//  GSPlayer_Example
//
//  Created by Gesen on 2021/4/17.
//  Copyright © 2021 Gesen. All rights reserved.
//

import UIKit
import GSPlayer

class BasicControlViewController: UIViewController {
    
    @IBOutlet weak var playerView: VideoPlayerView!
    @IBOutlet weak var controlView: GSPlayerControlUIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.contentMode = .scaleAspectFill
        playerView.play(for: URL(string: "https://videochat.oss-cn-hangzhou.aliyuncs.com/trend/ce0a1319-7ffd-4f85-a9b2-e0a917e37b04.mp4")!)
        
        controlView.populate(with: playerView)
        view.bringSubviewToFront(controlView)
    }
}
