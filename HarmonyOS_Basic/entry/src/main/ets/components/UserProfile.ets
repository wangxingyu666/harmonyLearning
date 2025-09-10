import { UserInfo } from "../model/UserInfo"
import { promptAction } from '@kit.ArkUI'
import pasteboard from '@ohos.pasteboard';

@Component
export struct UserProfile {
  @Prop userInfo: UserInfo

  private copyToClipboard(text: string): void {
    try {
      // 创建系统剪贴板
      const systemPasteboard = pasteboard.getSystemPasteboard();

      // 创建文本数据
      const pasteData = pasteboard.createPlainTextData(text);

      // 设置数据到剪贴板
      systemPasteboard.setPasteData(pasteData).then(() => {
        promptAction.showToast({
          message: '复制成功',
          duration: 2000
        });
      }).catch((err: Error) => {
        console.error(`复制失败: ${err.message}`);
        promptAction.showToast({
          message: '复制失败',
          duration: 2000
        });
      });
    } catch (err) {
      console.error(`复制操作异常: ${err.message}`);
      promptAction.showToast({
        message: '复制失败',
        duration: 2000
      });
    }
  }

  build() {
    Column() {
      Image(this.userInfo.avatar)
        .width(80)
        .height(80)
        .borderRadius(40)

      Text(`姓名: ${this.userInfo.name}`)
        .fontSize(28)
        .margin({ top: 12 })

      Text(`年龄: ${this.userInfo.age}`)
        .fontSize(26)
        .margin({ top: 8 })

      if (this.userInfo.email) {
        Text(`邮箱: ${this.userInfo.email}`)
          .fontSize(26)
          .margin({ top: 8 })
          .onClick(() => {
            if (this.userInfo.email) {
              this.copyToClipboard(this.userInfo.email);
            }
          })
      }

      if (this.userInfo.content) {
        Text(`个人简介: ${this.userInfo.content}`)
          .fontSize(26)
          .width('90%')
          .textOverflow({ overflow: 2 })
          .maxLines(1)
          .margin({ top: 8 })
          .onClick(() => {
            if (this.userInfo.content) {
              this.copyToClipboard(this.userInfo.content);
            }
          })
      }

      Button(this.userInfo.active ? '禁止用户' : '启用用户')
        .backgroundColor(this.userInfo.active ? '#ff4d4f' : '#1890ff')
        .margin({ top: 20 })
        .onClick(() => {
          this.userInfo.active = !this.userInfo.active;
          promptAction.showToast({
            message: this.userInfo.active ? '已启用用户' : '已禁止用户',
            duration: 2000
          });
        })
    }
    .padding(20)
    .width('100%')
    .backgroundColor('#ffbc70e5') // 白色背景
    .borderRadius(16) // 圆角
    .shadow({ // 添加阴影效果增强卡片感
      radius: 8,
      color: '#000000',
      offsetX: 0,
      offsetY: 2,
    })
  }
}