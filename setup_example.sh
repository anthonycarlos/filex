#!/bin/bash

rm -rf example
mkdir example
touch example/.hidden_file.pdf
touch example/.hidden-file.pdf
touch example/van_1234_20160102.pdf
touch example/van-2345_20170203.pdf
touch example/cgo0003_20050602.pdf
mkdir example/.hidden-level-dash
mkdir example/.hidden_level_underscore
mkdir example/level_2
touch example/level_2/.hidden_file.pdf
touch example/level_2/.hidden-file.pdf
touch example/level_2/van_4567_20160304.pdf
touch example/level_2/van-5678_20160405.pdf
touch example/level_2/cgo0003_20050603.pdf
mkdir example/level-3
touch example/level-3/van_6789_20160506.pdf
touch example/level-3/van-7890_20160607.pdf
touch example/level-3/cgo0003_20050604.pdf

ls -l example/
