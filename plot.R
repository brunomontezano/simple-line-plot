dados <- tibble::tibble(
    ano = as.Date(c("2022-04-18", "2022-06-21", "2022-08-01", "2022-09-16", "2022-10-06")),
    users = c(5900, 6700, 7300, 8000, 8300)
)

dados |>
    ggplot2::ggplot(ggplot2::aes(x = ano, y = users, group=1)) +
        ggplot2::geom_line(size = 4, color = "tan2") +
        ggplot2::geom_point(size = 5) +
        ggplot2::theme_minimal(22) +
        ggplot2::scale_x_date(date_labels = "%B %Y") +
        ggplot2::labs(x = "Date", y = "Users",
            title = "Thrive App User Growth",
            subtitle = "From April to October 2022"
        )

ggplot2::ggsave("thrive_plot.png",
    bg = "white"
)
