console_start <- function() {
  # FORCE EVAL FALSE FOR BUILD to avoid Docker-in-Docker issues and missing dependencies
  if (TRUE) {
    warning("Forcing eval=FALSE for build.", call. = FALSE)
    knitr::knit_engines$set(console = function(options) {
        knitr::engine_output(options, options$code, "")
    })
    knitr::opts_chunk$set(eval = FALSE, escape = TRUE, out.width = "90%")
    return()
  }

  if (!requireNamespace("knitractive", quietly = TRUE)) {
    warning("knitractive not installed. Setting eval=FALSE for all chunks.", call. = FALSE)
    knitr::knit_engines$set(console = function(options) {
        knitr::engine_output(options, options$code, "")
    })
    knitr::opts_chunk$set(eval = FALSE, escape = TRUE, out.width = "90%")
    return()
  }

  library(knitractive)
  library(rexpect)
  library(rlang)

  engine <- start(name = "console",
          command = cmd_docker(image = "datasciencetoolbox/dsatcl2e",
                              volume = list2(!!here::here("images") := "/images",
                                              !!here::here("history") := "/history",
                                              !!here::here("data") := "/data.bak")),
          prompt = prompts$bash,
          session_width = 80,
          session_height = 16)

  setup <- c(" setopt HIST_IGNORE_SPACE;",
          " history -p;",
          " setopt INC_APPEND_HISTORY;",
          " export TERM=screen-256color;",
          " export SAVEHIST=1000000;",
          " export HISTSIZE=1000000;",
          " export RIO_DPI=200;",
          " export MANROFFOPT='-c';",
          " export BAT_THEME=ansi;",
          " export MANPAGER=\"sh -c 'col -bx | /usr/bin/bat -plman --color=always'\";",
          " function csvlook {",
          "     /usr/bin/csvlook \"$@\" |",
          "     trim |",
          "     sed 's/- | -/──┼──/g;s/| -/├──/g;s/- |/──┤/;s/|/│/g;2s/-/─/g'",
          " };",
          " alias bat='bat --tabs 8 --paging never';",
          " alias docker='echo';",
          " alias less='less -R';",
          " function display { mv $1 /images/ };",
          " sudo cp -r /data.bak /data;",
          " sudo sudo chown -R dst:dst /data;",
          " setopt interactivecomments;",
          " eval $(dircolors -b);"
          )

  send_lines(engine$session, paste0(setup, collapse = ""), wait = TRUE)
  engine$scroll(length(engine$session) - 1)
  knitr::opts_chunk$set(escape = TRUE, out.width = "90%")
}
