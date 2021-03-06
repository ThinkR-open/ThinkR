usethis::use_build_ignore("devstuff_history.R")
usethis::use_readme_rmd()
usethis::use_code_of_conduct()

# Description
# remotes::install_github("r-lib/desc")
desc::desc_add_orcid("0000-0002-1565-9313",
                     given = "Sébastien",
                     family = "Rochette")

# Documentation
usethis::use_pkgdown()
usethis::use_git_ignore("docs")
usethis::use_git_ignore("pkgdown")
pkgdown::build_site()

# CI
usethis::use_github_action_check_standard()
usethis::use_github_action("pkgdown")
usethis::use_github_action("test-coverage")

attachment::att_amend_desc()

# Formation N2-groupe Benoit Janushan Victor
usethis::use_vignette('replace_pattern')
usethis::use_test(name = "replace_pattern")

usethis::use_test("is_likert")
devtools::test()

# PR
usethis::pr_fetch(15)

# Development
devtools::check()

# test unitaire

usethis::use_test("as_numeric.R")
devtools::test()
