MarkdownHelper.configure do |config|
  config.options = {
    no_intra_emphasis:              true,

    fenced_code_blocks:             true,
    autolink:                       true,
    disable_indented_code_blocks:   false,
    strikethrough:                  true,

    space_after_headers:            true,
    superscript:                    true,
    underline:                      true,
    highlight:                      true,
    
    filter_html:                    false, #do not allow any user-inputted HTML in the output.
    no_images:                      false,
    no_links:                       false,
    no_styles:                      true,
    safe_links_only:                false,
    with_toc_data:                  true,
    hard_wrap:                      false,
    xhtml:                          false,
    prettify:                       true
  }
end