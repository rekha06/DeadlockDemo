import UIKit

let queue = DispatchQueue(label: "label")
print("1")
queue.async {
    print("2") // outer block is waiting for this inner block to complete,
    queue.sync {
         print("3")
        // inner block won't start before outer block finishes
        // => deadlock
    }
}
