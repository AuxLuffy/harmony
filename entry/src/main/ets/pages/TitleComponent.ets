@Preview
@Component
export default struct Title {
  title: string = '商品列表';
  leftIconCallBack?: () => void;
  rightIconCallBack?: () => void

  build() {
    Row() {
      Image($r('app.media.ic_title_back'))
        .height('100%')
        .aspectRatio(1)
        .padding(3)
        .onClick(this.leftIconCallBack)

      Text(this.title)
        .fontSize(20)
        .margin({ left: 10 })
        .fontColor(Color.Black)
        .layoutWeight(1)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })

      Image($r('app.media.ic_title_refresh'))
        .height('100%')
        .padding(3)
        .aspectRatio(1)
        .onClick(this.rightIconCallBack)
    }
    .width('100%')
    .height(48)
    .padding({ left: 5, right: 5 })
  }
}