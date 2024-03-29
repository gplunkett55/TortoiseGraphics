import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 600
canvas.color = .white
PlaygroundPage.current.liveView = canvas

func dashedCircle(with t : Tortoise) {

    // Adjust course to the left a bit
    t.penUp()
    t.forward(5)
    t.right(15)
    t.forward(8)
    t.right(10)
    t.hideTortoise()
    
    // Draw a dashed circle
    for _ in 1...36 {
        t.penUp()
        t.forward(7)
        t.right(5)
        t.penDown()
        t.forward(9)
        t.right(5)
    }
}

func dashedCircleCool(with t : Tortoise) {
    for _ in 1...50 {
        dashedCircle(with: t)
        t.forward(20)
        t.right(30)
    }
}

canvas.drawing { turtle in
    
    // Move drawing left a bit
    turtle.penUp()
    turtle.right(90)
    turtle.backward(50)
    turtle.left(90)
    turtle.penDown()
    turtle.penSize(2)
    
    // Draw 18 dashed circles
    for _ in 1...10 {
        dashedCircleCool(with: turtle)
        turtle.right(36)
    }
    
    
}


