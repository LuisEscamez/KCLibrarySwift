// The Swift Programming Language
// https://docs.swift.org/swift-book
import KeychainAccess

public protocol KeyChainKC {
    func setKC(key: String, value: String) -> Bool
    func getKC(key: String) -> String?
    func removeKC(key: String) -> Bool
}

public class KeychainManager: KeyChainKC {
    static public var shared: KeyChainKC {
        return KeychainManager()
    }
    
    public init() {}
    
    public func setKC(key: String, value: String) -> Bool {
        saveKC(key: key, value: value)
    }
    
    public func getKC(key: String) -> String? {
        loadKC(key: key)
    }
    
    public func removeKC(key: String) -> Bool {
        deleteKC(key: key)
    }
}


//Alternativa sin manager
public struct KeyChain {
    
    public init() {}
    
    public func setKC(key: String, value: String) -> Bool {
        saveKC(key: key, value: value)
    }
    
    public func getKC(key: String) -> String? {
        loadKC(key: key)
    }
    
    public func removeKC(key: String) -> Bool {
        deleteKC(key: key)
    }
}
