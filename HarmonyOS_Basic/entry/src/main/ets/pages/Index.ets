import router from '@ohos.router'

@Entry
@Component
struct Index {
  // 跳转到StateExample组件
  goToStateExample(): void {
    router.pushUrl({
      url: 'components/StateExample'
    })
  }

  // 跳转到ProductListPage组件
  goToProductList(): void {
    router.pushUrl({
      url: 'components/DataWatchExample'
    })
  }

  goToTestList(): void {
    router.pushUrl({
      url: 'components/Buju'
    })
  }

  goToCDList(): void {
    router.pushUrl({
      url: 'components/CDPage'
    })
  }

  build() {
    // 外层 Column 加 space: 15（所有子元素垂直间距统一为15px）
    Column({ space: 15 }) {
      // 按钮1：删除单独的 bottom margin，依赖 Column 的 space
      Button('前往组件内部状态')
        .width('100%')
        .height(45)
        .backgroundColor('#1677ff')
        .fontColor('#ffffff')
        .fontSize(16)
        .onClick(() => this.goToStateExample())

      // 按钮2：无单独 margin，依赖 Column 的 space
      Button('监听数据变化')
        .width('100%')
        .height(45)
        .backgroundColor('#1677ff')
        .fontColor('#ffffff')
        .fontSize(16)
        .onClick(() => this.goToProductList())

      // 按钮3：若需要与底部有小间距，可保留 bottom: 5（不影响与上一个按钮的15px间距）
      Button('一维布局')
        .width('100%')
        .height(45)
        .margin({ bottom: 5 })
        .backgroundColor('#1677ff')
        .fontColor('#ffffff')
        .fontSize(16)
        .onClick(() => this.goToTestList())

      Button('层叠布局和Grid布局')
        .width('100%')
        .height(45)
        .margin({ bottom: 5 })
        .backgroundColor('#1677ff')
        .fontColor('#ffffff')
        .fontSize(16)
        .onClick(() => this.goToCDList())
    }
    .padding(20)
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}