# Radar
iOS 雷达纹波效果

原理：
（1）使用bezierPathWithArcCenter 画圆，具体参数可以参考苹果文档
    center：圆弧中心点
    radius：圆弧半径
    startAngle：圆弧起始角度
    endAngle：圆弧结束角度
    closewise：是否顺时针方向
    
（2）CGAffineTransformScale 缩放功能
    CGAffineTransform : 
    sx：x 轴放大倍数
    sy：y 轴放大倍数
    
文件参考的别人代码，只是刚好用到整理一下，备份一下。谢谢~

![image]https://github.com/heitan575/Radar/blob/master/image.jpeg
