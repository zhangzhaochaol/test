//
//  MainViewController.m
//  YklOnline
//
//  Created by 周通 on 2020/10/12.
//  Copyright © 2020 guojian. All rights reserved.
//

#import "MainViewController.h"
#import <ArcGIS/ArcGIS.h>

@interface MainViewController () <AGSGeoViewTouchDelegate>


@property (nonatomic, strong) AGSMapView *mapView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    self.view.backgroundColor = [UIColor orangeColor];
 
  //  [AGSArcGISRuntimeEnvironment setLicenseKey:@"" error:&error];
    
  
    
    
    self.mapView = [[AGSMapView alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
    self.mapView.map = [[AGSMap alloc] initWithBasemapType:AGSBasemapTypeTopographic latitude: 41.80  longitude: 123.38 levelOfDetail: 12];
    
    self.mapView.map.minScale = 100000000;
    self.mapView.map.maxScale = 1000;  //设置地图的放大倍数和缩小倍数，ArcGIS不会自己缩小到很小，需要你来设置，通过设置这个参数，可以看到门牌号。
    
    
    
    [self.mapView.locationDisplay addObserver:self
    forKeyPath:@"autoPanMode"
       options:(NSKeyValueObservingOptionNew)
       context:NULL];   //监听地图的定位情况，用来控制当前是否处于地图的中心

//
    [self.mapView.locationDisplay addObserver:self
    forKeyPath:@"mapScale"
       options:(NSKeyValueObservingOptionNew)
       context:NULL];   //地图缩放系数改变时调用，我用来取消搜索框键盘。
//
//
    [self.mapView addObserver:self
    forKeyPath:@"visibleAreaEnvelope"
       options:(NSKeyValueObservingOptionNew)
       context:NULL];   //地图可见区域监测，实时获取地图中心位置，纠错的时候可以用到。

    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//    selector:@selector(mapViewDidEndZooming:)
//        name:AGSMapViewDidEndZoomingNotification
//      object:nil];
    
    
    
    [self.view addSubview:self.mapView];
    
    
    UIView *topview = [[UIView alloc] init];
    topview.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 85);
    topview.backgroundColor = [UIColor redColor];
    [self.mapView addSubview:topview];
    
    
    UILabel *title = [[UILabel alloc] init];
    title.frame = CGRectMake(0, 50, UIScreen.mainScreen.bounds.size.width, 21);
    title.textColor = [UIColor whiteColor];
    title.textAlignment = NSTextAlignmentCenter;
    title.font = [UIFont systemFontOfSize:18];
    title.text = @"英凯利测试";
    [topview addSubview:title];
    
   
}

- (void)mapScale
{
    NSLog(@"进来了");
}



@end
