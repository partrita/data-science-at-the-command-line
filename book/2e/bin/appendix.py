#!/usr/bin/env python3
from yaml import safe_load
from sys import stdout, stderr


def combine(items):
    if len(items) <= 2:
        return " and ".join(items)
    else:
        return ", ".join(items[:-1]) + ", and " + items[-1]


if __name__ == "__main__":

    stdout.write("""---
suppress-bibliography: true
---

```{r console_start, include=FALSE}
console_start()
```

```{console setup_history, include=FALSE}
 export CHAPTER="tools"
 export HISTFILE=/history/history_${CHAPTER}
 rm -f $HISTFILE
```


<!--A[appendix]
[[appendix-tools]]
A-->
# 명령줄 도구 목록 {-}

이것은 이 책에서 논의된 모든 명령줄 도구의 개요입니다.
여기에는 이진 실행 파일, 해석된 스크립트, Z 셸 내장 명령 및 키워드가 포함됩니다.
각 명령줄 도구에 대해 사용 가능하고 적절한 경우 다음 정보가 제공됩니다.

- 명령줄에 입력할 실제 명령
- 설명
- 책에서 사용된 버전
- 해당 버전이 출시된 연도
- 기본 작성자
- 자세한 정보를 찾을 수 있는 웹사이트
- 도움말을 얻는 방법
- 사용 예

여기에 나열된 모든 명령줄 도구는 Docker 이미지에 포함되어 있습니다.
설정 방법에 대한 지침은 [2장](#chapter-2-getting-started)을 참조하십시오.
오픈 소스 소프트웨어를 인용하는 것은 간단하지 않으며 일부 정보가 누락되거나 정확하지 않을 수 있습니다.

```{console, include=FALSE}
unalias csvlook
unalias parallel
```


""")

    with open("../tools.yml") as file:
        tools = safe_load(file)

    for i, (name, tool) in enumerate(sorted(tools.items(), key = lambda x: x[0].lower()), start=1):
        stderr.write(f"{i}: {name}\n")
        stdout.write(f"## {name} {{-}}\n\n")
        stdout.write(f"{tool['description']}.\n`{name}`\n")
        if tool.get("builtin", False):
            stdout.write(f"은 Z 셸 내장 명령입니다.\n")
        if "version" in tool:
            stdout.write(f"(버전 {tool['version']})\n")
        if "author" in tool:
            stdout.write(f"저자: {combine(tool['author'])} ({tool['year']}).\n")

        if "note" in tool:
            stdout.write(f"{tool['note']}.\n")
        if "url" in tool:
            stdout.write(f"자세한 정보: {tool['url']}.\n")

        stdout.write(f"\n```{{console {name}}}\n")
        stdout.write(f"type {name}\n")
        if "help" in tool:
            if tool["help"] == "man":
                stdout.write(f"man {name}")
            elif tool["help"] == "--help":
                stdout.write(f"{name} --help")
            else:
                stdout.write(f"{tool['help']}")
            stdout.write("#!enter=FALSE\nC-C#!literal=FALSE\n")
        if "example" in tool:
            stdout.write(f"{tool['example'].strip()}\n")
        stdout.write("```\n")
        stdout.write("\n\n")
