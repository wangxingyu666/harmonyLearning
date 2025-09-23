import { GridDemo } from './GridDemo'
import { StackDemo } from './StackDemo'


@Entry
@Component
struct CDPage{

  build() {
    Column({ space: 16 }) {
      StackDemo()
      GridDemo()

    }
  }
}