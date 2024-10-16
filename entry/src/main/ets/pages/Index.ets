import HomeTabContent from '../components/index/home'
import ExploreTabContent from '../components/index/explore'
import BookmarkTabContent from '../components/index/bookmark'
import ProfileTabContent from '../components/index/profile'

// interface Tab {
//   content: xxx
//   title: string
//   index: number
//   icon: Resource
//   selectedIcon: Resource
// }

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder tabBuilder(title: string, targetIndex: number, icon: Resource, iconSelected: Resource) {
    Column({space: '5vp'}) {
      Image(this.currentIndex == targetIndex ? iconSelected : icon)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontSize('14vp')
        .fontColor(this.currentIndex === targetIndex ? '#1877F2' : '#4E4B66')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  // @Builder tabContentBuilder(tabs: Tabs[]) {
  //   ForEach(tabs, (item: Tabs) => {
  //     TabContent(){
  //      item.content
  //     }
  //     .tabBar(this.tabBuilder(item.title,item.index, item.icon, item.selectedIcon))
  //   })
  //
  // }


  build() {
    Tabs({controller: this.controller}){
      TabContent(){
        HomeTabContent()
      }.tabBar(this.tabBuilder('Home',0, $r("app.media.icon_home"), $r("app.media.icon_home_selected")))
      TabContent(){
        Text('Explore')
      }.tabBar(this.tabBuilder('Explore',1,$r('app.media.icon_explore'), $r("app.media.icon_explore_selected")))
      TabContent(){
        Text('Bookmark')
      }.tabBar(this.tabBuilder('Bookmark',2,$r('app.media.icon_bookmark'), $r("app.media.icon_bookmark_selected")))
      TabContent(){
        Text('Profile')
      }.tabBar(this.tabBuilder('Profile',3,$r('app.media.icon_profile'), $r("app.media.icon_profile_selected")))
    }.barPosition(BarPosition.End).animationDuration(0)
    .height('100%')
    .width('100%')
    .barHeight('78vp')
    .barBackgroundColor('#fff8f7f7')
    .onChange((index) => {
      this.currentIndex = index
    })
  }
}
