import { overlay } from '@kit.AbilityKit'

@Component
struct ExploreTabContent {
  build() {
    Column() {
      Text('Explore')
        .fontSize('32vp')
        .fontWeight(900)
        .margin({bottom: '10vp'})
      Scroll(){
        Column(){
          Row(){
            Text('Topic')
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

          List({space: '10vp'}) {
            ForEach([1, 2, 3], () => {
              ListItem() {
                Row({space: '8vp'}){
                  Image($r('app.media.banner'))
                    .width('70vp')
                    .height('70vp')
                    .borderRadius('4vp')
                  Column(){
                    Text('Europe')
                      .fontSize('14vp')
                      .fontColor('#4E4B66')
                      .margin({ bottom: '5vp'})
                    Text('Russian warship: Moskva sinks in Black Sea')
                      .fontSize('16vp')
                      .textOverflow({overflow: TextOverflow.Ellipsis})
                      .maxLines(2)
                  }
                  .alignItems(HorizontalAlign.Start)
                  .layoutWeight(1)
                  Button('Saved')
                    .type(ButtonType.Normal)
                    .width('78vp')
                    .height('34')
                    .borderRadius('5vp')
                    .fontWeight(900)
                }
              }
            })
          }

          Row(){
            Text('Popular Topic')
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

          List({space: '20vp'}) {
            ForEach([1, 2, 3, 4, 4, 5, 5, 6, 6, 4, 4, 4, 4, 3, 3, 3], () => {
              ListItem() {
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
                  .margin({top: '10vp'})
                  .alignItems(VerticalAlign.Center)
                }
                .alignItems(HorizontalAlign.Start)
              }
            })
          }
        }
      }
      .align(Alignment.TopStart)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .layoutWeight(1)
      .width('100%')
    }
    .height('100%')
    .width('100%')
    .padding('20vp')
    .alignItems(HorizontalAlign.Start)
    .justifyContent(FlexAlign.Start)
  }
}

export default ExploreTabContent