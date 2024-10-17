import Navbar from '../../components/common/Navbar'
@Entry
@Component
struct Detail {
  @State message: string = 'Hello World';
  @State data: string = "<head><meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=no'>" +
    '<h1 style="text-align: center;">h1标题</h1>' +
    '<h1 style="text-align: center;"><i>h1斜体</i></h1>' +
    '<h1 style="text-align: center;"><u>h1下划线</u></h1>' +
    '<h2 style="text-align: center;">h2标题</h2>' +
    '<h3 style="text-align: center;">h3标题</h3>' +
    '<p style="text-align: center;">p常规</p><hr/>' +
    '<div style="width: 500px;height: 500px;border: 1px solid;margin: 0 auto;">' +
    '<p style="font-size: 35px;text-align: center;font-weight: bold; color: rgb(24,78,228)">字体大小35px,行高45px</p>' +
    '<p style="background-color: #e5e5e5;line-height: 45px;font-size: 35px;text-indent: 2em;">' +
    '<p>这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字</p>' + 
    '</head>';

  build() {
    Column(){
      Navbar()
      Column() {
        Scroll(){
          Column(){
            Image($r('app.media.banner'))
              .width('100%')
              .height('200vp')
            RichText(this.data).width('100%')
          }
        }
        .width('100%')
        .layoutWeight(1)
        .edgeEffect(EdgeEffect.Spring)
        .scrollBar(BarState.Off)
        .align(Alignment.TopStart)
        .padding({top: '20vp', bottom: '20vp'})
      }
      .layoutWeight(1)
      .padding({left: '20vp', right: '20vp'})
      Row(){
        Row() {
          Image($r('app.media.icon_like'))
            .width('24vp')
            .height('24vp')
          Text('24.8k')
            .fontSize('16vp')
            .margin({left: '5vp'})
          Image($r('app.media.icon_comment'))
            .width('24vp')
            .height('24vp')
            .margin({left: '20vp'})
          Text('2.4k')
            .fontSize('16vp')
            .margin({left: '5vp'})
        }
        .layoutWeight(1)
        .alignItems(VerticalAlign.Center)
        Image($r('app.media.icon_bookmark_selected'))
          .width('24vp')
          .height('24vp')
      }
      .width('100%')
      .height('78vp')
      .padding({left: '20vp', right: '20vp'})
      .alignItems(VerticalAlign.Center)
      .shadow({radius: 20, offsetX: 0, offsetY: -10, color: '#f5f5f5'})
    }
    .width('100%')
    .height('100%')
  }
}