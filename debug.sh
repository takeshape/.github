#!/bin/bash

branch_prefix="issue-"
issue_number=7
issue_title='[BUG] this is a \\'TEST\\' to see — how CIB___----works'
issue_title=`echo "${issue_title}" \
| tr '[:upper:]' '[:lower:]' \
| sed -E 's/^\s+//' -E 's/\s+$//' \
| perl -ne 's/(?![-\/])[\W]+/_/g; print;' \
| sed -E 's/[\/]+$//' \
| sed -e 's/^_*//' -e 's/_*$//'`

# function makeGitSafe {
#   sed /(?![-/])[\W]+/g
#   const result = trim(s, ' ').replace(regexp, '_').replace(/[/]+$/, '')
#   return trim(result, '_')
# }

echo " ::set-output name=issue-branch-name::${branch_prefix}${issue_number}/${issue_title//[^0-9a-zA-Z\-]/_}"



echo "${branch_prefix}${issue_number}/${issue_title//(?![-/])[\W]+/_}"
echo "issue-7/bug_this_is_a_test_to_see_how_cib__----works"