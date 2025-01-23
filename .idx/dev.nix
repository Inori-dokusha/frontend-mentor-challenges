{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.python313
    pkgs.nodejs_21
  ];

  # Sets environment variables in the workspace
  env = {
    SOME_ENV_VAR = "hello";
  };

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
 "esbenp.prettier-vscode"
 "vscode-icons-team.vscode-icons"
 "ritwickdey.LiveServer"];

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
        #   "0.0.0.0"
        #   "--host"
        #   "--disable-host-check"
          "python"
          "-m"
          "http.server"
          "$PORT"
        ];
        manager = "web";
        # Optionally, specify a directory that contains your web app
        # cwd = "app/client";
      };
    };
  };
}