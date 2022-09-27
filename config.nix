{
  baseurl = "https://zoenglinghou.github.io/";
  title = "Zoeng Linghou";
  theme = "hugo-coder";
  languageCode = "en-us";
  defaultcontentlanguage = "en";

  paginate = 5;
  publishDir = "docs";

  pygmentsstyle = "bw";
  pygmentscodefences = true;
  pygmentscodefencesguesssyntax = true;

  params = {
    author = "Linghao Zhang";
    info = "Robotics Engineer & Linux DevOps";
    description = "A personal webpage built with Hugo and Nix Flake";
    keywords = "robotics,engineering,linux,devops";
    avatarurl = "img/avatar.jpg";

    since = 2022;

    math = true;

    colorScheme = "auto";

    social = [
      {
        name = "Github";
        icon = "fa fa-github fa-2x";
        weight = 1;
        url = "https://github.com/zoenglinghou/";
      }
      {
        name = "Codeberg";
        icon = "fa fa-git fa-2x";
        weight = 1;
        url = "https://codeberg.org/zoenglinghou/";
      }
      {
        name = "LinkedIn";
        icon = "fa fa-linkedin fa-2x";
        weight = 1;
        url = "https://www.linkedin.com/in/linghao-zhang/";
      }
      {
        name = "Mastodon";
        icon = "fa fa-mastodon fa-2x";
        weight = 1;
        url = "https://m.cmx.im/web/@carlosevo";
      }
    ];
  };

  menu.main = [
    {
      name = "about";
      weight = 1;
      url = "/about";
    }
  ];

  markup.goldmark.renderer = { unsafe = true; };
}
