// UserList.ets
import { UserInfo } from '../model/UserInfo'
import { UserProfile } from './UserProfile'

@Component
export struct UserList {
  @State users: UserInfo[] = [
    {
      id: 1,
      name: '张三',
      age: 20,
      avatar: $r("app.media.liang"),
      active: true,
      email: '123123@qq.com',
      content:"灌伤害，骗骗花，拉开距离回回拉"
    },
    {
      id: 2,
      name: '李四',
      age: 22,
      avatar: $r("app.media.chuhua"),
      active: false,
      content:"testtesttesttest"
    },
    {
      id: 3,
      name: '王五',
      age: 12,
      avatar: $r('app.media.startIcon'),
      active: false,
      content:"1231231231231321313132131321321"
    },{
    id: 4,
    name: '赵六',
    age: 32,
    avatar: $r('app.media.startIcon'),
    active: true,
    email: '123456@qq.com'
  }
  ]

  build() {
    List({ space: 20 }) {
      ForEach(this.users, (user: UserInfo) => {
        ListItem() {
          UserProfile({ userInfo: user })
        }
      }, (user: UserInfo) => user.id.toString())
    }
    .width('100%')
    .height('100%')
    .alignListItem(ListItemAlign.Center)
  }
}