protocol Chain{
    func process(_ file: File)
    func nextChain(_ nextHadler: Chain)
    func className() -> String
}

extension Chain{
    func className() -> String{
        return String(describing: String(describing: self).split(separator: ".").last!)
    }
}

enum FileType{
    case audio
    case video
    case excel
    case text
}

class File{
    var name: String!
    var type: FileType!
}

class TextFileHanlder: Chain{
    
    private var nextHandler: Chain!
    
    func process(_ file: File){
        if file.type == .text{
            print("Proccess \(file.name!) with extension \(file.type!) with handlder " + self.className())
        }else if nextHandler != nil{
            print("Forward \(file.name!) with extension \(file.type!) for handlder " + nextHandler.className())
            nextHandler.process(file)
        }else{
            print("\(file.name!) not supported")
        }
    }
    
    func nextChain(_ nextHadler: Chain){
        self.nextHandler = nextHadler
    }
}


class ExcelFileHanlder: Chain{
    
    private var nextHandler: Chain!
    
    func process(_ file: File){
        if file.type == .excel{
            print("Proccess \(file.name!) with extension \(file.type!) with handlder " + self.className())
        }else if nextHandler != nil{
            print("Forward \(file.name!) with extension \(file.type!) for handlder " + nextHandler.className())
            nextHandler.process(file)
        }else{
            print("\(file.name!) not supported")
        }
    }
    
    func nextChain(_ nextHadler: Chain){
        self.nextHandler = nextHadler
    }
}


class VideoFileHanlder: Chain{
    
    private var nextHandler: Chain!
    
    func process(_ file: File){
        if file.type == .video{
            print("Proccess \(file.name!) with extension \(file.type!) with handlder " + self.className())
        }else if nextHandler != nil{
            print("Forward \(file.name!) with extension \(file.type!) for handlder " + nextHandler.className())
            nextHandler.process(file)
        }else{
            print("\(file.name!) not supported")
        }
    }
    
    func nextChain(_ nextHadler: Chain){
        self.nextHandler = nextHadler
    }
}


class AudioFileHanlder: Chain{
    
    private var nextHandler: Chain!
    
    func process(_ file: File){
        if file.type == .audio{
            print("Proccess \(file.name!) with extension \(file.type!) with handlder " + self.className())
        }else if nextHandler != nil{
            print("Forward \(file.name!) with extension \(file.type!) for handlder " + nextHandler.className())
            nextHandler.process(file)
        }else{
            print("\(file.name!) not supported")
        }
    }
    
    func nextChain(_ nextHadler: Chain){
        self.nextHandler = nextHadler
    }
}

class TestPattern{
    private func getSoundFile() -> File{
        let file = File()
        file.name = "Sound"
        file.type = .audio
        return file
    }
    
    private func getExcelFile() -> File{
        let file = File()
        file.name = "Excel"
        file.type = .excel
        return file
    }
    
    func test(){
        let audioHandler = AudioFileHanlder()
        let videoHandler = VideoFileHanlder()
        let textHandler = TextFileHanlder()
        let excelHandler = ExcelFileHanlder()
        
        audioHandler.nextChain(videoHandler)
        videoHandler.nextChain(textHandler)
        textHandler.nextChain(excelHandler)
        excelHandler.nextChain(audioHandler)
        
        audioHandler.process(getExcelFile())
    }
}

TestPattern().test()
