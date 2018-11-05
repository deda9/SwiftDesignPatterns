class SoundAdapter {
    private var videoPlayer: VideoPlayer!
    
    init(with videoPlayer: VideoPlayer) {
        self.videoPlayer = videoPlayer
    }
    
    func play() {
        print("Do some work to play the video")
        self.videoPlayer.playVideo()
    }
}

class SoundPlayer{
    
    func playMp3() {
        print("Playing Sound")
    }
}

class VideoPlayer {
    func playVideo() {
        print("Playing Video")
    }
}

class Tester {
    static func test() {
        let videoPlayer = VideoPlayer()
        let soundAdapter = SoundAdapter(with: videoPlayer)
        soundAdapter.play()
        
    }
}

Tester.test()
