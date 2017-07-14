# filex

An Ex command for the file system

The filex command is meant to make it easy to replace underscores in
filenames with dashes, but can be generalized to replace any regex
matches.

  * Recursion (-r) is optional and turned off by default. If recursion is specified, then the command will recurse into nested directories.
  * Dry-run (-d) is optional and turned off by default. If dry-run is specified, the command will display all matches and what the changes would be, but will not actually change any filenames.

```bash
$ filex -r -d s/_/-
```

