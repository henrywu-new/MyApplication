import { router } from '@kit.ArkUI'

@Component
struct ProfileTabContent {
  build() {
    Scroll(){
      Column(){
        Stack({alignContent: Alignment.TopEnd}){
          Row(){
            Text('Profile')
              .fontSize('16vp')
              .fontWeight(900)
          }
          .width('100%')
          .justifyContent(FlexAlign.Center)
          .alignItems(VerticalAlign.Center)
          Image($r('app.media.icon_setting_02'))
            .width('24vp')
            .height('24vp')
            .margin({top: '-3vp'})
        }
        .margin({top: '20vp'})

        Row({space: '10vp'}) {
          Image($r('app.media.avatar_demo'))
            .width('100vp')
            .height('100vp')
            .borderRadius('50vp')
          Row() {
            Column({space: '10vp'}){
              Text('2333')
                .fontSize('16vp')
                .fontWeight(900)
              Text('Followers')
                .fontSize('16vp')
                .fontColor('#4E4B66')
            }
            Column({space: '10vp'}){
              Text('4433')
                .fontSize('16vp')
                .fontWeight(900)
              Text('Following')
                .fontSize('16vp')
                .fontColor('#4E4B66')
            }
            Column({space: '10vp'}){
              Text('2333')
                .fontSize('16vp')
                .fontWeight(900)
              Text('News')
                .fontSize('16vp')
                .fontColor('#4E4B66')
            }
          }
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .justifyContent(FlexAlign.Start)
        Column({space: '5vp'}){
          Text('Wilson Franci')
            .fontSize('16vp')
            .fontWeight(900)
          Text('Lorem Ipsum is simply dummy text of the printing simply dummy text of the printin and typesetting industry.')
            .fontColor('#4E4B66')
            .fontSize('16vp')
            .textOverflow({overflow: TextOverflow.Ellipsis})
            .maxLines(2)
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)
        .margin({top: '10vp'})

        Row({space: '20vp'}){
          Button('Edit profile')
            .type(ButtonType.Normal)
            .height('50vp')
            .layoutWeight(1)
            .borderRadius('6vp')
            .fontWeight(900)
          Button('Website')
            .type(ButtonType.Normal)
            .height('50vp')
            .layoutWeight(1)
            .borderRadius('6vp')
            .fontWeight(900)
        }
        .width('100%')
        .margin({top: '20vp'})
        .justifyContent(FlexAlign.SpaceBetween)

        Tabs({ barPosition: BarPosition.Start }) {
          ForEach(['News','Recent'], (item:string) => {
            TabContent(){
              List({space: '10vp'}){
                ForEach([1,2,3,4,4,5,5,6,6,4,4,4,4,3,3,3], () => {
                  ListItem(){
                    Row({space: '10vp'}){
                      Image($r('app.media.banner'))
                        .width('96vp')
                        .height('96vp')
                        .objectFit(ImageFit.Cover)
                        .borderRadius('6vp')
                      Column(){
                        Text('Europe')
                        Text('Ukraine\'s President Zelensky to BBC: Blood money being paid Blood money being paid')
                          .textOverflow({overflow: TextOverflow.Ellipsis})
                          .maxLines(2)
                        Row(){
                          Row(){
                            Image($r('app.media.news'))
                              .width('20vp')
                              .height('20vp')
                              .borderRadius('10vp')
                            Text('BBC News')
                              .fontColor('#4E4B66')
                              .fontWeight(900)
                              .margin({left: '5vp'})
                            Image($r('app.media.icon_timer'))
                              .width('14vp')
                              .height('14vp')
                              .margin({left: '10vp'})
                            Text('4h ago')
                              .fontColor('#4E4B66')
                              .margin({left: '2vp'})
                          }
                          .alignItems(VerticalAlign.Center)
                          .layoutWeight(1)
                          Image($r('app.media.icon_more'))
                            .width('14vp')
                            .height('14vp')
                        }
                      }
                      .height('100%')
                      .padding({top: '10vp', bottom: '10vp'})
                      .layoutWeight(1)
                      .alignItems(HorizontalAlign.Start)
                      .justifyContent(FlexAlign.SpaceBetween)
                    }
                    .height('112vp')
                    .width('100%')
                    .alignItems(VerticalAlign.Center)
                    .onClick(() => {
                      router.pushUrl({url: 'pages/news/Detail'})
                    })
                  }
                })
              }
              .nestedScroll({
                scrollForward: NestedScrollMode.PARENT_FIRST,
                scrollBackward: NestedScrollMode.SELF_FIRST
              })
              .scrollBar(BarState.Off)
            }.tabBar(item)
          })
        }
        .barMode(BarMode.Scrollable)
      }
      .width('100%')
    }
    .height('100%')
    .width('100%')
    .padding({left: '20pv', right: '20vp', bottom: '20vp'})
    .align(Alignment.TopStart)
    .edgeEffect(EdgeEffect.Spring)
    .scrollBar(BarState.Off)
  }
}

export default ProfileTabContent