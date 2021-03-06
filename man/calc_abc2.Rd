% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/abc_23.r
\name{calc_abc2}
\alias{calc_abc2}
\title{2系のABC計算用の関数}
\usage{
calc_abc2(ccdata, BT = 0.8, PL = 0.7, PB = 0, tune.par = c(0.5,
  0.4, 0.4), AAV = "auto", n.catch = 5)
}
\arguments{
\item{ccdata}{year,cpue,catchのデータフレーム（ラベルは小文字でyear, cpue, catchとする）}

\item{BT}{目標水準のレベル（デフォルト=0.8)}

\item{PL}{目標水準の何割を限界水準にするか（BL = PL*BT、デフォルトは0.7）}

\item{PB}{目標水準の何割を禁漁水準にするか（BB = PB*BT、デフォルトは0）}

\item{tune.par}{c(beta, delta, lambda) に対応するチューニングパラメータ。デフォルトの値はc(0.5,0.4,0.4)}

\item{AAV}{default:"auto", "auto"の場合、CPUEのAAVを内部で計算した値を使う。明示的に数値を与える場合は、その数字が使われる}

\item{n.catch}{過去の漁獲量を平均する年数（デフォルトの値は5）}
}
\description{
2系のABC計算用の関数
}
\examples{
library(frasyr23)
catch <- c(15,20,13,14,11,10,5,10,3,2,1,3)
cpue <- c(10,9,8,4,8,11,10,2,3,2,5,2)
example_data <- data.frame(year=2001:2012,cpue=cpue,catch=catch) 

# 2系
example_abc2 <- calc_abc2(example_data)
graph_abc2 <- plot_abc2(example_abc2)

}
