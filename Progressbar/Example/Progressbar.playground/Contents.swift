import UIKit
import Progressbar

let max: UInt = 3
let bar = Progressbar(text: "foo", max: max)

for _ in 1...max {
  bar.increment()
  sleep(1)
}

bar.finish()

print("Finished!")
