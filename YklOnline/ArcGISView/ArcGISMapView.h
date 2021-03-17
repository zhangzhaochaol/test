//
//  ArcGISMapView.h
//  YklOnline
//
//  Created by 周通 on 2020/10/12.
//  Copyright © 2020 guojian. All rights reserved.
//

#import <ArcGIS/ArcGIS.h>


NS_ASSUME_NONNULL_BEGIN

@interface ArcGISMapView : AGSMapView

/// 基础图层
//@property (nonatomic, strong) AGSTiledMapServiceLayer *baseMapLayer;

/// 初始化页面
/// @param baseURL 底图地址
- (instancetype)initWithFrame:(CGRect)frame BaseURL:(NSString *)baseURL;

/// 设置基础底图图层
/// @param baseURL 底图地址
- (void) setupMapBaseLayerWithURL:(NSString *)baseURL;

@end

NS_ASSUME_NONNULL_END
