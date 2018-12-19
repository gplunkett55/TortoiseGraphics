import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { t in
            
            // Add your commands within this block
            
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
                    t.forward(300)
                    t.right(30)
                }
            }
            // Move drawing left a bit
            t.penUp()
            t.penSize(1)
            t.goto(-350, -150)
            t.penDown()
            t.right(90)
            t.backward(50)
            t.left(90)
            t.penDown()
            t.penSize(2)
            
            // Draw 18 dashed circles
            for _ in 1...10 {
                dashedCircleCool(with: t)
                t.right(36)
        }
    }
    
}
}
