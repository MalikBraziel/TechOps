# Index

- `!=(_:_:)`
- `customstringconvertible-implementations`
- `description`
- `equatable-implementations`
- `init(rawvalue:)`
- `primaryresultcode`
- `rawvalue`
- `sqlite_abort`
- `sqlite_abort_rollback`
- `sqlite_auth`
- `sqlite_auth_user`
- `sqlite_busy`
- `sqlite_busy_recovery`
- `sqlite_busy_snapshot`
- `sqlite_busy_timeout`
- `sqlite_cantopen`
- `sqlite_cantopen_convpath`
- `sqlite_cantopen_dirtywal`
- `sqlite_cantopen_fullpath`
- `sqlite_cantopen_isdir`
- `sqlite_cantopen_notempdir`
- `sqlite_cantopen_symlink`
- `sqlite_constraint`
- `sqlite_constraint_check`
- `sqlite_constraint_commithook`
- `sqlite_constraint_datatype`
- `sqlite_constraint_foreignkey`
- `sqlite_constraint_function`
- `sqlite_constraint_notnull`
- `sqlite_constraint_pinned`
- `sqlite_constraint_primarykey`
- `sqlite_constraint_rowid`
- `sqlite_constraint_trigger`
- `sqlite_constraint_unique`
- `sqlite_constraint_vtab`
- `sqlite_corrupt`
- `sqlite_corrupt_index`
- `sqlite_corrupt_sequence`
- `sqlite_corrupt_vtab`
- `sqlite_done`
- `sqlite_empty`
- `sqlite_error`
- `sqlite_error_missing_collseq`
- `sqlite_error_retry`
- `sqlite_error_snapshot`
- `sqlite_format`
- `sqlite_full`
- `sqlite_internal`
- `sqlite_interrupt`
- `sqlite_ioerr`
- `sqlite_ioerr_access`
- `sqlite_ioerr_auth`
- `sqlite_ioerr_begin_atomic`
- `sqlite_ioerr_blocked`
- `sqlite_ioerr_checkreservedlock`
- `sqlite_ioerr_close`
- `sqlite_ioerr_commit_atomic`
- `sqlite_ioerr_convpath`
- `sqlite_ioerr_corruptfs`
- `sqlite_ioerr_data`
- `sqlite_ioerr_delete`
- `sqlite_ioerr_delete_noent`
- `sqlite_ioerr_dir_close`
- `sqlite_ioerr_dir_fsync`
- `sqlite_ioerr_fstat`
- `sqlite_ioerr_fsync`
- `sqlite_ioerr_gettemppath`
- `sqlite_ioerr_lock`
- `sqlite_ioerr_mmap`
- `sqlite_ioerr_nomem`
- `sqlite_ioerr_rdlock`
- `sqlite_ioerr_read`
- `sqlite_ioerr_rollback_atomic`
- `sqlite_ioerr_seek`
- `sqlite_ioerr_shmlock`
- `sqlite_ioerr_shmmap`
- `sqlite_ioerr_shmopen`
- `sqlite_ioerr_shmsize`
- `sqlite_ioerr_short_read`
- `sqlite_ioerr_truncate`
- `sqlite_ioerr_unlock`
- `sqlite_ioerr_vnode`
- `sqlite_ioerr_write`
- `sqlite_locked`
- `sqlite_locked_sharedcache`
- `sqlite_locked_vtab`
- `sqlite_mismatch`
- `sqlite_misuse`
- `sqlite_nolfs`
- `sqlite_nomem`
- `sqlite_notadb`
- `sqlite_notfound`
- `sqlite_notice`
- `sqlite_notice_recover_rollback`
- `sqlite_notice_recover_wal`
- `sqlite_ok`
- `sqlite_ok_load_permanently`
- `sqlite_ok_symlink`
- `sqlite_perm`
- `sqlite_protocol`
- `sqlite_range`
- `sqlite_readonly`
- `sqlite_readonly_cantinit`
- `sqlite_readonly_cantlock`
- `sqlite_readonly_dbmoved`
- `sqlite_readonly_directory`
- `sqlite_readonly_recovery`
- `sqlite_readonly_rollback`
- `sqlite_row`
- `sqlite_schema`
- `sqlite_toobig`
- `sqlite_warning`
- `sqlite_warning_autoindex`
- `~=(_:_:)-3zjeq`
- `~=(_:_:)-7pido`

---


## `!=(_:_:)`

> Inherited from   .

```swift
static func != (lhs: Self, rhs: Self) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `customstringconvertible-implementations`

- **Role Heading:** API Collection


---

## `description`

> Inherited from   .

```swift
var description: String { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `equatable-implementations`

- **Role Heading:** API Collection


---

## `init(rawvalue:)`

> Creates a    from a raw SQLite result code.

```swift
init(rawValue: CInt)
```

- **Symbol Kind:** init

- **Role Heading:** Initializer


---

## `primaryresultcode`

> A primary result code limited to the least significant 8 bits.

```swift
var primaryResultCode: ResultCode { get }
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `rawvalue`

> The raw SQLite result code.

```swift
let rawValue: CInt
```

- **Symbol Kind:** property

- **Role Heading:** Instance Property


---

## `sqlite_abort`

```swift
static let SQLITE_ABORT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_abort_rollback`

```swift
static let SQLITE_ABORT_ROLLBACK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_auth`

```swift
static let SQLITE_AUTH: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_auth_user`

```swift
static let SQLITE_AUTH_USER: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_busy`

```swift
static let SQLITE_BUSY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_busy_recovery`

```swift
static let SQLITE_BUSY_RECOVERY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_busy_snapshot`

```swift
static let SQLITE_BUSY_SNAPSHOT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_busy_timeout`

```swift
static let SQLITE_BUSY_TIMEOUT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_cantopen`

```swift
static let SQLITE_CANTOPEN: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_cantopen_convpath`

```swift
static let SQLITE_CANTOPEN_CONVPATH: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_cantopen_dirtywal`

```swift
static let SQLITE_CANTOPEN_DIRTYWAL: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_cantopen_fullpath`

```swift
static let SQLITE_CANTOPEN_FULLPATH: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_cantopen_isdir`

```swift
static let SQLITE_CANTOPEN_ISDIR: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_cantopen_notempdir`

```swift
static let SQLITE_CANTOPEN_NOTEMPDIR: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_cantopen_symlink`

```swift
static let SQLITE_CANTOPEN_SYMLINK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint`

```swift
static let SQLITE_CONSTRAINT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_check`

```swift
static let SQLITE_CONSTRAINT_CHECK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_commithook`

```swift
static let SQLITE_CONSTRAINT_COMMITHOOK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_datatype`

```swift
static let SQLITE_CONSTRAINT_DATATYPE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_foreignkey`

```swift
static let SQLITE_CONSTRAINT_FOREIGNKEY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_function`

```swift
static let SQLITE_CONSTRAINT_FUNCTION: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_notnull`

```swift
static let SQLITE_CONSTRAINT_NOTNULL: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_pinned`

```swift
static let SQLITE_CONSTRAINT_PINNED: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_primarykey`

```swift
static let SQLITE_CONSTRAINT_PRIMARYKEY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_rowid`

```swift
static let SQLITE_CONSTRAINT_ROWID: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_trigger`

```swift
static let SQLITE_CONSTRAINT_TRIGGER: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_unique`

```swift
static let SQLITE_CONSTRAINT_UNIQUE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_constraint_vtab`

```swift
static let SQLITE_CONSTRAINT_VTAB: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_corrupt`

```swift
static let SQLITE_CORRUPT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_corrupt_index`

```swift
static let SQLITE_CORRUPT_INDEX: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_corrupt_sequence`

```swift
static let SQLITE_CORRUPT_SEQUENCE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_corrupt_vtab`

```swift
static let SQLITE_CORRUPT_VTAB: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_done`

```swift
static let SQLITE_DONE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_empty`

```swift
static let SQLITE_EMPTY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_error`

```swift
static let SQLITE_ERROR: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_error_missing_collseq`

```swift
static let SQLITE_ERROR_MISSING_COLLSEQ: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_error_retry`

```swift
static let SQLITE_ERROR_RETRY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_error_snapshot`

```swift
static let SQLITE_ERROR_SNAPSHOT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_format`

```swift
static let SQLITE_FORMAT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_full`

```swift
static let SQLITE_FULL: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_internal`

```swift
static let SQLITE_INTERNAL: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_interrupt`

```swift
static let SQLITE_INTERRUPT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr`

```swift
static let SQLITE_IOERR: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_access`

```swift
static let SQLITE_IOERR_ACCESS: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_auth`

```swift
static let SQLITE_IOERR_AUTH: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_begin_atomic`

```swift
static let SQLITE_IOERR_BEGIN_ATOMIC: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_blocked`

```swift
static let SQLITE_IOERR_BLOCKED: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_checkreservedlock`

```swift
static let SQLITE_IOERR_CHECKRESERVEDLOCK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_close`

```swift
static let SQLITE_IOERR_CLOSE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_commit_atomic`

```swift
static let SQLITE_IOERR_COMMIT_ATOMIC: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_convpath`

```swift
static let SQLITE_IOERR_CONVPATH: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_corruptfs`

```swift
static let SQLITE_IOERR_CORRUPTFS: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_data`

```swift
static let SQLITE_IOERR_DATA: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_delete`

```swift
static let SQLITE_IOERR_DELETE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_delete_noent`

```swift
static let SQLITE_IOERR_DELETE_NOENT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_dir_close`

```swift
static let SQLITE_IOERR_DIR_CLOSE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_dir_fsync`

```swift
static let SQLITE_IOERR_DIR_FSYNC: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_fstat`

```swift
static let SQLITE_IOERR_FSTAT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_fsync`

```swift
static let SQLITE_IOERR_FSYNC: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_gettemppath`

```swift
static let SQLITE_IOERR_GETTEMPPATH: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_lock`

```swift
static let SQLITE_IOERR_LOCK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_mmap`

```swift
static let SQLITE_IOERR_MMAP: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_nomem`

```swift
static let SQLITE_IOERR_NOMEM: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_rdlock`

```swift
static let SQLITE_IOERR_RDLOCK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_read`

```swift
static let SQLITE_IOERR_READ: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_rollback_atomic`

```swift
static let SQLITE_IOERR_ROLLBACK_ATOMIC: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_seek`

```swift
static let SQLITE_IOERR_SEEK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_shmlock`

```swift
static let SQLITE_IOERR_SHMLOCK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_shmmap`

```swift
static let SQLITE_IOERR_SHMMAP: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_shmopen`

```swift
static let SQLITE_IOERR_SHMOPEN: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_shmsize`

```swift
static let SQLITE_IOERR_SHMSIZE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_short_read`

```swift
static let SQLITE_IOERR_SHORT_READ: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_truncate`

```swift
static let SQLITE_IOERR_TRUNCATE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_unlock`

```swift
static let SQLITE_IOERR_UNLOCK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_vnode`

```swift
static let SQLITE_IOERR_VNODE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ioerr_write`

```swift
static let SQLITE_IOERR_WRITE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_locked`

```swift
static let SQLITE_LOCKED: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_locked_sharedcache`

```swift
static let SQLITE_LOCKED_SHAREDCACHE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_locked_vtab`

```swift
static let SQLITE_LOCKED_VTAB: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_mismatch`

```swift
static let SQLITE_MISMATCH: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_misuse`

```swift
static let SQLITE_MISUSE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_nolfs`

```swift
static let SQLITE_NOLFS: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_nomem`

```swift
static let SQLITE_NOMEM: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_notadb`

```swift
static let SQLITE_NOTADB: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_notfound`

```swift
static let SQLITE_NOTFOUND: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_notice`

```swift
static let SQLITE_NOTICE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_notice_recover_rollback`

```swift
static let SQLITE_NOTICE_RECOVER_ROLLBACK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_notice_recover_wal`

```swift
static let SQLITE_NOTICE_RECOVER_WAL: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ok`

```swift
static let SQLITE_OK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ok_load_permanently`

```swift
static let SQLITE_OK_LOAD_PERMANENTLY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_ok_symlink`

```swift
static let SQLITE_OK_SYMLINK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_perm`

```swift
static let SQLITE_PERM: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_protocol`

```swift
static let SQLITE_PROTOCOL: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_range`

```swift
static let SQLITE_RANGE: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_readonly`

```swift
static let SQLITE_READONLY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_readonly_cantinit`

```swift
static let SQLITE_READONLY_CANTINIT: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_readonly_cantlock`

```swift
static let SQLITE_READONLY_CANTLOCK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_readonly_dbmoved`

```swift
static let SQLITE_READONLY_DBMOVED: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_readonly_directory`

```swift
static let SQLITE_READONLY_DIRECTORY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_readonly_recovery`

```swift
static let SQLITE_READONLY_RECOVERY: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_readonly_rollback`

```swift
static let SQLITE_READONLY_ROLLBACK: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_row`

```swift
static let SQLITE_ROW: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_schema`

```swift
static let SQLITE_SCHEMA: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_toobig`

```swift
static let SQLITE_TOOBIG: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_warning`

```swift
static let SQLITE_WARNING: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `sqlite_warning_autoindex`

```swift
static let SQLITE_WARNING_AUTOINDEX: ResultCode
```

- **Symbol Kind:** property

- **Role Heading:** Type Property


---

## `~=(_:_:)-3zjeq`

> Returns true if the code on the left matches the code on the right.

```swift
static func ~= (pattern: ResultCode, code: ResultCode) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---

## `~=(_:_:)-7pido`

> Returns true if the code on the left matches the error on the right.

```swift
static func ~= (lhs: `Self`, rhs: Error) -> Bool
```

- **Symbol Kind:** op

- **Role Heading:** Operator


---
