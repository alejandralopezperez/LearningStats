
variance.mu.test <- function(x = NULL, n = NULL, mu = NULL, smu = NULL, sigma02,
                             alternative,
                             alpha = 0.05, plot = TRUE, lwd = 1) {


  if (!is.null(x)&!is.null(mu)){smu <- sqrt(sum((x - mu)^2) / n)}

  DNAME <- paste0(smu, ", null probability ", deparse(substitute(sigma02)))
  NVAL <- sigma02

  # Statistic and pvalue
  STATISTIC <- (n / sigma02) * smu^2
  if (alternative == "two.sided")
    PVALUE <- 2 * min(pchisq(STATISTIC, n), pchisq(STATISTIC, n, lower.tail = FALSE))
  else
    PVALUE <- pchisq(STATISTIC, n, lower.tail = (alternative == "less"))
  # Reject Region
  RR <- paste0("RR = ", switch(alternative,
                               two.sided = paste0("[0, ", round(qchisq(alpha/2, n), 5), "] U [",
                                                  round(qchisq(1 - alpha/2, n), 5), ", +\U221E)"),
                               greater = paste0("[", round(qchisq(1 - alpha, n), 5), ", +\U221E)"),
                               less = paste0("[0, ", round(qchisq(alpha, n), 5), "]")))

  # Plot
  if (plot) {
    ## Plot statistic distribution
    maxlimx <- max(qchisq(1-0.001, n-1), STATISTIC + 1)
    minlimx <- min(qchisq(0.001, n-1), STATISTIC - 1)
    curve(dchisq(x, df = n), from = minlimx, to = maxlimx,
          main = bquote(T ~ "follows" ~ chi[.(n)]^"2"), axes = FALSE, xlab = "", ylab = "", lwd = lwd)
    u <- par("usr") # x0, x1, y0, y1
    xlimlen <- (u[2] - u[1])
    rect(u[1], 0, u[2], u[4])
    axis(2)
    legend("topright", c("p-value", "RR"), bty = "n", pch = c(22,NA), lty = c(NA,1), lwd = c(1,2),
           col = c("blue", "red"), pt.bg = adjustcolor('blue', alpha.f = 0.25), pt.cex = 2, seg.len = 1, cex = 1)
    if (alternative == "two.sided") {
      abline(h = 0, lwd = lwd + 1)
      lines(c(u[1], qchisq(alpha / 2, n)), c(0,0), col = "red", lwd = lwd + 1)
      lines(c(qchisq(1 - alpha / 2, n), u[2]), c(0,0), col = "red", lwd = lwd + 1)
      axis(1, pos = 0, col = NA, col.ticks = 1,
           at     = c(0, max(n - 3, 0), STATISTIC),
           labels = c(0, max(n - 3, 0), expression('T'[obs])))
      mtext("=", side = 1, line = 1.6, at = STATISTIC, las = 2)
      mtext(round(STATISTIC, 2), side = 1, line = 2.5, at = STATISTIC)
      segments(x0 = c(qchisq(alpha / 2, n), qchisq(1 - alpha / 2, n)), y0 = -u[4]*0.015,
               y1 = u[4]*0.015, col = "red", lwd = lwd + 1)
      segments(x0 = c(qchisq(alpha / 2, n), qchisq(1 - alpha / 2, n)),
               y0 = rep(c(-u[4]*0.015, u[4]*0.015), each = 2),
               x1 = c(qchisq(alpha / 2, n) - 0.01*xlimlen, qchisq(1 - alpha / 2, n) + 0.01*xlimlen),
               rep(c(-u[4]*0.015, u[4]*0.015), each = 2), col = "red", lwd = lwd + 1)
      if (abs(STATISTIC - qchisq(1 - alpha / 2, n)) > 0.05 * xlimlen &
          abs(STATISTIC - qchisq(alpha / 2, n)) > 0.05 * xlimlen) {
        axis(1, pos = 0, col = NA, col.ticks = NA,
             at     = c(qchisq(alpha / 2, n), qchisq(1 - alpha / 2, n)),
             labels = c(expression(chi[alpha/2]^'2'), expression(chi[1-alpha/2]^'2')))
        mtext("=", side = 1, line = 1.6, at = c(qchisq(alpha / 2, n), qchisq(1 - alpha / 2, n)), las = 2)
        mtext(round(qchisq(alpha / 2, n), 2), side = 1, line = 2.5, at = qchisq(alpha / 2, n))
        mtext(round(qchisq(1 - alpha / 2, n), 2), side = 1, line = 2.5, at = qchisq(1 - alpha / 2, n))
      }

      # pvalue != 0
      if (PVALUE > .Machine$double.eps) {
        # Statistic right tail
        segments(x0 = qchisq(PVALUE / 2, n, lower.tail = FALSE), y0 = 0,
                 x1 = qchisq(PVALUE / 2, n, lower.tail = FALSE),
                 y1 = dchisq(qchisq(PVALUE / 2, n, lower.tail = FALSE), n),
                 col = 'blue', lwd = 1)
        x_vector <- seq(qchisq(PVALUE / 2, n, lower.tail = FALSE), maxlimx, length = 100)
        y_vector <- dchisq(x_vector, n)
        polygon(c(x_vector, rev(x_vector)), c(y_vector, rep(0, length(y_vector))),
                col = adjustcolor('blue', alpha.f = 0.25), border = NA)

        # Statistic left tail
        segments(x0 = qchisq(PVALUE / 2, n), y0 = 0,
                 x1 = qchisq(PVALUE / 2, n), y1 = dchisq(qchisq(PVALUE / 2, n), n),
                 col = 'blue', lwd = 1)
        x_vector <- seq(minlimx, qchisq(PVALUE / 2, n), length = 100)
        y_vector <- dchisq(x_vector, n)
        polygon(c(x_vector, rev(x_vector)), c(y_vector, rep(0, length(y_vector))),
                col = adjustcolor('blue', alpha.f = 0.25), border = NA)
      }

    } else {

      if (alternative == "less") {
        abline(h = 0, lwd = lwd + 1)
        lines(c(u[1], qchisq(alpha, n)), c(0,0), col = "red", lwd = lwd + 1)
        axis(1, pos = 0, col = NA, col.ticks = 1,
             at     = c(0, max(n - 3, 0), STATISTIC),
             labels = c(0, max(n - 3, 0), expression('T'[obs])))
        segments(x0 = qchisq(alpha, n), y0 = -u[4]*0.015, y1 = u[4]*0.015, col = "red", lwd = lwd + 1)
        segments(x0 = qchisq(alpha, n), y0 = c(-u[4]*0.015, u[4]*0.015), x1 = qchisq(alpha, n) - 0.01*xlimlen,
                 c(-u[4]*0.015, u[4]*0.015), col = "red", lwd = lwd + 1)
        if (abs(STATISTIC - qchisq(alpha, n)) > 0.05 * xlimlen) {
          axis(1, pos = 0, col = NA, col.ticks = NA, at = qchisq(alpha, n), labels = expression(chi[alpha]^'2'))
          mtext("=", side = 1, line = 1.6, at = qchisq(alpha, n), las = 2)
          mtext(round(qchisq(alpha, n), 2), side = 1, line = 2.5, at = qchisq(alpha, n))
        }

      } else {
        abline(h = 0, lwd = lwd + 1)
        lines(c(qchisq(1 - alpha, n), u[2]), c(0,0), col = "red", lwd = lwd + 1)
        axis(1, pos = 0, col = NA, col.ticks = 1,
             at       = c(0, STATISTIC),
             labels   = c(0, expression('T'[obs])))
        segments(x0 = qchisq(1 - alpha, n), y0 = -u[4]*0.015, y1 = u[4]*0.015, col = "red", lwd = lwd + 1)
        segments(x0 = qchisq(1 - alpha, n), y0 = c(-u[4]*0.015, u[4]*0.015),
                 x1 = qchisq(1 - alpha, n) + 0.01*xlimlen, c(-u[4]*0.015, u[4]*0.015), col = "red", lwd = lwd + 1)
        if (abs(STATISTIC - qchisq(1 - alpha, n)) > 0.05 * xlimlen) {
          axis(1, pos = 0, col = NA, col.ticks = NA, at = qchisq(1 - alpha, n), labels = expression(chi[1-alpha]^'2'))
          mtext("=", side = 1, line = 1.6, at = qchisq(1 - alpha, n), las = 2)
          mtext(round(qchisq(1 - alpha, n), 2), side = 1, line = 2.5, at = qchisq(1 - alpha, n))
        }
      }

      # pvalue != 0
      if (PVALUE > .Machine$double.eps) {
        # Statistic
        segments(x0 = STATISTIC, y0 = 0, x1 = STATISTIC, y1 = dchisq(STATISTIC, n),
                 col = 'blue', lwd = 1)
        if (alternative == "less") {
          x_vector <- seq(minlimx, STATISTIC, length = 100)
        } else {
          x_vector <- seq(STATISTIC, maxlimx, length = 100)
        }
        y_vector <- dchisq(x_vector, n)
        polygon(c(x_vector, rev(x_vector)), c(y_vector, rep(0, length(y_vector))),
                col = adjustcolor('blue', alpha.f = 0.25), border = NA)
        mtext("=", side = 1, line = 1.6, at = STATISTIC, las = 2)
        mtext(round(STATISTIC, 2), side = 1, line = 2.5, at = STATISTIC)
      }
    }
  }

  ##---------------------------------------------
  METHOD <- "Test for the variance of a Normal population with known mean"
  DISTNAME <- "\U2208 X\U00B2_n"
  STATFORMULA <- "n S\U00B5\U00B2 / \U03C3\U2080\U00B2"
  ESTIMATE <- setNames(smu^2, "\U03C3\U00B2")
  PARAMETER <- n
  names(NVAL) <- names(ESTIMATE)
  names(PARAMETER) <- "df"
  names(STATISTIC) <- "T"
  unit <- "units\U00B2"
  RVAL <- list(
    statistic = STATISTIC,
    parameter = PARAMETER,
    p.value = as.numeric(PVALUE),
    estimate = ESTIMATE,
    null.value = NVAL,
    alternative = alternative,
    method = METHOD,
    data.name = DNAME,
    alpha = alpha,
    dist.name = DISTNAME,
    statformula = STATFORMULA,
    reject.region = RR,
    unit = unit
  )
  class(RVAL) <- c("lstest", "htest")
  return(RVAL)
}

