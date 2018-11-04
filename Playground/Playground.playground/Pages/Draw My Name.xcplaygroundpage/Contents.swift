//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
canvas.frameRate = 60
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in

    turtle.penSize(5)
    turtle.hideTortoise()

    //Letter G
    turtle.letterg()

    //Letter a
   turtle.lettera()

    //Letter v
    turtle.letterv()

    //Letter i
    turtle.letteri()

    //Letter n
    turtle.lettern()

    //Set up for last name
    turtle.setuplastname()

    //Letter P
    turtle.letterp()
    
    //Letter l
    turtle.letterl()
    
    //Letter u
    turtle.letteru()
    
    //letter n
    turtle.lettern()
}
