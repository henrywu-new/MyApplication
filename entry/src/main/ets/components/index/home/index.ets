@Component
struct HomeTabContent {
  build() {
    Scroll(){
      Column(){
        Row(){
          Image($r('app.media.logo'))
            .width('100vp')
            .height('30vp')

          Row(){
            Badge({
              value: '',
              style: { badgeSize: 8, badgeColor: 'red' }
            }) {
            Image($r("app.media.icon_bell"))
              .width('18vp')
              .height('22vp')
            }
          }
          .width('32vp')
          .height('32vp')
          .backgroundColor('#fff')
          .borderRadius('6vp')
          .shadow({
            radius:20,
            color: "#ffeaeaea"
          })
          .justifyContent(FlexAlign.Center)
          .alignItems(VerticalAlign.Center)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        Row(){
          Image($r("app.media.icon_search"))
            .width('24vp')
            .height('24vp')
          TextInput({placeholder: 'Search'})
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .height('100%')
          Image($r("app.media.icon_setting"))
            .width('24vp')
            .height('24vp')
        }
        .height('48vp')
        .width('100%')
        .padding({left: '10vp', right: '10vp'})
        .borderRadius('4vp')
        .margin({top: '20vp'})
        .border({width: '1vp', color: '#4E4B66'})
        .alignItems(VerticalAlign.Center)
        Column(){
          Row(){
            Text('Trending')
              .fontSize('16vp')
              .fontWeight(900)
            Button({type: ButtonType.Normal}){
              Text('See all')
                .fontSize('14vp')
                .fontColor('#667080')
            }
            .backgroundColor(Color.Transparent)
          }
          .width('100%')
          .margin({top: '20vp', bottom: '20vp'})
          .justifyContent(FlexAlign.SpaceBetween)
          Column(){
            Image($r('app.media.banner'))
              .width('100%')
            Text('Europe')
              .fontSize('14vp')
              .fontColor('#4E4B66')
              .margin({top: '10vp', bottom: '10vp'})
            Text('Russian warship: Moskva sinks in Black Sea')
              .fontSize('16vp')
            Row(){
              Row(){
                Image($r('app.media.facebook'))
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
            .margin({top: '10vp'})
            .alignItems(VerticalAlign.Center)
          }
          .alignItems(HorizontalAlign.Start)
        }
        Column(){
          Row(){
            Text('Latest')
              .fontSize('16vp')
              .fontWeight(900)
            Button({type: ButtonType.Normal}){
              Text('See all')
                .fontSize('14vp')
                .fontColor('#667080')
            }
            .backgroundColor(Color.Transparent)
          }
          .width('100%')
          .margin({top: '20vp'})
          .justifyContent(FlexAlign.SpaceBetween)
          Tabs({ barPosition: BarPosition.Start }) {
            ForEach(['All','Sports','Politics','Business','Health','Travel','Science','Fashion'], (item:string) => {
              TabContent(){
                List({space: '10vp'}){
                  ForEach([1,2,3,4,4,5,5,6,6,4,4,4,4,3,3,3], () => {
                    ListItem(){
                      Row({space: '10vp'}){
                        Image($r('app.media.demo_card'))
                          .width('96vp')
                          .height('96vp')
                          .borderRadius('6vp')
                        Column(){
                          Text('Europe')
                          Text('Ukraine\'s President Zelensky to BBC: Blood money being paid Blood money being paid')
                            .textOverflow({overflow: TextOverflow.Ellipsis})
                            .maxLines(2)
                          Row(){
                            Row(){
                              Image($r('app.media.facebook'))
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
        // .margin({top: '10vp'})
      }
      .width('100%')
      .padding({ left: '20vp', right: '20vp'})
      .justifyContent(FlexAlign.Start)
    }
    .width('100%')
    .height('100%')
    .align(Alignment.Top)
    .edgeEffect(EdgeEffect.Spring)
    .scrollBar(BarState.Off)

  }
}

export default HomeTabContent