import { router } from '@kit.ArkUI';

@Entry
@Component
struct Login {
  @State username: string = ''
  @State password: string = '';


  build() {
    Column(){
      Column(){
        Text('Hello')
          .fontWeight(900)
          .fontSize('48vp')
        Text('Again!')
          .fontWeight(900)
          .fontSize('48vp')
          .fontColor('#1877F2')
        Text('Welcome back you’ve\n' + 'been missed')
          .fontColor('#4E4B66')
          .fontSize('20vp')
          .lineHeight('30vp')
      }
      .alignItems(HorizontalAlign.Start)
      .width('100%')
      Column(){
        Text(){
          Span('Username')
            .fontSize('12vp')
            .fontColor('#4E4B66')
          Span('*')
            .fontColor('#C30052')
            .fontSize('12vp')
        }.lineHeight('21vp')
        TextInput({ placeholder: 'Please enter user name', text: this.username })
          .borderRadius('6vp')
          .border({width:'1vp',color:'#4E4B66'})
          .backgroundColor('#fff')
      }
      .alignItems(HorizontalAlign.Start)
      .margin({top:'30vp'})
      Column(){
        Text(){
          Span('Password').fontSize('12vp')
            .fontColor('#4E4B66')
          Span('*').fontColor('#C30052')
            .fontSize('12vp')
        }
        .lineHeight('21vp')
        TextInput({ placeholder: 'Please enter password', text: this.password })
          .type(InputType.Password).borderRadius('6vp')
          .border({width:'1vp',color:'#4E4B66'})
          .backgroundColor('#fff')
      }
      .alignItems(HorizontalAlign.Start)
      .margin({top:'20vp'})
      Row(){
        Row(){
          Toggle({ type: ToggleType.Checkbox, isOn: true })
            .borderRadius('3vp')
            .selectedColor('#1877F2')
          Text('Remember me')
            .fontSize('14vp')
        }
        Text('Forgot the password ?')
          .fontSize('14vp')
          .fontColor('#1877F2')
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      Button('Login', { type: ButtonType.Normal })
        .borderRadius('6vp')
        .backgroundColor('#1877F2')
        .width('100%').height('50vp')
        .margin({top:'10vp'})
        .onClick(() => {
          router.replaceUrl({url:'pages/Index'})
        })
      Text('or continue with')
        .margin({top:'20vp',bottom:'20vp'})
        .fontSize('14vp')
        .fontColor('#4E4B66')
      Row({space:'20vp'}){
        Button({type:ButtonType.Normal}){
          Row({space:'5vp'}){
            Image($r('app.media.facebook')).width('24vp')
            Text('Facebook').fontColor('#667080')
          }
          .justifyContent(FlexAlign.Center)
          .width('100%')
          .height('48vp')

        }
        .layoutWeight(1)
        .borderRadius('6vp')
        .backgroundColor('#EEF1F4')

        Button({type:ButtonType.Normal}){
          Row({space:'5vp'}){
            Image($r('app.media.google')).width('24vp')
            Text('Google').fontColor('#667080')
          }
          .justifyContent(FlexAlign.Center)
          .width('100%')
          .height('48vp')

        }
        .layoutWeight(1)
        .borderRadius('6vp')
        .backgroundColor('#EEF1F4')
      }.width('100%')
      Text(){
        Span('don’t have an account ? ')
        Span('Sign Up')
          .fontColor('#1877F2')
      }
      .fontSize('14vp')
      .margin({top:'20vp'})

    }
    .width('100%')
    .height('100%')
    .padding('20vp')
    .backgroundColor('#ffffff')
  }
}