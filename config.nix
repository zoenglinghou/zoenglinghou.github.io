{
  baseURL = "https://zoenglinghou.github.io/";
  languageCode = "en-us";
  theme = "terminal";
  paginate = 5;

  params = {
    # dir name of your main content (default is `content/posts`).
    # the list of set content will show up on your index page (baseurl).
    contentTypeName = "content";

    # ["orange", "blue", "red", "green", "pink"]
    themeColor = "blue";

    # if you set this to 0, only submenu trigger will be visible
    showMenuItems = 0;

    # show selector to switch language
    showLanguageSelector = false;

    # set theme to full screen width
    fullWidthTheme = false;

    # center theme with default width
    centerTheme = false;

    # if your resource directory contains an image called `cover.(jpg|png|webp)`,
    # then the file will be used as a cover automatically.
    # With this option you don't have to put the `cover` param in a front-matter.
    autoCover = true;

    # set post to show the last updated
    # If you use git, you can set `enableGitInfo` to `true` and then post will automatically get the last updated
    showLastUpdated = false;

    # set a custom favicon (default is a `themeColor` square)
    # favicon = "favicon.ico";

    # Provide a string as a prefix for the last update date. By default, it looks like this: 2020-xx-xx [Updated: 2020-xx-xx] :: Author
    # updatedDatePrefix = "Updated";

    # set all headings to their default size (depending on browser settings)
    # oneHeadingSize = true; # default

    # whether to show a page's estimated reading time
    # readingTime = false; # default

    # whether to show a table of contents
    # can be overridden in a page's front-matter
    # Toc = false; # default

    # set title for the table of contents
    # can be overridden in a page's front-matter
    # TocTitle = "Table of Contents"; # default
  };

  languages = {
    en = {
      languageName = "English";
      title = "Zoeng Linghou";
      subtitle = "A personal webpage built with Hugo and Nix Flake";
      owner = "zoenglinghou";
      keywords = "robotics,linux";
      copyright = "";
      menuMore = "Show more";
      readMore = "Read more";
      readOtherPosts = "Read other posts";
      newerPosts = "Newer posts";
      olderPosts = "Older posts";
      missingContentMessage = "Page not found...";
      missingBackButtonLabel = "Back to home page";
      params.logo = {
        logoText = "Terminal";
        logoHomeLink = "/";
      };

      menu.main = [
        # {
        #   identifier = "about";
        #   name = "About";
        #   url = "/about";
        # }
        # {
        #   identifier = "showcase";
        #   name = "Showcase";
        #   url = "/showcase";
        # }
      ];
    };
  };

  markup.goldmark.renderer = { unsafe = true; };
}
