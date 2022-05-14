import Foundation

struct TraitData{
    var isOpened = Bool()
    var title: String
    var value: Int
    var data: [SubtraitData]
}

struct SubtraitData{
    var title: String
    var value: Int
    var description: String
}
