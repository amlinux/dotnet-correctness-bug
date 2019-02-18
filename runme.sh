#!/bin/bash
set -e

cp test-a.cs test.cs
bazel test --test_output=streamed :test | egrep --color 'Output from test .'
# Expected output: Output from test A
# Actual output: Output from test A

cp test-b.cs test.cs
bazel test --test_output=streamed :test | egrep --color 'Output from test .'
# Expected output: Output from test B
# Actual output: Output from test A  <<<<<<<<<<<<<<< BUG
