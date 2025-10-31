#!/usr/bin/env python3
#
# script to validate .gitlab-ci.yml
#
import sys
import gitlab


def main():
    access_token = ""
    yml = ""
    with open("/home/riley/commands/gitlab_token") as f:
        access_token = "".join(f.read().split())

    with open(sys.argv[1]) as f:
        yml = f.read()

    git = gitlab.Gitlab("https://source.raven.engineering", private_token=access_token)
    git.auth()

    result = git.ci_lint.create({"content": yml})

    if not result.valid:
        print("File Invalid!")
        print(result.errors)
    else:
        print("File Valid!")


if __name__ == "__main__":
    main()
