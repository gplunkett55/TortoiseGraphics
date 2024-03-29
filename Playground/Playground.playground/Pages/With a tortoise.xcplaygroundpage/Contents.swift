//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 700, height: 700))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    
    
    turtle.penColor(.grey)
    turtle.penUp()
    turtle.back(100)
    turtle.penDown()
    
    //Turtle Star!
    turtle.repeat(8) {
        turtle.forward(100)
        turtle.left(45
        )
    }
    turtle.endFill()
}
