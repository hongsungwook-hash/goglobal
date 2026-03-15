{ pkgs, ... }:

{
  # The Nix packages to make available in your workspace.
  packages = [
    pkgs.python3
  ];

  # Use this to add VS Code extensions to your workspace.
  idx.extensions = [
  ];

  # Use this to configure your workspace.
  idx.workspace = {
    # Runs when a workspace is first created.
    onCreate = {
    };

    # Runs every time the workspace is (re)started.
    onStart = {
    };
  };

  # Use this to configure web previews.
  idx.previews = {
    enable = true;
    previews = {
      # Give your preview a unique name.
      web = {
        # The command to run to start your server.
        command = [
          "python3"
          "-m"
          "http.server"
          "$PORT"
        ];
        # The manager to use for your server.
        manager = "web";
      };
    };
  };
}
