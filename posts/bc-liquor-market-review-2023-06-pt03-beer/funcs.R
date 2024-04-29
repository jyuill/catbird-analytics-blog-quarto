# functions for processing data
# load file at start of index.qmd with 'source("funcs.R")'
# call functions as needed

# function for creating stacked column chart
stacked_col_chart <- function(data, x_var, y_var, fill_var, title, xlab = "", ylab = "", 
                              trans_fctr = 1, dec = 0, txt_suffix = "",
                              sci_scale = 1e-6, y_prefix_set = "$", y_suffix_set = "M", expd_up_set = 0.1) {
      ggplot(data, aes(x = {{x_var}}, y = {{y_var}}, fill = {{fill_var}},
                       text = paste("value:", format(round({{y_var}}*trans_fctr,dec), big.mark=","),txt_suffix,
                                    "<br>cat:", {{fill_var}}))) +
        geom_col() +
        scale_y_continuous(labels = comma_format(scale = sci_scale, prefix = y_prefix_set, suffix = y_suffix_set),
                           expand = expansion(add = c(0, expd_up_set))) +
        labs(title = title, x = xlab, y = ylab) +
        theme(axis.ticks.x = element_blank(),
              axis.text.x = element_text(angle = 45))
}
