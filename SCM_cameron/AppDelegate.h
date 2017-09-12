//
//  AppDelegate.h
//  SCM_cameron
//
//  Created by Cameron Ghods on 8/28/17.
//  Copyright © 2017 Cameron Ghods. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

// Functions

func doSomething(with thingOne: Type, and thingTwo: Type) -> ReturnType {
     // do something here
    return value
}

var output = doSomething(with: variableA, and: variableB)

doSomething(with: variableA and: variable B)

// Structures - for isolated and small groups of data
struct Item {
    var volume: Double
    var mass: Double
    // [..]
    func calculateDensity() -> Double
        return mass / volume
}
// classes
class Item {
    var volume: Double
    var mass: Double
    // [..]
    func calculateDensity() -> Double
    return mass / volume
}



// CODING THE GAME 2ND HALF
let myLife = 100
var bossLife = 500
// define static dmg and healing value
let myDamage = 20
let bossDamage = 30
let healingValue = 25

while bossLife > 0 && myLife > 0 {
    let rng = arc4random_uniform(20)
    switch {
    case 0:
        // we take healing potion
        myLife += healingValue
    case 1...9:
        // we attack
        bossLife -= myDamage
    case 10...18:
        // boss attacks
        myLife -= bossDamage
    case 19:
        // boss heals
        bossLife += healingValue
    default:
        print("rng is out of bounds")
    }
    scoreLabel.text = "My Life \(myLife), boss life is \(bossLife)"
}

if bossLife > myLife {
    displayLabel.text = "You lose"
}
else {
    displayLabel.text = "You win!"
}
}
