import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 750, height: 550)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 400
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    turtle.hideTortoise()
    turtle.frame()
    
    
}

