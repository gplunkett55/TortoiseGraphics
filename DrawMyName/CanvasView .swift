 import Cocoa
 import TortoiseGraphics
 
 class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "turtle" on canvas to make the turtle draw
        canvas.drawing { t in
            
            // Add your commands within this block
            
            t.penSize(5)
            t.hideTortoise()
            
            //Letter G
            t.letterg()
            
            //Letter a
            t.lettera()
            
            //Letter v
            t.letterv()
            
            //Letter i
            t.letteri()
            
            //Letter n
            t.lettern()
            
            //Set up for last name
            t.setuplastname()
            
            //Letter P
            t.letterp()
            
            //Letter l
            t.letterl()
            
            //Letter u
            t.letteru()
            
            //letter n
            t.lettern()
            
            //THE INTERNET WENT OFF AND I EXPERANCED A PROBLEM WITH GETTING THE METHODS TO BUILD AND BE ABLE TO BE USED HERE. AS A SOLUTION, I JUST PUT ALL OF THE CODE FOR THE REST OF MY NAME HERE SO I CAN FINISH.
            
            //letter k
            //top loop
            t.penDown()
            t.forward(7)
            t.left(20)
            t.curve(withsides: -15, withsize: 6, drawsides: 2)
            t.curve(withsides: -30, withsize: 5, drawsides: 1)
            t.penDown()
            t.forward(10)
            t.curve(withsides: -6, withsize: 4, drawsides: 4)
            t.setHeading(180)
            t.penDown()
            t.forward(25)
            
            //middle loop
            t.setHeading(0)
            t.penDown()
            t.forward(15)
            t.right(15)
            t.curve(withsides: 7, withsize: 5, drawsides: 6)
            
            //connector
            t.right(180)
            t.curve(withsides: -30, withsize: 5, drawsides: 4)
            t.setHeading(90)
            
            //letter e
            //loop
            t.left(20)
            t.curve(withsides: -20, withsize: 6, drawsides: 3)
            t.left(15)
            t.curve(withsides: -15, withsize: 3, drawsides: 2)
            t.curve(withsides: -10, withsize: 2, drawsides: 5)
            
            //connector
            t.right(30)
            t.curve(withsides: -20, withsize: 5, drawsides: 4)
            t.setHeading(90)
            
            for _ in 1...2 {
            
            //letter t
            //stick
            t.left(15)
            t.curve(withsides: -15, withsize: 5, drawsides: 3)
            t.setHeading(0)
            t.penDown()
            t.forward(25)
            
            //cross
            t.setHeading(180)
            t.forward(10)
            t.setHeading(90)
            t.penDown()
            t.forward(10)
            t.setHeading(270)
            t.forward(20)
            t.setHeading(90)
            t.forward(10)
            
            //connector
            t.setHeading(180)
            t.forward(15)
            t.left(18)
            t.curve(withsides: -15, withsize: 4, drawsides: 3)
            t.setHeading(90)
            t.penDown()
            t.forward(7)
            
                //Not sure what the prolem was with the extension class. Ask me and I'll explain the issue (it's too hard to exaplin in text). 
            }
    }
}

}
