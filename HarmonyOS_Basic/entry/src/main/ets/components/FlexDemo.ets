
@Preview
@Component
export struct FlexDemo{
  @State skills: string[]=['项目管理','vue','java','python','javascript']
  build() {
   Flex({
     direction: FlexDirection.Row,     //水平排列
     wrap: FlexWrap.Wrap,     //允许换行
     justifyContent: FlexAlign.Start    //左对齐
   }){
     ForEach(this.skills, (skill:
     string,index:
     number
     )=>{
       Text(skill)
         .fontSize($r('app.string.Font_size_media'))
         .fontColor('')
         .backgroundColor('')
         .padding({
           left: 12,
           right: 12,
           top: 4,
           bottom: 4
         })
         .borderRadius(12)
         .margin({right:8,bottom:8})   //标签之间的间距
       }
       )
   }
  }
}