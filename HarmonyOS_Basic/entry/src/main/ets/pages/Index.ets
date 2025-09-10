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

  build() {
    Column() {
      Button('前往组件内部状态')
        .width('100%')
        .height(45)
        .margin({ bottom: 15 })
        .backgroundColor('#1677ff')
        .fontColor('#ffffff')
        .fontSize(16)
        .onClick(() => this.goToStateExample())

      Button('监听数据变化')
        .width('100%')
        .height(45)
        .backgroundColor('#1677ff')
        .fontColor('#ffffff')
        .fontSize(16)
        .onClick(() => this.goToProductList())
    }
    .padding(20)
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
