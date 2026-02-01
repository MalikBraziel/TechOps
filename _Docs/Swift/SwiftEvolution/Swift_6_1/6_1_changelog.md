## Swift 6.1

* [#78389][]:
  Errors pertaining to the enforcement of [`any` syntax][SE-0335] on boxed
  protocol types (aka existential types), including those produced by enabling
  the upcoming feature `ExistentialAny`, are downgraded to warnings until a
  future language mode.

  These warnings can be escalated back to errors with `-Werror ExistentialAny`.

* Previous versions of Swift would incorrectly allow Objective-C `-init...`
  methods with custom Swift names to be imported as initializers, but with base 
  names other than `init`. The compiler now diagnoses these attributes and
  infers a name for the initializer as though they are not present.

* Projected value initializers are now correctly injected into calls when
  an argument exactly matches a parameter with an external property wrapper.

  For example:

  ```swift
  struct Binding {
    ...
	init(projectedValue: Self) { ... }
  }

  func checkValue(@Binding value: Int) {}

  func use(v: Binding<Int>) {
    checkValue($value: v)
	// Transformed into: `checkValue(value: Binding(projectedValue: v))`
  }
  ```

  Previous versions of the Swift compiler incorrectly omitted projected value
  initializer injection in the call to `checkValue` because the argument type
  matched the parameter type exactly.

* [SE-0444][]:
  When the upcoming feature `MemberImportVisibility` is enabled, Swift will
  require that a module be directly imported in a source file when resolving
  member declarations from that module:
  
  ```swift
  let recipe = "2 slices of bread, 1.5 tbs peanut butter".parse()
  // error: instance method 'parse()' is inaccessible due to missing import of
  //        defining module 'RecipeKit'
  // note:  add import of module 'RecipeKit'
  ```
  
  This new behavior prevents ambiguities from arising when a transitively
  imported module declares a member that conflicts with a member of a directly
  imported module.

* Syntactic SourceKit queries no longer attempt to provide information
  within the inactive `#if` regions. For example, given:

  ```swift
  #if DEBUG
  extension MyType: CustomDebugStringConvertible {
    var debugDescription: String { ... }
  }
  #endif
  ```

  If `DEBUG` is not set, SourceKit results will not involve the
  inactive code. Clients should use either SourceKit-LSP or
  swift-syntax for syntactic queries that are independent of the
  specific build configuration.

* [SE-0442][]:
  TaskGroups can now be created without explicitly specifying their child task's result types:

  Previously the child task type would have to be specified explicitly when creating the task group:

  ```swift
  await withTaskGroup(of: Int.self) { group in 
    group.addTask { 12 }

    return await group.next()
  } 
  ```

  Now the type is inferred based on the first use of the task group within the task group's body:

  ```swift
  await withTaskGroup { group in 
    group.addTask { 12 }

    return await group.next()
  } 
  ```


