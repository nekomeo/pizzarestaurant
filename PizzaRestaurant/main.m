//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            //TODO Get the Size
    
                //Convert string to enum
            PizzaSize *size = [Pizza sizeFromString:commandWords[0]];
            
            //TODO Get the toppings
            NSArray *pizzaArray = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
            
            // tell kitchen to make pizza
                //TODO Get kitchen
            [restaurantKitchen makePizzaWithSize:size toppings:pizzaArray];
        }
        

    }
    return 0;
}

