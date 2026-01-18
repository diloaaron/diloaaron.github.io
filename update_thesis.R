update_thesis_site <- function() {
  quarto::quarto_render("thesis_site.qmd")
  if (file.exists("thesis_site.html")) {
    file.rename("thesis_site.html", "index.html")
  }
  system("git add .")
  system(paste("git commit -m 'Update:", Sys.time(), "'"))
  system("git push")
}

update_thesis_site()
