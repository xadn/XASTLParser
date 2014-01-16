//
//  STLParserTests.m
//  STLParserTests
//
//  Created by andy on 1/15/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//

#import "STLParser.h"
#import <XCTest/XCTest.h>

@interface STLParserTests : XCTestCase

@end

@implementation STLParserTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEmpty
{
    NSString *stl = @"";
    [STLParser parseString:stl];
}

- (void)testSolidWithName
{
    NSString *stl = @"solid MySolid"
                     "endsolid";
    [STLParser parseString:stl];

}

@end

//solid DiskBase
//facet normal 0.000000e+000 0.000000e+000 -1.000000e+000
//outer loop
//vertex -2.506665e-002 1.984229e-001 -8.000000e-002
//vertex 0.000000e+000 5.000000e-001 -8.000000e-002
//vertex 2.506665e-002 1.984229e-001 -8.000000e-002
//endloop
//endfacet
