import { router } from '@kit.ArkUI'

@Preview
@Component
struct Navbar {
  @Prop title:string = ''

  onBack = () => {
    router.back()
  }

  build() {
    RelativeContainer(){
      Row(){
        Row(){
          Image($r('app.media.icon_arrow_left'))
            .width('24vp')
            .height('24vp')
            .onClick(() => this.onBack())
        }
        .layoutWeight(1)
        Row(){
          if(this.title) Text(this.title).fontSize('16vp')
        }
        .layoutWeight(3)
        .justifyContent(FlexAlign.Center)
        Row({space: '5vp'}){
          Image($r('app.media.icon_share'))
            .width('24vp')
            .height('24vp')
            .onClick(() => this.onBack())
          Image($r('app.media.icon_more_02'))
            .width('24vp')
            .height('24vp')
            .onClick(() => this.onBack())
        }
        .alignItems(VerticalAlign.Center)
        .justifyContent(FlexAlign.End)
        .layoutWeight(1)
      }
      .width('100%')
      .height('24vp')
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)

    }
  }
}

export default Navbar