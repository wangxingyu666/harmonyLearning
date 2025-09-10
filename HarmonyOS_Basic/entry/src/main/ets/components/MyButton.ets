@Component
export struct MyButton{
  @Prop buttonName: string="按一下"
  @Prop buttonColor: string="#50AEB6"
  build() {
    Row({space: 10 }){
      Button(this.buttonName)
        .type(ButtonType.Normal)
        .backgroundColor(this.buttonColor)

      // Button('次要按钮')
      //   .type(ButtonType.Normal)
      //   .backgroundColor('#ff3a458c')
      //
      // Button('危险按钮')
      //   .type(ButtonType.Normal)
      //   .backgroundColor('#ffb65050')
    }
  }
}