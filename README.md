Illustrative reproducer for ...

How to reproduce
```shell
$(shell) run.sh
```

then open `htmlcov/index.html` and compare with terminal outputs.
I ran this with Python 3.12.3 on macOS (ARM).

<details><summary>Output from `coverage debug sys`</summary>

```
-- sys -------------------------------------------------------
               coverage_version: 7.5.1
                coverage_module: /Users/clm/dev/reprod_coverage_simple/.venv/lib/python3.12/site-packages/coverage/__init__.py
                           core: -none-
                        CTracer: available
           plugins.file_tracers: -none-
            plugins.configurers: -none-
      plugins.context_switchers: -none-
              configs_attempted: /Users/clm/dev/reprod_coverage_simple/.coveragerc
                   configs_read: /Users/clm/dev/reprod_coverage_simple/.coveragerc
                    config_file: /Users/clm/dev/reprod_coverage_simple/.coveragerc
                config_contents: b'[report]\nskip_covered=true\n'
                      data_file: -none-
                         python: 3.12.3 (main, May 10 2024, 07:52:50) [Clang 15.0.0 (clang-1500.3.9.4)]
                       platform: macOS-14.5-arm64-arm-64bit
                 implementation: CPython
                     executable: /Users/clm/dev/reprod_coverage_simple/.venv/bin/python
                   def_encoding: utf-8
                    fs_encoding: utf-8
                            pid: 22284
                            cwd: /Users/clm/dev/reprod_coverage_simple
                           path: /Users/clm/dev/reprod_coverage_simple/.venv/bin
                                 /Users/clm/.pyenv/versions/3.12.3/lib/python312.zip
                                 /Users/clm/.pyenv/versions/3.12.3/lib/python3.12
                                 /Users/clm/.pyenv/versions/3.12.3/lib/python3.12/lib-dynload
                                 /Users/clm/dev/reprod_coverage_simple/.venv/lib/python3.12/site-packages
                    environment: HOME = /Users/clm
                                 PYENV_DIR = /Users/clm/dev/reprod_coverage_simple
                                 PYENV_HOOK_PATH = /Users/clm/.pyenv/pyenv.d:/opt/homebrew/Cellar/pyenv/2.4.1/pyenv.d:/opt/homebrew/etc/pyenv.d:/etc/pyenv.d:/usr/lib/pyenv/hooks
                                 PYENV_ROOT = /Users/clm/.pyenv
                                 PYENV_SHELL = zsh
                                 PYENV_VERSION = 3.12.3:3.11.9:3.10.14:3.9.19:3.8.19:3.7.17:3.6.15:pypy3.10-7.3.15:3.13.0b1
                                 PYENV_VIRTUALENV_INIT = 1
                   command_line: /Users/clm/dev/reprod_coverage_simple/.venv/bin/coverage debug sys
         sqlite3_sqlite_version: 3.43.2
             sqlite3_temp_store: 0
        sqlite3_compile_options: ATOMIC_INTRINSICS=1, BUG_COMPATIBLE_20160819, CCCRYPT256,
                                 COMPILER=clang-15.0.0, DEFAULT_AUTOVACUUM, DEFAULT_CACHE_SIZE=2000,
                                 DEFAULT_CKPTFULLFSYNC, DEFAULT_FILE_FORMAT=4,
                                 DEFAULT_JOURNAL_SIZE_LIMIT=32768, DEFAULT_LOOKASIDE=1200,102,
                                 DEFAULT_MEMSTATUS=0, DEFAULT_MMAP_SIZE=0, DEFAULT_PAGE_SIZE=4096,
                                 DEFAULT_PCACHE_INITSZ=20, DEFAULT_RECURSIVE_TRIGGERS,
                                 DEFAULT_SECTOR_SIZE=4096, DEFAULT_SYNCHRONOUS=2,
                                 DEFAULT_WAL_AUTOCHECKPOINT=1000, DEFAULT_WAL_SYNCHRONOUS=1,
                                 DEFAULT_WORKER_THREADS=0, DQS=3, ENABLE_API_ARMOR, ENABLE_BYTECODE_VTAB,
                                 ENABLE_COLUMN_METADATA, ENABLE_DBSTAT_VTAB, ENABLE_FTS3,
                                 ENABLE_FTS3_PARENTHESIS, ENABLE_FTS3_TOKENIZER, ENABLE_FTS4, ENABLE_FTS5,
                                 ENABLE_LOCKING_STYLE=1, ENABLE_MATH_FUNCTIONS, ENABLE_NORMALIZE,
                                 ENABLE_PREUPDATE_HOOK, ENABLE_RTREE, ENABLE_SESSION, ENABLE_SNAPSHOT,
                                 ENABLE_SQLLOG, ENABLE_STMT_SCANSTATUS, ENABLE_UNKNOWN_SQL_FUNCTION,
                                 ENABLE_UPDATE_DELETE_LIMIT, HAS_CODEC_RESTRICTED, HAVE_ISNAN,
                                 MALLOC_SOFT_LIMIT=1024, MAX_ATTACHED=10, MAX_COLUMN=2000,
                                 MAX_COMPOUND_SELECT=500, MAX_DEFAULT_PAGE_SIZE=8192, MAX_EXPR_DEPTH=1000,
                                 MAX_FUNCTION_ARG=127, MAX_LENGTH=2147483645, MAX_LIKE_PATTERN_LENGTH=50000,
                                 MAX_MMAP_SIZE=1073741824, MAX_PAGE_COUNT=1073741823, MAX_PAGE_SIZE=65536,
                                 MAX_SQL_LENGTH=1000000000, MAX_TRIGGER_DEPTH=1000,
                                 MAX_VARIABLE_NUMBER=500000, MAX_VDBE_OP=250000000, MAX_WORKER_THREADS=8,
                                 MUTEX_UNFAIR, OMIT_AUTORESET, OMIT_LOAD_EXTENSION, STMTJRNL_SPILL=131072,
                                 SYSTEM_MALLOC, TEMP_STORE=1, THREADSAFE=2, USE_URI
```

</details>