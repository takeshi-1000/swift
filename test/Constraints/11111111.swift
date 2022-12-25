// RUN: %target-typecheck-verify-swift

enum Hoge {
    case test
    case test2(isError: Bool, (message: String, message2: String))
}

func test(hoge: Hoge) -> String {
    
    let str: String = {
        switch hoge {
        case .test:
            return ""
        case .test2(let isError, (let message, let message2)):
            return isError ? message : message2
        }
    }()
    
    return str
}
