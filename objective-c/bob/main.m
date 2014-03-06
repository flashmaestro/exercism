//
//  main.m
//  bob
//
//  Created by 송 종근 on 14. 3. 6..
//  Copyright (c) 2014년 G.B.U Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSString* str = @"Does this cryogenic chamber make me look fat?";
        
        NSString* last_char = [NSString stringWithFormat:@"%c", [str characterAtIndex:[str length]-1]];
        NSLog(@"%@", last_char);
        NSLog(@"%d", [last_char isEqualToString:@"?"]);
    }
    return 0;
}

