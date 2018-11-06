protocol CompressStrategy {
    func compress(file: Any)
}

class ZIPCompressStrategy: CompressStrategy{
    func compress(file: Any){
        print("Compressing the file with ZIP")
    }
}

class RARCompressStrategy: CompressStrategy{
    func compress(file: Any){
        print("Compressing the file with RAR")
    }
}

class FileCompressor {
    
    private var compressStrategy: CompressStrategy!
    
    func setCompressingStrategy(_ compressStrategy: CompressStrategy) {
        self.compressStrategy = compressStrategy
    }
    
    func compress(file: Any) {
        self.compressStrategy.compress(file: file)
    }
}

class Tester {
    static func test() {
        let zip = ZIPCompressStrategy()
        let rar = RARCompressStrategy()
        let compressor = FileCompressor()

        compressor.setCompressingStrategy(zip)
        compressor.compress(file: "File one")
        
        print("\n Changing...\n")
        compressor.setCompressingStrategy(rar)
        compressor.compress(file: "File one")

    }
}

Tester.test()

