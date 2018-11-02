public extension Tortoise {

    func square(withSize size: Double) {

        //"self refers to any instance of the tortoise c;ass
        self.penDown()

        //Draw four sides inside of a square
        for _ in 1...4 {
            self.forward(size)
            self.right(90)
        }
        self.penUp()
    }

    func trapezoid(withSize: Double) {
        self.penDown()

        for _ in 1...4 {
            self.right(25)
            self.forward(75)
            self.right(65)
            self.forward(150)
            self.right(65)
            self.forward(75)
            self.right(115)
            self.forward(215)
            self.right(90)
        }
    }

    // Curve
    func curve(withsides sidecount: Int, withsize size: Double, drawsides sidelimit: Int) {
        self.penDown()
        for _ in 1...sidelimit {
            self.forward(size)
            self.right(360 / Double(sidecount))
        }
        self.penUp()
    }

    // LetterG
    func letterg() {

    //set up
    self.penUp()
    self.setHeading(270)
    self.forward(175)
    self.setHeading(0)

    //start of G
    self.right(65)
    self.curve(withsides: -40, withsize: 10, drawsides: 7)

    // top loop
    self.left(20)
    self.curve(withsides: -10, withsize: 5, drawsides: 2)
    self.left(40)
    self.curve(withsides: -10, withsize: 7, drawsides: 3)
    self.left(20)
    self.curve(withsides: -35, withsize: 10, drawsides: 4)

    // line down
    self.right(120)
    self.curve(withsides: 40, withsize: 10, drawsides: 5)
    self.right(30)
    self.curve(withsides: 40, withsize: 7, drawsides: 9)

    //connector line
    self.setHeading(123)
    self.curve(withsides: -40, withsize: 9, drawsides: 5)
        self.right(11)
    self.curve(withsides: -60, withsize: 9, drawsides: 4)
    self.setY(0)
    self.setHeading(90)
    self.penDown()

    }

    // Lettera
        func lettera() {
        //start of curl
        self.left(20)
        self.curve(withsides: -15, withsize: 5, drawsides: 3)
        self.right(45)
        self.curve(withsides: 15, withsize: 5, drawsides: 3)

        //loop
        self.right(40)
        self.penDown()
        self.forward(3)
        self.right(10)
        self.curve(withsides: 18, withsize: 3, drawsides: 3)
        self.right(15)
        self.curve(withsides: 18, withsize: 4, drawsides: 4)
        self.right(160)
        self.curve(withsides: -18, withsize: 4, drawsides: 4)
        self.right(-15)
        self.curve(withsides: -18, withsize: 3, drawsides: 3)

        //connector
        self.left(160)
        self.curve(withsides: -30, withsize: 4, drawsides: 4)
        self.setHeading(90)

    }

    //Letterv
    func letterv() {

        //first hump
        self.left(25)
        self.curve(withsides: -15, withsize: 4, drawsides: 3)
        self.curve(withsides: 10, withsize: 3, drawsides: 6)
        self.left(15)

        //bottom curve
        self.penDown()
        self.forward(3)
        self.curve(withsides: -7, withsize: 5, drawsides: 3)
        self.left(25)
        self.penDown()
        self.forward(7)
        self.curve(withsides: 7, withsize: 5, drawsides: 2)

        //connector
        self.penDown()
        self.forward(2)
        self.setHeading(90)

    }

    //Letter I
    func letteri() {

        //first hump
        self.curve(withsides: -15, withsize: 3, drawsides: 3)

        //dot
        self.setHeading(0)
        self.forward(8)
        self.penDown()
        self.forward(5)
        self.penUp()
        self.setHeading(180)
        self.forward(13)

        //connector
        self.curve(withsides: -30, withsize: 5, drawsides: 3)
        self.curve(withsides: -5, withsize: 5, drawsides: 2)
        self.setHeading(90)
    }

    //Letter n
    func lettern() {

        //first hump
        self.left(30)
        self.curve(withsides: -10, withsize: 3, drawsides: 2)
        self.curve(withsides: 6, withsize: 7, drawsides: 4)
        self.left(35)
        self.penDown()
        self.forward(10)

        //second hump
        self.setHeading(12)
        self.forward(13)
        self.curve(withsides: 6, withsize: 7, drawsides: 4)

        //connector
        self.left(60)
        self.penDown()
        self.forward(5)
        self.curve(withsides: -6, withsize: 3, drawsides: 4)
        self.setHeading(90)
    }

    //set up for last name
    func setuplastname() {
        self.setHeading(180)
        self.forward(100)
        self.setHeading(270)
        self.forward(185)
    }

    //Letter P
    func letterp() {
        //stick
        self.setHeading(10)
        self.penDown()
        self.forward(75)
        self.setHeading(200)

        //loop
        self.curve(withsides: 30, withsize: 7, drawsides: 6)
        self.right(170)
        self.curve(withsides: -30, withsize: 7, drawsides: 6)
        self.setHeading(90)
        self.curve(withsides: 15, withsize: 9, drawsides: 9)

        //connector
        self.setHeading(110)
        self.curve(withsides: -30, withsize: 7, drawsides: 6)
        self.setHeading(180)
        self.forward(37)
        self.setHeading(90)
        self.forward(5)
    }

    }
