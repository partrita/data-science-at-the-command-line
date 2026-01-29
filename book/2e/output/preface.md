---
suppress-bibliography: true
---


<!--A[preface]
A-->
# 서문 {-}

데이터 과학은 일하기에 정말 흥미로운 분야입니다.
또한 여전히 상대적으로 젊은 분야이기도 하죠.
불행하게도 많은 사람들과 기업들이 데이터 과학이 제기하는 문제들을 해결하려면 새로운 기술이 필요하다고 믿습니다.
하지만 이 책에서 보여주듯이, 많은 일들이 커맨드 라인을 사용함으로써 해결될 수 있으며, 때로는 훨씬 더 효율적인 방식으로 이루어집니다.

박사 과정 동안 저는 서서히 마이크로소프트 윈도우에서 리눅스로 사용 환경을 옮겼습니다.
이 전환이 처음에는 조금 두려웠기 때문에, 두 운영체제를 나란히 설치하는 방식(듀얼 부트라고 알려진)으로 시작했습니다.
결국 윈도우와 리눅스를 왔다 갔다 하려는 욕구는 사라졌고, 어느 시점에는 나만의 맞춤형 리눅스 머신을 처음부터 빌드할 수 있는 아치 리눅스(Arch Linux)를 만지작거리기도 했습니다.
주어지는 것은 오직 커맨드 라인뿐이며, 그것으로 무엇을 할지는 여러분에게 달려 있습니다.
필요에 의해 저는 빠르게 커맨드 라인 사용에 익숙해졌습니다.
결국 여가 시간이 더 소중해지면서, 사용하기 쉽고 커뮤니티가 큰 우분투(Ubuntu)라는 리눅스 배포판에 정착하게 되었습니다.
하지만 여전히 제가 대부분의 시간을 보내는 곳은 커맨드 라인입니다.

사실 제가 커맨드 라인이 단순히 소프트웨어를 설치하고, 시스템을 설정하고, 파일을 검색하는 용도만이 아니라는 것을 깨달은 지는 그리 오래되지 않았습니다.
저는 `cut`, `sort`, `sed`와 같은 도구들을 배우기 시작했습니다.
이것들은 데이터를 입력받아 무언가를 수행하고 결과를 출력하는 커맨드 라인 도구들의 예시입니다.
우분투에는 이런 도구들이 꽤 많이 포함되어 있습니다.
이 작은 도구들을 결합했을 때의 잠재력을 이해하고 나자, 저는 완전히 매료되었습니다.

박사 학위를 받은 후 데이터 과학자가 되었을 때, 저는 가능한 한 이 방식을 데이터 과학에 사용하고 싶었습니다.
`xml2json`, `jq`, `json2csv`와 같은 몇 가지 새로운 오픈 소스 커맨드 라인 도구들 덕분에 웹사이트 스크래핑이나 대량의 JSON 데이터 처리와 같은 작업에도 커맨드 라인을 사용할 수 있었습니다.

2013년 9월, 저는 [데이터 과학을 위한 7가지 커맨드 라인 도구](http://www.jeroenjanssens.com/2013/09/19/seven-command-line-tools-for-data-science.html)라는 제목의 블로그 포스트를 작성하기로 결심했습니다.
놀랍게도 이 블로그 포스트는 꽤 많은 관심을 받았고, 다른 커맨드 라인 도구들에 대한 수많은 제안을 받았습니다.
저는 이 블로그 포스트를 책으로 만들 수 있을지 궁금해지기 시작했습니다.
약 10개월 후, 많은 유능한 분들의 도움(감사의 글 참조)으로 그 대답이 '예'가 되어 기뻤습니다.

제가 이런 개인적인 이야기를 공유하는 것은 이 책이 어떻게 탄생했는지 여러분이 알아야 한다고 생각해서라기보다, 저 역시 커맨드 라인을 배워야만 했다는 사실을 알려드리고 싶기 때문입니다.
커맨드 라인은 그래픽 사용자 인터페이스(GUI)를 사용하는 것과 매우 다르기 때문에 처음에는 무섭게 느껴질 수 있습니다.
하지만 제가 배울 수 있었다면 여러분도 할 수 있습니다.
현재 사용하는 운영체제가 무엇이든, 현재 데이터를 어떻게 다루든 관계없이 이 책을 읽고 나면 커맨드 라인에서 데이터 과학을 할 수 있게 될 것입니다.
이미 커맨드 라인에 익숙하거나 쉘 스크립트로 꿈을 꿀 정도인 분들이라도, 다음 데이터 과학 프로젝트에 사용할 만한 흥미로운 팁이나 도구를 몇 가지 발견하게 될 것입니다.


## 이 책에서 기대할 수 있는 것 {-}

이 책에서 우리는 데이터를 획득(obtain), 정제(scrub), 탐색(explore), 모델링(model)할 것입니다. 그것도 아주 많이요.
이 책은 이러한 데이터 과학 작업 자체를 어떻게 하면 *더 잘* 할 수 있는지에 대한 책은 아닙니다.
예를 들어 어떤 통계 검정을 언제 적용해야 하는지나 데이터를 어떻게 가장 잘 시각화할 것인지를 논하는 훌륭한 리소스들은 이미 많이 있습니다.
대신, 이 실무 중심의 책은 커맨드 라인에서 이러한 데이터 과학 작업을 수행하는 방법을 가르쳐줌으로써 여러분을 더 *효율적*이고 *생산적*이게 만드는 것을 목표로 합니다.

이 책에서는 90개가 넘는 커맨드 라인 도구를 다루지만, 가장 중요한 것은 도구 그 자체가 아닙니다.
어떤 도구들은 아주 오랫동안 존재해 왔고, 어떤 도구들은 더 나은 것으로 대체될 것입니다.
여러분이 이 글을 읽는 동안에도 새로운 커맨드 라인 도구들이 만들어지고 있습니다.
지난 몇 년 동안 저는 놀라운 커맨드 라인 도구들을 많이 발견했습니다.
안타깝게도 그중 일부는 너무 늦게 발견되어 이 책에 포함되지 못했습니다.
요컨대, 커맨드 라인 도구는 생겨나고 사라집니다.
하지만 그것으로 괜찮습니다.

가장 중요한 것은 도구, 파이프, 그리고 데이터를 다루는 그 밑바탕의 아이디어입니다.
대부분의 커맨드 라인 도구는 한 가지 일을 하고 그것을 아주 잘 수행합니다.
이것은 책의 여러 곳에서 등장하는 유닉스 철학의 일부이기도 합니다.
일단 커맨드 라인에 익숙해지고, 도구들을 결합하는 방법을 알고, 심지어 새로운 도구를 만들 수 있게 된다면, 여러분은 매우 귀중한 기술을 갖게 된 것입니다.


## 2판의 변경 사항 {-}

기술로서의 커맨드 라인과 그 작동 방식은 시대를 초월하지만, 1판에서 다루었던 일부 도구들은 더 새로운 도구들로 대체되거나(`csvkit`은 대개 `xsv`로 대체되었습니다), 개발자에 의해 방치되었거나(`drake`), 혹은 최적이 아닌 선택이었던 것들(`weka`)이 있었습니다.
2014년 10월 1판이 출간된 이후 저는 스스로의 경험이나 독자들의 유용한 피드백을 통해 많은 것을 배웠습니다.
이 책이 두 주제의 교차점에 있는 틈새 분야를 다루고 있음에도 불구하고, 거의 매일 제가 받는 수많은 긍정적인 메시지들이 증명하듯 데이터 과학 커뮤니티의 꾸준한 관심이 이어지고 있습니다.
1판을 업데이트함으로써 저는 이 책이 앞으로 최소 5년 동안은 유효한 가치를 지니기를 바랍니다.
다음은 제가 수정한 주요 변경 사항 목록입니다.

* 가능한 한 `csvkit`을 `xsv`로 교체했습니다. `xsv`는 CSV 파일을 다루는 훨씬 빠른 대안입니다.
* 2.2절과 3.2절에서 VirtualBox 이미지를 Docker 이미지로 대체했습니다. Docker는 격리된 환경을 실행하는 데 있어 VirtualBox보다 빠르고 가벼운 방식입니다.
* HTML을 다루기 위해 `scrape` 대신 `pup`을 사용합니다. `scrape`은 제가 직접 만든 파이썬 도구입니다. `pup`은 훨씬 빠르고 기능이 많으며 설치가 더 쉽습니다.
* [6장](#chapter-6-project-management-with-make)을 처음부터 다시 썼습니다. 프로젝트 관리를 위해 `drake` 대신 `make`를 사용합니다. `drake`는 더 이상 유지보수되지 않으며 `make`는 훨씬 성숙하고 개발자들에게 매우 인기가 있습니다.
* `Rio`를 `rush`로 대체했습니다. `Rio`는 제가 직접 만든 투박한 Bash 스크립트였습니다. `rush`는 커맨드 라인에서 R을 사용하는 훨씬 더 안정적이고 유연한 방식인 R 패키지입니다.
* [9장](#chapter-9-modeling-data)에서 Weka와 BigML을 Vowpal Wabbit(`vw`)으로 대체했습니다. Weka는 오래되었고 커맨드 라인에서 사용하는 방식이 투박합니다. BigML은 제가 더 이상 의존하고 싶지 않은 상용 API입니다. Vowpal Wabbit은 Yahoo!에서 개발되어 현재 Microsoft에서 관리하는 매우 성숙한 머신러닝 도구입니다.
* [10장](#chapter-10-polyglot-data-science)은 파이썬, R, Apache Spark 등 기존 워크플로우에 커맨드 라인을 통합하는 방법을 다루는 완전히 새로운 장입니다. 1판에서는 커맨드 라인이 기존 워크플로우에 쉽게 통합될 수 있다는 점만 언급하고 깊이 다루지 못했습니다. 이 장이 그 부분을 해결해 줍니다.


## 이 책을 읽는 방법 {-}

일반적으로 이 책을 순서대로 읽으시길 권장합니다.
한번 개념이나 커맨드 라인 도구가 소개되면, 이후의 장에서 그것을 활용할 가능성이 높습니다.
예를 들어 [9장](#chapter-9-modeling-data)에서는 [8장](#chapter-8-parallel-pipelines)에서 광범위하게 소개한 `parallel`을 집중적으로 사용합니다.

데이터 과학은 프로그래밍, 데이터 시각화, 머신러닝 등 수많은 다른 분야와 교차하는 넓은 분야입니다.
그 결과, 이 책은 많은 흥미로운 주제들을 다루지만 안타깝게도 모든 주제를 심도 있게 다루지는 못합니다.
책 곳곳의 각 장 끝에는 더 깊게 탐구할 수 있는 제안들이 있습니다.
책의 내용을 따라가기 위해 이 자료들을 반드시 읽어야 하는 것은 아니지만, 관심이 있다면 배울 것이 훨씬 더 많다는 것을 알게 될 것입니다.


## 이 책의 대상 독자 {-}

이 책은 여러분에 대해 단 한 가지 가정만 합니다. 바로 여러분이 데이터를 다루는 분들이라는 점입니다.
현재 어떤 프로그래밍 언어나 통계 컴퓨팅 환경을 사용하고 있는지는 중요하지 않습니다.
이 책은 필요한 모든 개념을 기초부터 설명합니다.

또한 여러분의 운영체제가 마이크로소프트 윈도우인지, macOS인지, 혹은 어떤 종류의 리눅스인지도 중요하지 않습니다.
이 책은 설치하기 쉬운 가상 환경인 Docker 이미지를 함께 제공합니다.
이를 통해 커맨드 라인 도구를 실행하고 이 책이 작성된 것과 동일한 환경에서 코드 예제를 따라 해볼 수 있습니다.
수많은 커맨드 라인 도구와 그 의존성들을 어떻게 설치할지 고민하며 시간을 낭비할 필요가 없습니다.

이 책에는 Bash, 파이썬, R로 작성된 일부 코드가 포함되어 있어 프로그래밍 경험이 있다면 도움이 되겠지만, 예제를 따라가는 데 있어 반드시 필요한 것은 아닙니다.


## 이 책에 사용된 표기 규칙 {-}

이 책에서는 다음과 같은 서체 규칙을 사용합니다.

*이탤릭(Italic)*

:   새로운 용어, URL, 디렉터리 이름, 파일 이름을 나타냅니다.

`고정 폭(Constant width)`

:   코드와 명령어를 나타낼 때, 그리고 본문 내에서 커맨드 라인 도구와 옵션을 언급할 때 사용합니다.

**`고정 폭 굵게(Constant width bold)`**

:   사용자가 직접 입력해야 하는 명령어 나 텍스트를 나타냅니다.



\BeginKnitrBlock{rmdtip}<div class="rmdtip">이 요소는 팁이나 제안을 나타냅니다.</div>\EndKnitrBlock{rmdtip}

\BeginKnitrBlock{rmdnote}<div class="rmdnote">이 요소는 일반적인 노트를 나타냅니다.</div>\EndKnitrBlock{rmdnote}

\BeginKnitrBlock{rmdcaution}<div class="rmdcaution">이 요소는 경고나 주의 사항을 나타냅니다.</div>\EndKnitrBlock{rmdcaution}

<!--A
=== Using Code Examples

Supplemental material (code examples, exercises, etc.) is available for download at link:$$https://github.com/jeroenjanssens/data-science-at-the-command-line$$[].

This book is here to help you get your job done. In general, if example code is offered with this book, you may use it in your programs and documentation. You do not need to contact us for permission unless you’re reproducing a significant portion of the code. For example, writing a program that uses several chunks of code from this book does not require permission. Selling or distributing examples from O’Reilly books does require permission. Answering a question by citing this book and quoting example code does not require permission. Incorporating a significant amount of example code from this book into your product’s documentation does require permission.

We appreciate, but generally do not require, attribution. An attribution usually includes the title, author, publisher, and ISBN. For example: “Data Science at the Command Line by Jeroen Janssens (O’Reilly). Copyright 2021 Jeroen Janssens, 978-1-492-08791-5.”

If you feel your use of code examples falls outside fair use or the permission given above, feel free to contact us at pass:[<a class="email" href="mailto:permissions@oreilly.com"><em>permissions@oreilly.com</em></a>].

=== O'Reilly Online Learning

[role = "ormenabled"]
[NOTE]
====
For more than 40 years, pass:[<a href="http://oreilly.com" class="orm:hideurl"><em class="hyperlink">O’Reilly Media</em></a>] has provided technology and business training, knowledge, and insight to help companies succeed.
====

Our unique network of experts and innovators share their knowledge and expertise through books, articles, and our online learning platform. O’Reilly’s online learning platform gives you on-demand access to live training courses, in-depth learning paths, interactive coding environments, and a vast collection of text and video from O'Reilly and 200+ other publishers. For more information, visit pass:[<a href="http://oreilly.com" class="orm:hideurl"><em>http://oreilly.com</em></a>].

=== How to Contact Us

Please address comments and questions concerning this book to the publisher:

++++
<ul class="simplelist">
  <li>O’Reilly Media, Inc.</li>
  <li>1005 Gravenstein Highway North</li>
  <li>Sebastopol, CA 95472</li>
  <li>800-998-9938 (in the United States or Canada)</li>
  <li>707-829-0515 (international or local)</li>
  <li>707-829-0104 (fax)</li>
</ul>
++++

We have a web page for this book, where we list errata, examples, and any additional information. You can access this page at link:$$https://wwww.datascienceatthecommandline.com$$[].

Email pass:[<a class="email" href="mailto:bookquestions@oreilly.com"><em>bookquestions@oreilly.com</em></a>] to comment or ask technical questions about this book.

For news and information about our books and courses, visit link:$$http://oreilly.com$$[].

Find us on Facebook: link:$$http://facebook.com/oreilly$$[]

Follow us on Twitter: link:$$http://twitter.com/oreillymedia$$[]

Watch us on YouTube: link:$$http://www.youtube.com/oreillymedia$$[]



A-->


## 감사의 글 {-}


### 2판을 위한 감사의 글 (2021) {-}

1판이 출간된 지 7년이 지났습니다.
그동안, 특히 지난 13개월 동안 많은 분들이 저를 도와주셨습니다.
그분들이 없었다면 저는 결코 2판을 쓸 수 없었을 것입니다.

저는 이번에도 O'Reilly에서 세 분의 멋진 에디터들과 함께하게 된 행운을 누렸습니다.
Sarah "Embrace the deadline" Grey, Jess "Pedal to the metal" Haberman, 그리고 Kate "Let it go" Galloway에게 감사의 마음을 전합니다. 그들의 미들 네임(별명)이 모든 것을 말해줍니다. 그들의 믿을 수 없는 도움 덕분에 마감 시한을 받아들이고(embrace the deadlines), 중요한 순간에 가속 페달을 밟고(put the pedal to metal), 마침내 원고를 손에서 놓을(let it go) 수 있었습니다.
또한 O'Reilly와의 협업을 이토록 즐겁게 만들어준 그들의 동료들—Angela Rufino, Arthur Johnson, Cassandra Furtado, David Futato, Helen Monroe, Karen Montgomery, Kate Dullea, Kristen Brown, Marie Beaugureau, Marsee Henon, Nick Adams, Regina Wilkinson, Shannon Cutt, Shannon Turlington, Yasmina Greco—에게도 감사를 표합니다.

코드를 실행하고 그 결과를 다시 붙여넣는 자동화된 프로세스(R Markdown과 Docker 덕분)가 있음에도 불구하고, 제가 저지른 실수의 숫자는 정말 놀라울 정도였습니다.
이 숫자를 대폭 줄여주신 Aaditya Maruthi, Brian Eoff, Caitlin Hudon, Julia Silge, Mike Dewar, 그리고 Shane Reustle에게 감사드립니다.
물론 남아 있는 모든 실수는 저의 책임입니다.

Marc Canaleta는 특별한 감사를 받을 자격이 있습니다.
1판이 나온 직후인 2014년 10월, Marc는 바르셀로나에 있는 Social Point 팀을 위해 "커맨드 라인에서 시작하는 데이터 과학"을 주제로 한 하루짜리 워크숍에 저를 초대했습니다.
우리 둘 다 그토록 많은 워크숍이 이어지게 될 줄은 몰랐습니다.
그 경험은 결국 제가 직접 회사인 Data Science Workshops를 차리는 원동력이 되었습니다.
교육을 할 때마다 저는 새로운 것을 배웁니다.
아마 학생들은 모르겠지만, 모든 학생 한 명 한 명이 이 책에 각기 다른 방식으로 영향을 미쳤습니다.
그분들에게 감사의 인사를 전합니다.
저는 아주 오랫동안 학생들을 가르치고 싶습니다.

매혹적인 대화, 멋진 제안, 그리고 열정적인 풀 리퀘스트들.
다음에 열거된 아낌없이 베풀어준 분들의 모든 기여에 깊이 감사드립니다.
Adam Johnson, Andre Manook, Andrea Borruso, Andres Lowrie, Andrew Berisha, Andrew Gallant, Andrew Sanchez, Anicet Ebou, Anthony Egerton, Ben Isenhart, [.keep-together]#Chris Wiggins#, Chrys Wu, Dan Nguyen, Darryl Amatsetam, Dmitriy Rozhkov, Doug Needham, Edgar Manukyan, Erik Swan, Felienne Hermans, George Kampolis, Giel van Lankveld, Greg Wilson, Hay Kranen, Ioannis Cherouvim, Jake Hofman, Jannes Muenchow, Jared Lander, Jay Roaf, Jeffrey Perkel, Jim Hester, Joachim Hagege, Joel Grus, John Cook, John Sandall, Joost Helberg, Joost van Dijk, Joyce Robbins, Julian Hatwell, Karlo Guidoni, Karthik Ram, Lissa Hyacinth, Longhow Lam, Lui Pillmann, Lukas Schmid, Luke Reding, Maarten van Gompel, Martin Braun, Max Schelker, Max Shron, Nathan Furnal, Noah Chase, Oscar Chic, Paige Bailey, Peter Saalbrink, Rich Pauloo, Richard Groot, Rico Huijbers, Rob Doherty, Robbert van Vlijmen, Russell Scudder, Sylvain Lapoix, TJ Lavelle, Tan Long, Thomas Stone, Tim O'Reilly, Vincent Warmerdam, Yihui Xie.

책 전체에 걸쳐, 특히 각주와 부록에는 수백 개의 이름이 등장합니다.
이 이름들은 이 책의 근간이 된 수많은 도구, 서적 및 기타 리소스들의 저자들입니다.
그 작업이 50년 전의 것이든 50일 전의 것이든, 그분들의 노고에 무한한 감사를 드립니다.

무엇보다도, 무엇이 진정으로 중요한지 매일 일깨워주는 아내 Esther와 딸 Florien, 그리고 아들 Olivier에게 감사를 전합니다.
약속컨대 3판을 쓰기 전까지는 몇 년의 시간 여유가 있을 것입니다.


### 1판을 위한 감사의 글 (2014) {-}

가장 먼저 저의 2013년 9월 블로그 포스트인 [데이터 과학을 위한 7가지 커맨드 라인 도구](http://jeroenjanssens.com/2013/09/19/seven-command-line-tools-for-data-science.html)가 책으로 확장될 수 있다고 믿어준 Mike Dewar와 Mike Loukides에게 감사를 전합니다.

다양한 초안을 읽고, 모든 명령어를 세심하게 테스트하며 귀중한 피드백을 준 기술 검토자 Mike Dewar, Brian Eoff, Shane Reustle에게 특별한 감사를 전합니다.
여러분의 노력으로 책이 크게 향상되었습니다. 남아 있는 오역이나 오류는 전적으로 저의 책임입니다.

Ann Spencer, Julie Steele, 그리고 Marie Beaugureau라는 세 분의 놀라운 에디터와 함께 일할 수 있는 특권을 누렸습니다.
저를 잘 이끌어 주시고 O’Reilly의 유능한 많은 분들과 훌륭한 가교 역할을 해주셔서 감사합니다.
그분들 중에는 Laura Baldwin, Huguette Barriere, Sophia DeMartini, Yasmina Greco, Rachel James, Ben Lorica, Mike Loukides, Christopher Pappas가 포함됩니다.
무대 뒤에서 일하느라 제가 직접 만나보지 못한 다른 많은 분들도 있습니다.
그분들 모두 덕분에 O’Reilly와 함께 일하는 것이 진정한 즐거움이었습니다.

이 책은 80개가 넘는 커맨드 라인 도구를 다룹니다. 말할 필요도 없이, 이 도구들이 없었다면 이 책은 존재조차 할 수 없었을 것입니다.
따라서 이 도구들을 만들고 기여해주신 모든 저자분들께 깊은 감사를 드립니다. 전체 저자 목록은 안타깝게도 여기에 다 나열하기에 너무 길어 부록에 언급했습니다.
특히 Aaron Crow, Jehiah Czebotar, Christoph Groskopf, Dima Kogan, Sergey Lisitsyn, Francisco J. Martin, 그리고 Ole Tange에게 그들의 놀라운 도구들에 대해 도움을 주셔서 감사를 전합니다.

박사 과정 동안 저를 지도해주신 Eric Postma와 Jaap van den Herik 교수님께도 특별히 감사의 인사를 드립니다.
5년이 넘는 시간 동안 교수님들은 제게 많은 교훈을 주셨습니다.
기술 서적을 쓰는 것이 박사 학위 논문을 쓰는 것과는 꽤 다르지만, 그 교훈들 중 많은 부분이 지난 9개월 동안 매우 큰 도움이 되었습니다.

마지막으로 YPlan 동료들, 친구들, 가족들, 그리고 무엇보다 적절한 순간에 저를 커맨드 라인에서 떼어내 준 아내 Esther에게 고마움을 전합니다.
