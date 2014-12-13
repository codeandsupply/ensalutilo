defmodule Ensalutilo.View do
  use Phoenix.View, root: "web/templates"

  # The quoted expression returned by this block is applied
  # to this module and all other views that use this module.
  using do
    quote do
      # Import common functionality
      import Ensalutilo.I18n
      import Ensalutilo.Router.Helpers

      # Use Phoenix.HTML to import all HTML functions (forms, tags, etc)
      use Phoenix.HTML

      # Common aliases
      alias Phoenix.Controller.Flash

      def __(key) do
        __(key, {})
      end

      def __(key, args) do
        locale = "en"
        # I can't figure out yet how to trigger I18n...
        #Ensalutilo.I18n.t(locale, key, args)
        key
      end

    end
  end

  # Functions defined here are available to all other views/templates
end
