
@Preview
@Component
export struct RowDemo{
 build() {
   Row({space: $r('app.string.Space')}){
     //1.图片
    Image($r('app.media.liang'))
      .width($r('app.string.Font_size_big'))
      .height($r('app.string.Font_size_big'))

     //2.文本框,占据剩余空间
    Text('鸿蒙开发').fontSize(12).fontWeight(FontWeight.Medium)
      .layoutWeight(1)

     //3.按钮
     Button('详情').type(ButtonType.Capsule).width(60).height(20)
   }.padding({left: 20,right:20})
   .width(300)
   .height(60)
   .backgroundColor('#ff408bc1')
 }
}