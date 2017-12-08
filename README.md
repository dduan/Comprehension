# Comprehension

This library provides [List Comprehension][1] for Swift. Like so:

```swift
let numbers = [1, 2, 3]
let letters = "ab"

// produces ["a1", "a2", "a3", "b1", "b2", "b3"]
Array(letters, numbers) { "\($0)\($1)" }

// produces ["a1", "a3", "b1", "b3"]
Array(letters, numbers, where: { $1 % 2 != 0 }) { "\($0)\($1)" }
```

## Installation

For Swift Package Manager, add to your dependencies:

```swift
.package(url: "git@github.com:dduan/Comprehension.git", .branch("master")),

```

… and `"Comprehension"` to the target's dependencies.

## What's List Comprehension?

List comprehension is a powerful syntax for processing lists in languages such as Haskell, Python, etc. It's
particularly handy when you need to deal with combinations of each elements in multiple lists (their
[Cartesian product][2]).

The origin of list comprehension is often attribute to set comprehension in mathematics, whereas

```
{2·x|x ∈ ℕ, x ≤ 10}
```

… means "take all integers (element of set ℕ) that are less that 10, multiply each by 2 and form a new
set with the results."

Here's an example of how list comprehension works in Haskell:

```haskell
ghci> [x+y | x <- [1,2,3], y <- [10,100,1000]]
[11,101,1001,12,102,1002,13,103,1003]
```

Here, integers from one list is sequentially paired with that from the other list, resulting in
3 * 3 = 9 pairs. The sum of each pair forms the resulting list of integers.

Comprehension on a single list is equivalent of `list.filter(f).map(g)`. When input is 2 lists:

```swift
// Comprehension syntax
let result = Array(list0, list1, where: f) { g($0, $1) }
```

… is equivalent of …

```swift
var result = [TypeOfElementInList0, TypeOfElementInList1]()
for e0 in list0 {
    for e1 in list1 {
        if f(e0, e1) {
            result.append(g(e0, e1))
        }
    }
}
// The fact that `result` is a var is not equivalent, but 🤷‍♀️.
```

… or in functional style …

```swift
let result = list0
    .map { e0 in
        list1.map { e1 in
            (e0, e1)
        }
    }
    .joined()
    .filter(f)
    .map(g)
```

Note how the list comprehension version is much more concise above. And imagine expanding the example to 3, 4,
5 lists!

## License

MIT, see [LICENSE][3].

[1]: https://en.wikipedia.org/wiki/List_comprehension
[2]: https://en.wikipedia.org/wiki/Cartesian_product
[3]: https://github.com/dduan/Comprehension/blob/master/LICENSE.md
