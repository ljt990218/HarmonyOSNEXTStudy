import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Image('https://logos-world.net/wp-content/uploads/2020/04/Huawei-Logo-700x394.png')
          .width(300)
        Text(this.message).fontSize(50).fontWeight(FontWeight.Bold).margin({ top: 20 })
        Button() {
          Text('Next').fontColor('#fff').fontSize(24).fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 24
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          router.pushUrl({ url: 'pages/Second' })
        })
      }.width('100%')
    }.height('100%')
  }
}