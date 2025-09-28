@Entry
@Component
struct SlidCard {
  @State isExpanded: boolean = false

  build() {
    Column() {
      // 固定在顶部的标题
      Text('待办事项')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor('#333333')
        .width('100%')
        .textAlign(TextAlign.Center)
        .padding(20)
        .backgroundColor('#FFFFFF')
        .border({ width: { bottom: 1 }, color: '#F0F0F0' })

      // 主内容区域 - 占位空间
      Column()
        .flexGrow(1)
        .width('100%')
        .backgroundColor('#F8F9FA')

      // 滑动卡片
      Column() {
        // 标题栏
        Row() {
          Text('今日待办')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#333333')

          // 展开/收起指示器
          Text(this.isExpanded ? '▼' : '▲')
            .fontSize(16)
            .fontColor('#666666')
            .margin({ left: 8 })
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)
        .padding(16)

        // 展开内容
        if (this.isExpanded) {
          Column({ space: 12 }) {
            this.SimpleTaskItem('完成项目文档', '10:00')
            this.SimpleTaskItem('团队周会', '14:30')
            this.SimpleTaskItem('提交周报', '17:00')
          }
          .width('100%')
          .padding({ left: 16, right: 16, bottom: 16 })
        }
      }
      .width('100%')
      .backgroundColor('#FAFAFA')
      .borderRadius(16)
      .border({ width: 1, color: '#E0E0E0' })
      .shadow({ radius: 8, color: '#20000000', offsetX: 0, offsetY: 2 })
      .onClick(() => {
        this.isExpanded = !this.isExpanded
      })
      // 使用绝对定位实现精确滑动动画
      .position({
        y: this.isExpanded ? '40%' : '85%'  // 展开时到屏幕中间，收起时在底部
      })
      .animation({
        duration: 800,
        curve: Curve.EaseInOut
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  }

  // 简化版任务项
  @Builder SimpleTaskItem(title: string, time: string) {
    Row() {
      Circle()
        .width(8)
        .height(8)
        .fill('#2196F3')
        .margin({ right: 12 })

      Text(title)
        .fontSize(16)
        .fontColor('#333333')
        .layoutWeight(1)

      Text(time)
        .fontSize(14)
        .fontColor('#666666')
    }
    .width('100%')
    .alignItems(VerticalAlign.Center)
    .padding(12)
    .backgroundColor('#FFFFFF')
    .borderRadius(8)
    .border({ width: 1, color: '#F0F0F0' })
  }
}