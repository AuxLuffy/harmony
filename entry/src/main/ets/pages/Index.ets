import Title from './TitleComponent'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  max: number = 100
  @State imgW: number = 30
  controller: TextInputController = new TextInputController()

  build() {
    Column({ space: 5 }) {
      Title({title:'商品详情'})
      Row() {
        Image($r('app.media.app_icon'))
          .width(this.imgW)
          .renderMode(ImageRenderMode.Original)
          .interpolation(ImageInterpolation.High)
          .visibility(Visibility.Visible)
      }
      .height(400)
      .width('100%')
      .justifyContent(FlexAlign.Center)

      Row() {
        Text('图片宽度：')
          .fontSize(20)
          .decoration({ type: TextDecorationType.LineThrough })
          .fontWeight(FontWeight.Normal)
        TextInput({ text: this.imgW.toFixed(0), placeholder: '请输入...', controller: this.controller })
          .width('40%')
          .textAlign(TextAlign.Center)
          .placeholderColor(Color.Gray)
          .caretColor(Color.Red)
          .fontSize(18)
          .fontColor(Color.Brown)
          .type(InputType.Number)
          .onChange((value: string) => {

          })
      }

      Row() {
        Slider({
          value: 0,
          min: 0,
          max: this.max,
          step: 1,
          style: SliderStyle.OutSet
        })
          .width('80%')
          .blockColor('#f00')
          .selectedColor('#0ff')
          .showSteps(true)
          .trackThickness(7)
          .showTips(true)
          .trackColor('#ded')
          .onChange((value, mode) => {
            this.imgW = value / this.max * 300 + 30
            console.log(`value: ${value}/${this.max}, mode: ${mode}`)
          })
        Text(this.max.toFixed(0))
          .fontSize(12)
          .fontColor(Color.Black)
      }

      List({ space: 10 }) {
        ForEach([1, 2, 5, 6], item => {
          ListItem() {
            Text('listItem' + item)
          }
        })
      }
      .alignListItem(ListItemAlign.Center)
      // .justifyContent(FlexAlign.Center)
      .listDirection(Axis.Vertical)
      .height(100)
      .layoutWeight(1)

    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}