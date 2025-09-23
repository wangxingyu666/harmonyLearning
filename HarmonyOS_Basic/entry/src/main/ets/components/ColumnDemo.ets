
@Preview
@Component
export struct ColumnDemo{
  build() {
    Column({space: $r('app.string.Space')}){
      //1.文本，签到
      Text('签到提醒').fontSize(24).fontWeight(FontWeight.Bold)

      //2.文本，提醒
      Text('上课前5分钟扫码签到').fontSize(14).fontColor('#666').maxLines(2)
        .layoutWeight(1)

      //3.按钮
      Button('提醒').margin({top: 12 }).onClick(()=>{
        console.log('允许签到')
      })
    }
    .padding(10)
    .width('100%')
    .height(300)
    .backgroundColor('#ff408bc1')
    .borderRadius(12)
    .shadow({radius: 8, color: '#f00' })
  }
}