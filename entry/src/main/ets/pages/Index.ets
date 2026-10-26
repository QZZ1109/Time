interface ImageCount{
  url:ResourceStr
  count:number
}
@Entry
@Component
struct Index {
  @State randomIndex:number=0//默认第一张，避免加载不存在的资源
  @State Images:ImageCount[]=[
    {url:$r('app.media.ic_0'),count:0},
    {url:$r('app.media.ic_1'),count:0},
    {url:$r('app.media.ic_2'),count:0},
    {url:$r('app.media.ic_3'),count:0},
    {url:$r('app.media.ic_4'),count:0},
    {url:$r('app.media.ic_5'),count:0}
  ]
  //控制遮罩的显隐
  @State makeOpacity:number=0//透明度
  @State makeZIndex:number=-1//显示层级
  @State makeX: number=0
  @State makeY:number=0
  build() {
    Stack(){
      Column(){
        Grid(){
          ForEach(this.Images,(item:ImageCount,index:number)=>{
            GridItem(){
              Badge({
                count:item.count,
                position:BadgePosition.RightTop,
                style:{
                  fontSize:14,
                  badgeSize:20,
                }
              }){
                Image(item.url)
                  .width(70)
                  .aspectRatio(1)
              }
            }
          })

        }
        .width('100%')
        .height(300)
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .margin({top:100})

        Button('立即抽卡')
          .width(200)
          .backgroundColor('#ed5b8c')
          .margin({top:50})
          .onClick(()=>{
            //先随机出卡片，再让遮罩显示
            this.randomIndex=Math.floor(Math.random()*6)
            console.log('抽中了',this.randomIndex)
            //点击时修改遮罩参数，让遮罩显示
            this.makeOpacity=1
            this.makeZIndex=99
            this.makeX=1
            this.makeY=1
          })
      }
      .width('100%')
      .height('100%')

      //抽卡遮罩层
      Column({space:15}){
     Text('获得卡片')
       .fontColor('#f5ebcf')
       .fontSize(25)
       .fontWeight(FontWeight.Bold)
        Image($r(`app.media.ic_${this.randomIndex}`))
          .width(200)
          //控制元素的缩放
          .scale({
            x:this.makeX,
            y:this.makeY
          })
          .animation({duration:500})
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({width:1,color:'#fff'})
          .onClick(()=>{
            //控制弹窗显隐
            this.makeOpacity=0
            this.makeZIndex=-1
            //图像播放比例
            this.makeX=0
            this.makeY=0
            //开心收下,对象数组的情况需要更新，需要修改整个数组对象
            this.Images[this.randomIndex]={
              url:$r(`app.media.ic_${this.randomIndex}`),
              count:this.Images[this.randomIndex].count+1
            }
          })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#cc000000')
      .justifyContent(FlexAlign.Center)
      //设置透明度
      .opacity(this.makeOpacity)
      .zIndex(this.makeZIndex)
      //动画
      .animation({duration:1000})
    }
    }

}