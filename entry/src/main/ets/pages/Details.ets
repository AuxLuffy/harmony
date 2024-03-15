import { GoodItem } from '../components/common'
import Title from './TitleComponent'

interface GoodsDataBean {
  icon: string | PixelMap | Resource
  title: string
  originPrice: number
  discount?: number
}

@Entry
@Component
struct Details {
  @State message: string = 'Hello World'
  max: number = 100
  @State imgW: number = 30
  controller: TextInputController = new TextInputController()
  goodsList: GoodsDataBean[] = [
    { icon: 'https://res.vmallres.com/uomcdn/CN/cms/2024-03/bcbb0551dadb4962b20e60ca33e169d3.png', title: "Mate 60 RS 非凡大师", originPrice: 11999, discount: 0 },
    { icon: 'https://res.vmallres.com/uomcdn/CN/cms/2024-03/0044b39ac7a54bd08e0695b32ca418d4.webp', title: "HUAWEI FreeClip", originPrice: 1299, discount: 0 },
    { icon: 'https://res.vmallres.com/uomcdn/CN/cms/2024-03/781194a6f53749dea7e9443074130ca1.jpg', title: "HUAWEI MateBook 14s", originPrice: 6499, discount: 800 },
    { icon: 'https://res.vmallres.com/uomcdn/CN/cms/2024-03/73c13a47f5be48f58bb5033df45513cc.png', title: "HUAWEI MatePad Pro 11英寸 2024款", originPrice: 4299, discount: 0 },
    { icon: 'https://res.vmallres.com/uomcdn/CN/cms/2024-03/8fc44f0edecb468a9798e812b59a5d62.jpg', title: "问界 新M7 大五座", originPrice: 249800, discount: 0 },
    { icon: 'https://res.vmallres.com/uomcdn/CN/cms/2024-01/336b4da7a2a94e869f8e18478e0c0e33.png', title: "华为家庭存储", originPrice: 2199, discount: 400 },
    { icon: "https://res.vmallres.com/pimages//uomcdn/CN/pms/202402/gbom/6942103115608/428_428_4B8E8433B2D271853979CD701B88580Dmp.png", title: "华为畅享 70z", originPrice: 1399, discount: 100 },
    { icon: "https://res.vmallres.com/pimages//uomcdn/CN/pms/202401/gbom/6942103111051/428_428_9251FDF9C7662C424900489AB1C88F2Amp.png", title: "华为畅享 70pro", originPrice: 1699, discount: 40 },
    { icon: "https://res.vmallres.com/pimages//uomcdn/CN/pms/202312/gbom/6942103112119/428_428_6C345C873DBC15A1005E79E1D4B6645Amp.png", title: "HUAWEI nova 12 Pro 512GB （12号色）", originPrice: 4399, discount: 0 },
  ]

  build() {
    Column({ space: 5 }) {
      Title({ title: '商品列表' })


      List({ space: 10 }) {
        ForEach([1, 2, 5, 6], item => {
          ListItem() {
            GoodItem({})
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