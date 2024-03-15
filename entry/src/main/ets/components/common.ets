@Component
@Preview
export struct GoodItem {
  icon: string | PixelMap | Resource
  title: string = '华为Mate 60'
  originPrice: number = 6000
  discount?: number = 500

  build() {
    Row() {
      Image(this.icon)
        .alt($r('app.media.ic_img_default'))
        .height('70%')
        .aspectRatio(1)
      Column({ space: 3 }) {
        Text(this.title)
          .fontColor(Color.Black)
          .fontSize(14)
        if (this.discount) {
          Text(`原价：¥${this.originPrice}`)
            .fontColor(Color.Gray)
            .fontSize(12)
            .decoration({ type: TextDecorationType.LineThrough })
          Text(`折扣价：¥${this.originPrice - this.discount}`)
            .fontColor(Color.Red)
            .fontSize(13)
          Text(`折扣：¥${this.discount}`)
            .fontColor(Color.Red)
            .fontSize(13)
        } else {
          Text(`现价：¥${this.originPrice}`)
            .fontColor(Color.Red)
            .fontSize(13)
        }
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.Start)
      .margin({ left: 10 })
      .height('100%')
    }
    .width('100%')
    .height(120)
    .backgroundColor(Color.White)
    .borderRadius(20)
    .padding(10)
  }
}