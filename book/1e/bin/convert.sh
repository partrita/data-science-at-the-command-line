#!/usr/bin/env bash
# sed -re '/^\[\[/y/_/-/' |
asciidoc -b docbook -o - - |
iconv -t utf8 |
pandoc -f docbook -t markdown --wrap=none --atx-headers |    # markdown으로 변환
iconv -f utf-8 |
sed -re 's/``` \{.console\}/```\{bash, eval=FALSE\}/' |  # 코드 청크 유형 변경
# sed -re '/```\{bash\}/,/```/{/^(\$|>|(```))/!d}' |     # 코드 출력 삭제
sed -re 's/\\\[cite:([^\]+)\\\]/\[@\1\]/g' |       # 인용 수정
sed -re 's/\\\[citenp:([^\]+)\\\]/@\1/g' |         # 인용 수정
sed -re '/^#+/s/\{#(.*)\}$//' |                    # 제목 ID 제거
sed -re '/\*\*Caution\*\*/,/^$/{s/^> \*\*.*$/```\{block2, type="rmdcaution"\}/;s/^$/```\n/;s/^> ?//}' | # 노트, 팁, 주의 사항
sed -re '/\*\*Tip\*\*/,/^$/{s/^> \*\*.*$/```\{block2, type="rmdtip"\}/;s/^$/```\n/;s/^> ?//}' |
sed -re '/\*\*Note\*\*/,/^$/{s/^> \*\*.*$/```\{block2, type="rmdnote"\}/;s/^$/```\n/;s/^> ?//}' |
sed -re '/\*\*Important\*\*/,/^$/{s/^> \*\*.*$/```\{block2, type="rmdimportant"\}/;s/^$/```\n/;s/^> ?//}' |
sed -re '/^!\[/s/^!\[(.*)\]\((.*)\)/```\{r, echo=FALSE, fig.cap="\1", fig.align="center"\}\nknitr::include_graphics\("\2"\)\n```/' |  # 그림
sed -re 's/\[figure\\\_title\]\(\#([^\)]*)\)/Figure\n\\@ref\(fig:\1\)\n/g' | # 그림 참조
sed -re 's/\[example\\\_title\]\(\#([^\)]*)\)/Example\n\\@ref\(exm:\1\)\n/g' | # 예제 참조
sed -re '/^\\@ref/y/_/-/' | # 참조에서 밑줄을 대시로 바꾸기
sed -re '/\\\[render:/d' |
sed -re '/^-/{N;N;s/^\-(.*)\n\n\-(.*)$/\-\1\n\-\2/;}' | sed -re 'N;/^-/{N;N;s/^\-(.*)\n\n\-(.*)$/\-\1\n\-\2/;}' | # 목록의 빈 줄 수정 (죄송합니다)
sed -re 's/``` \{\.(.*)\}/```\{example, name=""\}\n```\n```\{\1, eval=FALSE\}/' | # 예제 만들기
cat
