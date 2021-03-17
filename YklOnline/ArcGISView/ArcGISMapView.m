//
//  ArcGISMapView.m
//  YklOnline
//
//  Created by 周通 on 2020/10/12.
//  Copyright © 2020 guojian. All rights reserved.
//

#import "ArcGISMapView.h"

@implementation ArcGISMapView

- (instancetype)initWithFrame:(CGRect)frame BaseURL:(NSString *)baseURL
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self setupMapBaseLayerWithURL:baseURL];
    }
    return self;
}

//- (void) setupMapBaseLayerWithURL:(NSString *)baseURL
//{
//    NSURL *baseMapURL = [NSURL URLWithString:baseURL];
//    AGSTiledMapServiceLayer *baseMapLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:baseMapURL];
//    self.baseMapLayer = baseMapLayer;
//
//    // 插入底图
//    [self insertMapLayer:baseMapLayer withName:MAP_BASE_NAME atIndex:0];
//}

@end
