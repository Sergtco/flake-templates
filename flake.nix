{
  description = "My collection of flake templates.";

  outputs = { self }: {

    templates = {
      rust = {
        path = ./rust;
        description = "Rust template, using rust-overlay.";
      };
      base = {
        path = ./base;
        description = "Base template, with flake utils.";
      };
    };

    defaultTemplate = self.templates.base;

  };
}
