---
suppress-bibliography: true
---







<!--A[appendix]
[[appendix-tools]]
A-->
# 커맨드 라인 도구 목록 {-}

이 장은 이 책에서 논의된 모든 커맨드 라인 도구들에 대한 개요입니다.
여기에는 바이너리 실행 파일, 인터프리터 스크립트, 그리고 Z Shell 빌트인(builtins) 및 키워드가 포함됩니다.
각 커맨드 라인 도구에 대해 가능한 경우 그리고 적절한 경우 다음과 같은 정보가 제공됩니다.

- 커맨드 라인에 입력할 실제 명령어
- 설명
- 책에서 사용된 버전
- 해당 버전이 출시된 연도
- 주요 저자
- 더 많은 정보를 찾을 수 있는 웹사이트
- 도움말을 얻는 방법
- 사용 예시

여기에 나열된 모든 커맨드 라인 도구는 Docker 이미지에 포함되어 있습니다.
설정 방법은 [2장](#chapter-2-getting-started)을 참조하십시오.
오픈 소스 소프트웨어를 인용하는 것은 간단하지 않으며, 일부 정보가 누락되었거나 정확하지 않을 수 있음에 유의하십시오.




## alias {-}

별칭을 정의하거나 표시합니다.
`alias`는 Z shell 빌트인입니다.


``` console
type alias
man zshbuiltins | grep -A 10 alias#!enter=FALSE
C-C#!literal=FALSE
alias l
alias python=python3
```


## awk {-}

패턴 스캐닝 및 텍스트 처리 언어입니다.
`awk` (버전 1.3.4), Mike D. Brennan 및 Thomas E. Dickey 제작 (2019).
더 많은 정보: https://invisible-island.net/mawk.


``` console
type awk
man awk#!enter=FALSE
C-C#!literal=FALSE
seq 5 | awk '{sum+=$1} END {print sum}'
```


## aws {-}

AWS 서비스를 관리하기 위한 통합 도구입니다.
`aws` (버전 2.1.32), Amazon Web Services 제작 (2021).
더 많은 정보: https://aws.amazon.com/cli.


``` console
type aws
aws --help#!enter=FALSE
C-C#!literal=FALSE
```


## bash {-}

GNU Bourne-Again SHell입니다.
`bash` (버전 5.0.17), Brian Fox 및 Chet Ramey 제작 (2019).
더 많은 정보: https://www.gnu.org/software/bash.


``` console
type bash
man bash#!enter=FALSE
C-C#!literal=FALSE
```


## bat {-}

구문 강조 및 Git 연동 기능이 있는 cat 클론입니다.
`bat` (버전 0.18.0), David Peter 제작 (2021).
더 많은 정보: https://github.com/sharkdp/bat.


``` console
type bat
man bat#!enter=FALSE
C-C#!literal=FALSE
```


## bc {-}

임의 정밀도 계산기 언어입니다.
`bc` (버전 1.07.1), Philip A. Nelson 제작 (2017).
더 많은 정보: https://www.gnu.org/software/bc.


``` console
type bc
man bc#!enter=FALSE
C-C#!literal=FALSE
bc -l <<< 'e(1)'
```


## body {-}

첫 번째 줄을 제외한 모든 줄에 명령을 적용합니다.
`body` (버전 0.1), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type body
seq 10 | header -a 'values' | body shuf
```


## cat {-}

파일들을 연결하여 표준 출력으로 인쇄합니다.
`cat` (버전 8.30), Torbjorn Granlund 및 Richard M. Stallman 제작 (2018).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type cat
man cat#!enter=FALSE
C-C#!literal=FALSE
cat *.log > all.log#!enter=FALSE
C-C#!literal=FALSE
```


## cd {-}

쉘 작업 디렉토리를 변경합니다.
`cd`는 Z shell 빌트인입니다.


``` console
type cd
man zshbuiltins | grep -A 10 cd#!enter=FALSE
C-C#!literal=FALSE
cd ~
pwd
cd ..
pwd
cd /data/ch01
```


## chmod {-}

파일 모드 비트를 변경합니다.
`chmod` (버전 8.30), David MacKenzie 및 Jim Meyering 제작 (2018).
저는 [4장](#chapter-4-creating-command-line-tools)에서 도구를 실행 가능하게 만들기 위해 `chmod`를 사용했습니다.
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type chmod
man chmod#!enter=FALSE
C-C#!literal=FALSE
chmod u+x script.sh#!enter=FALSE
C-C#!literal=FALSE
```


## cols {-}

일부 열에 명령을 적용합니다.
`cols` (버전 0.1), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type cols
```


## column {-}

목록을 여러 열로 나열합니다.
`column` (버전 2.36.1), Karel Zak 제작 (2021).
더 많은 정보: https://www.kernel.org/pub/linux/utils/util-linux.


``` console
type column
```


## cowsay {-}

말하는 소를 출력합니다. (설정 가능)
`cowsay` (버전 3.0.3), Tony Monroe 제작 (1999).
더 많은 정보: https://github.com/tnalpgge/rank-amateur-cowsay.


``` console
type cowsay
man cowsay#!enter=FALSE
C-C#!literal=FALSE
echo 'The command line is awesome!' | cowsay
```


## cp {-}

파일 및 디렉토리를 복사합니다.
`cp` (버전 8.30), Torbjorn Granlund, David MacKenzie 및 Jim Meyering 제작 (2018).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type cp
man cp#!enter=FALSE
C-C#!literal=FALSE
cp -r ~/Downloads/*.xlsx /data#!enter=FALSE
C-C#!literal=FALSE
```


## csv2vw {-}

CSV를 Vowpal Wabbit 형식으로 변환합니다.
`csv2vw` (버전 0.1), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type csv2vw
```


## csvcut {-}

CSV 파일을 필터링하고 자릅니다.
`csvcut` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvcut
csvcut --help#!enter=FALSE
C-C#!literal=FALSE
csvcut -c bill,tip /data/ch05/tips.csv | trim
```


## csvgrep {-}

CSV 파일을 검색합니다.
`csvgrep` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvgrep
csvgrep --help#!enter=FALSE
C-C#!literal=FALSE
```


## csvjoin {-}

지정된 열을 기준으로 CSV 파일을 병합합니다. (SQL 스타일 조인)
`csvjoin` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvjoin
csvjoin --help#!enter=FALSE
C-C#!literal=FALSE
```


## csvlook {-}

콘솔에서 CSV 파일을 Markdown 호환 고정폭 표로 렌더링합니다.
`csvlook` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvlook
csvlook --help#!enter=FALSE
C-C#!literal=FALSE
csvlook /data/ch05/tips.csv
```


## csvquote {-}

일반 유닉스 유틸리티가 CSV 데이터와 올바르게 작동하도록 설정합니다.
`csvquote` (버전 0.1), Dan Brown 제작 (2018).
더 많은 정보: https://github.com/dbro/csvquote.


``` console
type csvquote
```


## csvsort {-}

CSV 파일을 정렬합니다.
`csvsort` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvsort
csvsort --help#!enter=FALSE
C-C#!literal=FALSE
```


## csvsql {-}

CSV 파일에 대해 SQL 문을 실행합니다.
`csvsql` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvsql
csvsql --help#!enter=FALSE
C-C#!literal=FALSE
```


## csvstack {-}

여러 CSV 파일의 행을 쌓아 올립니다.
`csvstack` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvstack
csvstack --help#!enter=FALSE
C-C#!literal=FALSE
```


## csvstat {-}

CSV 파일의 각 열에 대한 기술 통계를 인쇄합니다.
`csvstat` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type csvstat
csvstat --help#!enter=FALSE
C-C#!literal=FALSE
```


## curl {-}

URL을 전송합니다.
`curl` (버전 7.68.0), Daniel Stenberg 제작 (2016).
더 많은 정보: https://curl.haxx.se.


``` console
type curl
man curl#!enter=FALSE
C-C#!literal=FALSE
```


## cut {-}

파일의 각 줄에서 섹션을 제거합니다.
`cut` (버전 8.30), David M. Ihnat, David MacKenzie 및 Jim Meyering 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type cut
man cut#!enter=FALSE
C-C#!literal=FALSE
```


## display {-}

X 서버에 이미지 또는 이미지 시퀀스를 표시합니다.
`display` (버전 6.9.10-23), ImageMagick Studio LLC 제작 (2019).
더 많은 정보: https://imagemagick.org.


``` console
type display
```


## dseq {-}

날짜 시퀀스를 생성합니다.
`dseq` (버전 0.1), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type dseq
dseq 3
```


## echo {-}

텍스트 한 줄을 표시합니다.
`echo` (버전 8.30), Brian Fox 및 Chet Ramey 제작 (2019).
리터럴 텍스트를 다음 도구의 표준 입력으로 사용하는 데 유용합니다.
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type echo
man echo#!enter=FALSE
C-C#!literal=FALSE
echo Hippopotomonstrosesquippedaliophobia | cowsay
echo -n Hippopotomonstrosesquippedaliophobia | wc -c
```


## env {-}

수정된 환경에서 프로그램을 실행합니다.
`env` (버전 8.30), Richard Mlynarik, David MacKenzie 및 Assaf Gordon 제작 (2018).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type env
man env#!enter=FALSE
C-C#!literal=FALSE
```


## export {-}

쉘 변수에 대해 내보내기(export) 속성을 설정합니다. 쉘 변수를 다른 커맨드 라인 도구에서 사용할 수 있게 만드는 데 유용합니다.
`export`는 Z shell 빌트인입니다.


``` console
type export
man zshbuiltins | grep -A 10 export#!enter=FALSE
C-C#!literal=FALSE
export PATH="$PATH:$HOME/bin"
```


## fc {-}

대화형 기록 메커니즘을 제어합니다.
`fc`는 Z shell 빌트인입니다.
저는 [4장](#chapter-4-creating-command-line-tools)에서 명령어를 `nano`에서 편집하기 위해 `fc`를 사용했습니다.


``` console
type fc
man zshbuiltins | grep -A 10 '^ *fc '#!enter=FALSE
C-C#!literal=FALSE
```


## find {-}

디렉토리 계층 구조에서 파일을 검색합니다.
`find` (버전 4.7.0), Eric B. Decker, James Youngman 및 Kevin Dalley 제작 (2019).
더 많은 정보: https://www.gnu.org/software/findutils.


``` console
type find
man find#!enter=FALSE
C-C#!literal=FALSE
find /data -type f -name '*.csv' -size -3
```


## fold {-}

지정된 너비에 맞춰 각 입력 줄을 감쌉니다(wrap).
`fold` (버전 8.30), David MacKenzie 제작 (2020).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type fold
man fold#!enter=FALSE
C-C#!literal=FALSE
```


## for {-}

목록의 각 멤버에 대해 명령을 실행합니다.
`for`는 Z shell 빌트인입니다.
[8장](#chapter-8-parallel-pipelines)에서 저는 `for` 대신 `parallel`을 사용할 때의 이점에 대해 논의합니다.


``` console
type for
man zshmisc | grep -EA 10 '^ *for '#!enter=FALSE
C-C#!literal=FALSE
for i in {A..C} "It's easy as" {1..3}; do echo $i; done
```


## fx {-}

대화형 JSON 뷰어입니다.
`fx` (버전 20.0.2), Anton Medvedev 제작 (2020).
더 많은 정보: https://github.com/antonmedv/fx.


``` console
type fx
fx --help#!enter=FALSE
C-C#!literal=FALSE
echo '[1,2,3]' | fx 'this.map(x => x * 2)'
```


## git {-}

분산 버전 관리 시스템입니다.
`git` (버전 2.25.1), Linus Torvalds 및 Junio C. Hamano 제작 (2021).
더 많은 정보: https://git-scm.com.


``` console
type git
man git#!enter=FALSE
C-C#!literal=FALSE
```


## grep {-}

패턴과 일치하는 줄을 출력합니다.
`grep` (버전 3.4), Jim Meyering 제작 (2019).
더 많은 정보: https://www.gnu.org/software/grep.


``` console
type grep
man grep#!enter=FALSE
C-C#!literal=FALSE
seq 100 | grep 3 | wc -l
```


## gron {-}

JSON을 검색(grep) 가능하게 만듭니다.
`gron` (버전 0.6.1), Tom Hudson 제작 (2021).
더 많은 정보: https://github.com/TomNomNom/gron.


``` console
type gron
man gron#!enter=FALSE
C-C#!literal=FALSE
```


## head {-}

파일의 앞부분을 출력합니다.
`head` (버전 8.30), David MacKenzie 및 Jim Meyering 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type head
man head#!enter=FALSE
C-C#!literal=FALSE
seq 100 | head -n 5
```


## header {-}

헤더 라인을 추가, 교체 및 삭제합니다.
`header` (버전 0.1), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type header
```


## history {-}

GNU History 라이브러리입니다.
`history` (버전 8.1), Brian Fox 및 Chet Ramey 제작 (2020).
더 많은 정보: https://www.gnu.org/software/bash.


``` console
type history
```


## hostname {-}

시스템의 호스트 이름을 표시하거나 설정합니다.
`hostname` (버전 3.23), Peter Tobias, Bernd Eckenfels 및 Michael Meskes 제작 (2021).
더 많은 정보: https://sourceforge.net/projects/net-tools/.


``` console
type hostname
man hostname#!enter=FALSE
C-C#!literal=FALSE
hostname
hostname -i
```


## in2csv {-}

일반적이지만 덜 멋진 테이블 데이터 형식을 CSV로 변환합니다.
`in2csv` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type in2csv
in2csv --help#!enter=FALSE
C-C#!literal=FALSE
```


## jq {-}

커맨드 라인용 JSON 프로세서입니다.
`jq` (버전 1.6), Stephen Dolan 제작 (2021).
더 많은 정보: https://stedolan.github.com/jq.


``` console
type jq
man jq#!enter=FALSE
C-C#!literal=FALSE
```


## json2csv {-}

JSON을 CSV로 변환합니다.
`json2csv` (버전 1.2.1), Jehiah Czebotar 제작 (2019).
더 많은 정보: https://github.com/jehiah/json2csv.


``` console
type json2csv
json2csv --help#!enter=FALSE
C-C#!literal=FALSE
```


## l {-}

디렉토리 내용을 긴 형식(long format)으로 나열합니다. 디렉토리는 파일보다 먼저 그룹화되고, 파일 크기는 읽기 쉬운 단위로 표시되며, 접근 권한도 포함됩니다.
`l` 제작자 미상 (1999).


``` console
type l
cd /data/ch03
ls
l
```


## less {-}

more의 반대입니다. (파일 내용을 페이지 단위로 보여주는 유틸리티)
`less` (버전 551), Mark Nudelman 제작 (2019).
더 많은 정보: https://www.greenwoodsoftware.com/less.


``` console
type less
man less#!enter=FALSE
C-C#!literal=FALSE
less README#!enter=FALSE
C-C#!literal=FALSE
```


## ls {-}

디렉토리 내용을 나열합니다.
`ls` (버전 8.30), Richard M. Stallman 및 David MacKenzie 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type ls
man ls#!enter=FALSE
C-C#!literal=FALSE
ls /data
```


## make {-}

컴퓨터 프로그램을 유지 관리하기 위한 프로그램입니다.
`make` (버전 4.3), Stuart I. Feldman 제작 (2020).
더 많은 정보: https://www.gnu.org/software/make.


``` console
type make
man make#!enter=FALSE
C-C#!literal=FALSE
make sandwich#!enter=FALSE
C-C#!literal=FALSE
```


## man {-}

시스템 참조 매뉴얼에 대한 인터페이스입니다. (도움말 시스템)
`man` (버전 2.9.1), John W. Eaton 및 Colin Watson 제작 (2020).
더 많은 정보: https://nongnu.org/man-db.


``` console
type man
man man#!enter=FALSE
C-C#!literal=FALSE
man excel
```


## mkdir {-}

디렉토리를 생성합니다.
`mkdir` (버전 8.30), David MacKenzie 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type mkdir
man mkdir#!enter=FALSE
C-C#!literal=FALSE
mkdir -p /data/ch{01..10}#!enter=FALSE
C-C#!literal=FALSE
```


## mv {-}

파일을 이동하거나 이름을 변경합니다.
`mv` (버전 8.30), Mike Parker, David MacKenzie 및 Jim Meyering 제작 (2020).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type mv
man mv#!enter=FALSE
C-C#!literal=FALSE
mv results{,.bak}#!enter=FALSE
C-C#!literal=FALSE
```


## nano {-}

Pico에서 영감을 받은 Nano's ANOther 에디터입니다.
`nano` (버전 5.4), Benno Schulenberg 외 다수 제작 (2020).
더 많은 정보: https://nano-editor.org.


``` console
type nano
```


## nl {-}

파일의 줄에 번호를 매깁니다.
`nl` (버전 8.30), Scott Bartram 및 David MacKenzie 제작 (2020).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type nl
man nl#!enter=FALSE
C-C#!literal=FALSE
nl /data/ch05/alice.txt | head
```


## parallel {-}

동일 노드 또는 원격 노드에서 병렬로 작업을 빌드하고 실행합니다.
`parallel` (버전 20161222), Ole Tange 제작 (2016).
더 많은 정보: https://www.gnu.org/software/parallel.


``` console
type parallel
man parallel#!enter=FALSE
C-C#!literal=FALSE
seq 3 | parallel "echo Processing file {}.csv"
```


## paste {-}

파일의 줄을 병합합니다.
`paste` (버전 8.30), David M. Ihnat 및 David MacKenzie 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type paste
man paste#!enter=FALSE
C-C#!literal=FALSE
paste -d, <(seq 5) <(dseq 5)
seq 5 | paste -sd+
```


## pbc {-}

병렬 bc(병렬 계산기)입니다.
`pbc` Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type pbc
seq 3 | pbc '{1}^2'
```


## pip {-}

Python 패키지를 설치하고 관리하기 위한 도구입니다.
`pip` (버전 20.0.2), PyPA 제작 (2020).
더 많은 정보: https://pip.pypa.io.


``` console
type pip
man pip#!enter=FALSE
C-C#!literal=FALSE
pip install pandas#!enter=FALSE
C-C#!literal=FALSE
pip freeze | grep sci
```


## pup {-}

커맨드 라인에서 HTML을 파싱합니다.
`pup` (버전 0.4.0), Eric Chiang 제작 (2016).
더 많은 정보: https://github.com/EricChiang/pup.


``` console
type pup
pup --help#!enter=FALSE
C-C#!literal=FALSE
```


## pwd {-}

작업 디렉토리의 이름을 인쇄합니다.
`pwd` (버전 8.30), Jim Meyering 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type pwd
man pwd#!enter=FALSE
C-C#!literal=FALSE
cd ~
pwd
```


## python {-}

인터프리터 방식의 대화형 객체 지향 프로그래밍 언어입니다.
`python` (버전 3.8.5), The Python Software Foundation 제작 (2021).
더 많은 정보: https://www.python.org.


``` console
type python
man python#!enter=FALSE
C-C#!literal=FALSE
```


## R {-}

통계 컴퓨팅을 위한 언어 및 환경입니다.
`R` (버전 4.0.4), The R Foundation for Statistical Computing 제작 (2021).
더 많은 정보: https://www.r-project.org.


``` console
type R
man R#!enter=FALSE
C-C#!literal=FALSE
```


## rev {-}

각 줄의 문자 순서를 반대로 바꿉니다.
`rev` (버전 2.36.1), Karel Zak 제작 (2021).
더 많은 정보: https://www.kernel.org/pub/linux/utils/util-linux.


``` console
type rev
echo 'Satire: Veritas' | rev
echo 'Ça va?' | rev | cut -c 2- | rev
```


## rm {-}

파일이나 디렉토리를 제거합니다.
`rm` (버전 8.30), Paul Rubin 외 다수 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type rm
man rm#!enter=FALSE
C-C#!literal=FALSE
rm *.old#!enter=FALSE
C-C#!literal=FALSE
```


## rush {-}

쉘에서 실행하는 R 한 줄짜리 명령어 도구입니다.
`rush` (버전 0.1), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/rush.


``` console
type rush
rush --help#!enter=FALSE
C-C#!literal=FALSE
rush run '6*7'
rush run --tidyverse 'filter(starwars, species == "Human") %>% select(name)'
```


## sample {-}

특정 확률, 지정된 지연 시간 또는 특정 지속 시간 동안 표준 입력의 줄을 필터링합니다.
`sample` (버전 0.2.4), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/sample.


``` console
type sample
sample --help#!enter=FALSE
C-C#!literal=FALSE
seq 1000 | sample -r 0.01 | trim 5
```


## scp {-}

OpenSSH 보안 파일 복사 도구입니다.
`scp` (버전 1:8.2p1-4ubuntu0.2), Timo Rinne 및 Tatu Ylonen 제작 (2019).
더 많은 정보: https://www.openssh.com.


``` console
type scp
man scp#!enter=FALSE
C-C#!literal=FALSE
```


## sed {-}

텍스트를 필터링하고 변환하기 위한 스트림 에디터입니다.
`sed` (버전 4.7), Jay Fenlason 외 다수 제작 (2018).
더 많은 정보: https://www.gnu.org/software/sed.


``` console
type sed
man sed#!enter=FALSE
C-C#!literal=FALSE
```


## seq {-}

숫자 시퀀스를 인쇄합니다.
`seq` (버전 8.30), Ulrich Drepper 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type seq
man seq#!enter=FALSE
C-C#!literal=FALSE
seq 3
seq 10 5 20
```


## servewd {-}

간단한 HTTP 서버를 사용하여 현재 작업 디렉토리를 서비스합니다.
`servewd` (버전 0.1), Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type servewd
servewd --help#!enter=FALSE
C-C#!literal=FALSE
cd /data && servewd 8000#!enter=FALSE
C-C#!literal=FALSE
```


## shuf {-}

무작위 순열을 생성합니다.
`shuf` (버전 8.30), Paul Eggert 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type shuf
man shuf#!enter=FALSE
C-C#!literal=FALSE
echo {a..z} | tr ' ' '\n' | shuf | trim 5
shuf -i 1-100 | trim 5
```


## skll {-}

SciKit-Learn Laboratory입니다.
`skll` (버전 2.5.0), Educational Testing Service 제작 (2021).
실제 도구는 `run_experiment`입니다. 저는 기억하기 더 쉽기 때문에 별칭 `skll`을 사용합니다.
더 많은 정보: https://skll.readthedocs.org.


``` console
type skll
skll --help#!enter=FALSE
C-C#!literal=FALSE
```


## sort {-}

텍스트 파일의 줄을 정렬합니다.
`sort` (버전 8.30), Mike Haertel 및 Paul Eggert 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type sort
man sort#!enter=FALSE
C-C#!literal=FALSE
echo '3\n7\n1\n3' | sort
```


## split {-}

파일을 여러 조각으로 나눕니다.
`split` (버전 8.30), Torbjorn Granlund 및 Richard M. Stallman 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type split
man split#!enter=FALSE
C-C#!literal=FALSE
```


## sponge {-}

표준 입력을 흡수하여 파일에 씁니다.
`sponge` (버전 0.65), Colin Watson 및 Tollef Fog Heen 제작 (2021).
단일 파이프라인에서 동일한 파일을 읽고 쓰고 싶을 때 유용합니다.
더 많은 정보: https://joeyh.name/code/moreutils.


``` console
type sponge
```


## sql2csv {-}

데이터베이스에서 SQL 쿼리를 실행하고 결과를 CSV 파일로 출력합니다.
`sql2csv` (버전 1.0.5), Christopher Groskopf 제작 (2020).
더 많은 정보: https://csvkit.rtfd.org.


``` console
type sql2csv
sql2csv --help#!enter=FALSE
C-C#!literal=FALSE
```


## ssh {-}

OpenSSH 원격 로그인 클라이언트입니다.
`ssh` (버전 1:8.2p1-4ubuntu0.2), Tatu Ylonen 외 다수 제작 (2020).
더 많은 정보: https://www.openssh.com.


``` console
type ssh
man ssh#!enter=FALSE
C-C#!literal=FALSE
```


## sudo {-}

다른 사용자로 명령을 실행합니다.
`sudo` (버전 1.8.31), Todd C. Miller 제작 (2019).
더 많은 정보: https://www.sudo.ws.


``` console
type sudo
man sudo#!enter=FALSE
C-C#!literal=FALSE
```


## tail {-}

파일의 마지막 부분을 출력합니다.
`tail` (버전 8.30), Paul Rubin 외 다수 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type tail
man tail#!enter=FALSE
C-C#!literal=FALSE
```


## tapkee {-}

효율적인 차원 축소 라이브러리입니다.
`tapkee` (버전 1.2), Sergey Lisitsyn 외 다수 제작 (2013).
더 많은 정보: http://tapkee.lisitsyn.me.


``` console
type tapkee
tapkee --help#!enter=FALSE
C-C#!literal=FALSE
```


## tar {-}

아카이빙 유틸리티입니다.
`tar` (버전 1.30), John Gilmore 및 Jay Fenlason 제작 (2014).
더 많은 정보: https://www.gnu.org/software/tar.


``` console
type tar
man tar#!enter=FALSE
C-C#!literal=FALSE
```


## tee {-}

표준 입력에서 읽어 표준 출력과 파일에 씁니다.
`tee` (버전 8.30), Mike Parker 외 다수 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type tee
man tee#!enter=FALSE
C-C#!literal=FALSE
```


## telnet {-}

TELNET 프로토콜에 대한 사용자 인터페이스입니다.
`telnet` (버전 0.17), Mats Erik Andersson 외 다수 제작 (1999).
더 많은 정보: http://www.hcs.harvard.edu/~dholland/computers/netkit.html.


``` console
type telnet
```


## tldr {-}

콘솔 명령에 대한 협업 치트 시트입니다.
`tldr` (버전 3.3.7), Owen Voke 제작 (2021).
더 많은 정보: https://tldr.sh.


``` console
type tldr
tldr --help#!enter=FALSE
C-C#!literal=FALSE
tldr tar | trim
```


## tr {-}

문자를 변환하거나 삭제합니다.
`tr` (버전 8.30), Jim Meyering 제작 (2018).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type tr
man tr#!enter=FALSE
C-C#!literal=FALSE
```


## tree {-}

디렉토리 내용을 트리 형식으로 나열합니다.
`tree` (버전 1.8.0), Steve Baker 제작 (2018).
더 많은 정보: https://launchpad.net/ubuntu/+source/tree.


``` console
type tree
man tree#!enter=FALSE
C-C#!literal=FALSE
tree / | trim
```


## trim {-}

출력을 지정된 높이와 너비로 자릅니다.
`trim` Jeroen Janssens 제작 (2021).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type trim
echo {a..z}-{0..9} | fold | trim 5 60
```


## ts {-}

입력에 타임스탬프를 추가합니다.
`ts` (버전 0.65), Joey Hess 제작 (2021).
더 많은 정보: https://joeyh.name/code/moreutils.


``` console
type ts
echo seq 5 | sample -d 500 | ts
```


## type {-}

커맨드 라인 도구의 유형과 위치를 표시합니다.
`type`은 Z shell 빌트인입니다.


``` console
type type
man zshbuiltins | grep -A 10 '^ *type '#!enter=FALSE
C-C#!literal=FALSE
```


## uniq {-}

중복된 줄을 보고하거나 누락시킵니다.
`uniq` (버전 8.30), Richard M. Stallman 및 David MacKenzie 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type uniq
man uniq#!enter=FALSE
C-C#!literal=FALSE
```


## unpack {-}

일반적인 파일 형식의 압축을 해제합니다.
`unpack` (버전 0.1), Patrick Brisbin 제작 (2013).
더 많은 정보: https://github.com/jeroenjanssens/dsutils.


``` console
type unpack
```


## unrar {-}

rar 아카이브에서 파일을 추출합니다.
`unrar` (버전 0.0.1), Ben Asselstine 외 다수 제작 (2014).
더 많은 정보: http://home.gna.org/unrar.


``` console
type unrar
man unrar#!enter=FALSE
C-C#!literal=FALSE
```


## unzip {-}

ZIP 아카이브의 압축 파일을 나열, 테스트 및 추출합니다.
`unzip` (버전 6.0), Samuel H. Smith 외 다수 제작 (2009).
더 많은 정보: http://www.info-zip.org/pub/infozip.


``` console
type unzip
man unzip#!enter=FALSE
C-C#!literal=FALSE
```


## vw {-}

온라인 학습을 위한 빠른 머신러닝 라이브러리입니다.
`vw` (버전 8.10.1), John Langford 제작 (2021).
더 많은 정보: https://vowpalwabbit.org.


``` console
type vw
vw --help --quiet#!enter=FALSE
C-C#!literal=FALSE
```


## wc {-}

각 파일의 줄 바꿈, 단어 및 바이트 수를 인쇄합니다.
`wc` (버전 8.30), Paul Rubin 및 David MacKenzie 제작 (2019).
더 많은 정보: https://www.gnu.org/software/coreutils.


``` console
type wc
man wc#!enter=FALSE
C-C#!literal=FALSE
```


## which {-}

명령어의 위치를 찾습니다.
`which` (버전 0.1) 제작자 미상 (2016).
더 많은 정보: .


``` console
type which
man which#!enter=FALSE
C-C#!literal=FALSE
```


## xml2json {-}

xml-mapping을 사용하여 XML 입력을 JSON 출력으로 변환합니다.
`xml2json` (버전 0.0.3), François Parmentier 제작 (2016).
더 많은 정보: https://github.com/parmentf/xml2json.


``` console
type xml2json
```


## xmlstarlet {-}

커맨드 라인용 XML/XSLT 툴킷입니다.
`xmlstarlet` (버전 1.6.1), Dagobert Michelsen 외 다수 제작 (2019).
더 많은 정보: https://sourceforge.net/projects/xmlstar.


``` console
type xmlstarlet
man xmlstarlet#!enter=FALSE
C-C#!literal=FALSE
```


## xsv {-}

Rust로 작성된 빠른 CSV 커맨드 라인 툴킷입니다.
`xsv` (버전 0.13.0), Andrew Gallant 제작 (2018).
더 많은 정보: https://github.com/BurntSushi/xsv.


``` console
type xsv
xsv --help#!enter=FALSE
C-C#!literal=FALSE
```


## zcat {-}

파일의 압축을 해제하여 표준 출력으로 연결합니다.
`zcat` (버전 1.10), Paul Eggert 제작 (2021).
더 많은 정보: https://www.nongnu.org/zutils/zutils.html.


``` console
type zcat
man zcat#!enter=FALSE
C-C#!literal=FALSE
```


## zsh {-}

Z 쉘입니다.
`zsh` (버전 5.8), Paul Falstad 및 Peter Stephenson 제작 (2020).
더 많은 정보: https://www.zsh.org.


``` console
type zsh
man zsh#!enter=FALSE
C-C#!literal=FALSE
```


