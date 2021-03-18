import Cocoa

enum windows{
    case open
    case closed
}
enum engine{
    case on
    case off
}

protocol Car {
    var marka: String {get}
    var release: Int {get}
    var engineState: engine {get set}
    var windowsState: windows {get set}
}
extension Car {
    mutating func changeEngineState(engineState: engine){
        self.engineState = engineState
    }
    mutating func chageWindowsState(windowsState: windows){
        self.windowsState = windowsState
    }
}
class basicCar: Car{
    var marka: String
    var release: Int
    var engineState: engine = .off
    var windowsState: windows = .closed
    init(marka: String, release: Int) {
        self.marka = marka
        self.release = release
    }
}
class sportCar: basicCar, CustomStringConvertible{
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), release date is \(release)"
    }
}
class trunkCar: basicCar, CustomStringConvertible{
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), release date is \(release)"
    }
}
var subaru = sportCar(marka: "Subaru", release: 2019)

subaru.changeEngineState(engineState: .on)
print(subaru.description)

var ford = trunkCar(marka: "Ford", release: 2020)

ford.chageWindowsState(windowsState: .open)
print(ford.description)
