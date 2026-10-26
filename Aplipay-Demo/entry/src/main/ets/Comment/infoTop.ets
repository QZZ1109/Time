@Extend(Button)
function ButtonParten(){
  .width(46)
  .height(32)
  .fontSize(12)
  .padding({left:5,right:5})
  .backgroundColor('#f7f8fa')
  .fontColor('#8e9298')
  .border({width:1,color:'#f7f8fa'})
}

@Component
 export struct infoTop {
  build() {
    //主体区域

    Row() {
      Text('全部评论')
        .fontSize(20)
        .fontWeight(700)
        .fontColor('#222')
      Row() {
        Button('最新', { stateEffect: false })
          .ButtonParten()
        Button('最热', { stateEffect: false })
          .ButtonParten()
      }.backgroundColor('#f4f8fa')
      .borderRadius(20)

    }.width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .padding(12)
  }
}