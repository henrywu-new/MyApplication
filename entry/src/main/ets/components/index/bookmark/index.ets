import { router } from '@kit.ArkUI'

@Component
struct BookmarkTabContent {
  build() {
    Column(){
      Text('Bookmark')
        .fontSize('32vp')
        .fontWeight(900)
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
      .margin({top: '20vp', bottom: '10vp'})
      .border({width: '1vp', color: '#4E4B66'})
      Scroll(){
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

export default BookmarkTabContent