@Component
export struct Card {
  @Prop name: string = "wxy"
  @Prop age: string = "21"
  @Prop avatar: string = "https://my-wxy-bucket.oss-cn-nanjing.aliyuncs.com/picture/liang.jpg"

  build() {
    Column() {
      // 头像
      Image(this.avatar)
        .width(120)
        .height(120)
        .borderRadius(60)
        .objectFit(ImageFit.Cover)
        .margin({ bottom: 16 })
        .border({ width: 2, color: '#ffffff' })
        .shadow({ radius: 8, color: '#00000010', offsetX: 0, offsetY: 4 })

      // 姓名
      Text("姓名："+this.name)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)

      Text("年龄："+this.age)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
    }
    .width('100%')
    .padding(20)
    // 设置卡片底色为浅灰色，增加层次感
    .backgroundColor('#f9fafb')
    .borderRadius(16)
    // 边框与底色形成对比
    .border({
      width: 1,
      color: '#e5e7eb',
      style: BorderStyle.Solid
    })
    .shadow({ radius: 10, color: '#00000008', offsetX: 0, offsetY: 4 })
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
  }
}
