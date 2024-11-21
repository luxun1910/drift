## 0.2.2

- Fix infinite loop in isolate server lookups when using `shareAcrossIsolates`
  across hot restarts.

## 0.2.1

- Enable serialization between background isolates where necessary.

## 0.2.0

- Add `DriftNativeOptions` with `shareAcrossIsolates` option that will give
  multiple isolates access to the same drift database without having to manually
  set up ports.

## 0.1.0

- Initial version.
