
protocol UserPermission{
    func updatePermission(in user: User)
}

extension OpenFilePermission: CustomStringConvertible{
    var description: String {
        return String.init(describing: OpenFilePermission.self)
    }
}

extension EditFilePermission: CustomStringConvertible{
    var description: String {
        return String.init(describing: EditFilePermission.self)
    }
}

extension DeleteFilePermission: CustomStringConvertible{
    var description: String {
        return String.init(describing: DeleteFilePermission.self)
    }
}

class DeleteFilePermission: UserPermission {
    func updatePermission(in user: User) {
        user.updatePermission(self)
    }
}

class OpenFilePermission: UserPermission {
    func updatePermission(in user: User) {
        user.updatePermission(self)
    }
}

class EditFilePermission: UserPermission {
    func updatePermission(in user: User) {
        user.updatePermission(self)
    }
}

class User {
    private var userPermission: UserPermission = OpenFilePermission()
    
    func updatePermission(_ permission: UserPermission) {
        self.userPermission = permission
    }

    func getPermission() -> UserPermission {
        return userPermission
    }
}

class Tester {
    static func test() {
        let user = User()
        print("User permission", user.getPermission())
        
        EditFilePermission().updatePermission(in: user)
        print("User permission", user.getPermission())
    }
}

Tester.test()
