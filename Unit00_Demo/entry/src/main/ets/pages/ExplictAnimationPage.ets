
@Entry
@Component
struct ExplictAnimationPage {
  @State isMoved: boolean=false
  build() {
    Navigation() {
      Column({ space: 16 }){
        Text('显式动画演示')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)

        Button('改变位置').onClick(()=>{
          this.isMoved=!this.isMoved
        })

        Circle({width: 60,height: 60})
          .fill("#ff4fa9e3")
          .translate({x:this.isMoved?100:0,y:0})
          .animation({
            duration: 1000,
            curve: Curve.Smooth
          })
      }
      .padding(16)
    }
    .title('显示动画')
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(false)
    .navBarWidth('100%')
    .navBarPosition(NavBarPosition.Start)
  }
}