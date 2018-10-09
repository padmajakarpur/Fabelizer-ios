//
//  YouTubeViewController.swift
//  Fabelizer
//
//  Created by Infinitum on 05/10/18.
//  Copyright © 2018 Infinitumus.com. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class YouTubeViewController: UIViewController,YouTubePlayerDelegate {
    @IBOutlet weak var YoutubeView: YouTubePlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        YoutubeView.delegate=self
        YoutubeView.loadVideoID("a5yjOMLBfSc")
        // Do any additional setup after loading the view.
        
    }
    func playerReady(_ videoPlayer: YouTubePlayerView) {
        videoPlayer.play()
    }

    func playerStateChanged(_ videoPlayer: YouTubePlayerView, playerState: YouTubePlayerState) {
        if playerState==YouTubePlayerState.Ended
        {
            videoPlayer.play()
        }
        
    }
    
    func playerQualityChanged(_ videoPlayer: YouTubePlayerView, playbackQuality: YouTubePlaybackQuality) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
