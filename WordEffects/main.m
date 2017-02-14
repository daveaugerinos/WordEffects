//
//  main.m
//  WordEffects
//
//  Created by Dave Augerinos on 2017-02-06.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringTools.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // 255 units long array of characters
        char inputChars[255];
        
        // 1 units long array of characters
        char inputChoice[3];
        
        // Boolean to control loop
        BOOL runLoop = true;

        // String to capture user input
        NSString *inputString;
 
        // Print greeting and request
        printf("Welcome to Word Effects\n");
        printf("Input text or a number:\n");
        
        // Limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        inputChars[strlen(inputChars) - 1] = '\0';
        
        // Convert char array to an NSString object
        inputString = [NSString stringWithUTF8String:inputChars];

        // Start operations loop
        while (runLoop) {

            printf("Choose an operation (by number):\n");
            printf("1. Convert string to all UPPERCASE\n");
            printf("2. Convert string to all lowercase\n");
            printf("3. Convert string to a number\n");
            printf("4. Canadianize string\n");
            printf("5. Respond to string suffix\n");
            printf("6. Change spaces to \"-\"\n");
            printf("7. Find word count\n");
            printf("8. Remove punctuation - NOT IMPLEMENTED\n");
            printf("9. Exit program\n");
            
            // Limit input to max user 1 character
            fgets(inputChoice, 3, stdin);
            int choice = atoi(inputChoice);
            
            // Print NSString object
            NSLog(@"Input was: %@", inputString);
            
            StringTools *results = [[StringTools alloc] init];
            NSString *resultString = [[NSString alloc] init];
            NSNumber *count;
            long int wordCount;
            
            switch (choice) {
                    
                case 1:
                    resultString = [results stringToolsUppercaseString:inputString];
                    NSLog(@"Uppercase string is: %@", resultString);
                    break;
                case 2:
                    resultString = [results stringToolsLowercaseString:inputString];
                    NSLog(@"Lowercase string is: %@", resultString);
                    break;
                case 3:
                    count = [results stringToolsNumberizeString:inputString];
                    NSLog(@"Number is: %@", count);
                    break;
                case 4:
                    resultString = [results stringToolsCanadianizeString:inputString];
                    NSLog(@"Canadianized string is: %@", resultString);
                    break;
                case 5:
                    resultString = [results stringToolsRespondString:inputString];
                    NSLog(@"Response is: %@", resultString);
                    break;
                case 6:
                    resultString = [results stringToolsDeSpaceItString:inputString];
                    NSLog(@"Substitution is: %@", resultString);
                    break;
                case 7:
                    wordCount = [results stringToolsWordCountString:inputString];
                    NSLog(@"Word count is: %ld", wordCount);
                    break;
                case 8:
                    // TO BE IMPLEMENTED
                    NSLog(@"Feature not implemented.");
                    break;
                case 9:
                    NSLog(@"Goodbye.\n");
                    runLoop = false;
                    break;
                default:
                    NSLog(@"Invaild choice.  Please choice again.\n");
                    break;
            }
            
        }
        
    }
    return 0;
}
