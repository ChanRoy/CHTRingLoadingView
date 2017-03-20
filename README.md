# CHTRingLoadingView
Simple Image Loading Indicator

![CHTRingLoadingView] (https://github.com/ChanRoy/CHTRingLoadingView/blob/master/CHTRingLoadingView.gif)

##简介
*仿造微信朋友圈图片的简单图片加载动画*

*默认大小形状固定不可修改，只公开颜色等参数属性*

*具体效果如上图*

##使用

###初始化

```
//frame的大小设置无效，默认为固定大小
- (instancetype)initWithFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;
- (instancetype)init;
```

###属性

```
/**
 背景圆环颜色
 */
@property (nonatomic, strong) UIColor *bgRingColor;

/**
 旋转的圆弧颜色
 */
@property (nonatomic, strong) UIColor *trackColor;

/**
 旋转一圈的时间，控制旋转速度.default is 1 sec.
 */
@property (nonatomic, assign) CGFloat animationDuration;

/**
 只读属性，是否正在执行动画。
 */
@property (nonatomic, assign, readonly) BOOL isAnimating;

/**
 模仿系统控件UIActivityIndicatorView，当动画停止时隐藏。默认为YES
 */
@property (nonatomic, assign) BOOL hidesWhenStopped;
```

###其他方法
```
/**
 开始旋转动画
 */
- (void)startLoading;

/**
 停止旋转动画
 */
- (void)stopLoading;
```

##使用Demo
```
@implementation ViewController{
    
    CHTRingLoadingView *_ringView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    _ringView = [[CHTRingLoadingView alloc]init];
    _ringView.animationDuration = 3;
    [self.view addSubview: _ringView];
    
    _ringView.center = self.view.center;
    
}

- (IBAction)btnClick:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if (sender.selected) {
        [_ringView stopLoading];
    }else{
        [_ringView startLoading];
    }
}
```