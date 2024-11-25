{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_22
  ];

  # Sets environment variables in the workspace
  env = {
    SOME_ENV_VAR = "hello";
  };

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
 "christian-kohler.path-intellisense"
 "dbaeumer.vscode-eslint"
 "esbenp.prettier-vscode"
 "formulahendry.auto-rename-tag"
 "monokai.theme-monokai-pro-vscode"
 "ritwickdey.LiveServer"
 "usernamehw.errorlens"
 "vscode-icons-team.vscode-icons"];

  # Enable previews and customize configuration
  idx.previews = {
    enable = true;
    previews = {
      web = {
        command = [
        #   "npm"
        #   "run"
        #   "start"
        #   "--"
        #   "--port"
        #   "$PORT"
        #   "--host"
        #   "0.0.0.0"
        #   "--disable-host-check"
        ];
        manager = "web";
        # Optionally, specify a directory that contains your web app
        # cwd = "app/client";
      };
    };
  };
}