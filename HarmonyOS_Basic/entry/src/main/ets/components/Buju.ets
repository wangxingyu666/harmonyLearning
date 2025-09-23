import {RowDemo} from "../components/RowDemo"
import {ColumnDemo} from "../components/ColumnDemo"
import {FlexDemo} from "../components/FlexDemo"

@Entry
@Component
struct Test1 {

  build() {
    // 一维布局容器（垂直方向）
    Column({ space: 16 }) {
      RowDemo()
      ColumnDemo()
      FlexDemo()
    }
  }
}
