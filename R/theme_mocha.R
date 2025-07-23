# Catppuccin Mocha colors
mocha <- list(
  base      = "#1e1e2e", # background
  mantle    = "#181825",
  crust     = "#11111b",
  text      = "#cdd6f4", # foreground text
  subtext   = "#a6adc8",
  overlay   = "#9399b2",
  surface   = "#313244",
  muted     = "#6c7086",
  rosewater = "#f5e0dc",
  flamingo  = "#f2cdcd",
  pink      = "#f5c2e7",
  mauve     = "#cba6f7",
  red       = "#f38ba8",
  maroon    = "#eba0ac",
  peach     = "#fab387",
  yellow    = "#f9e2af",
  green     = "#a6e3a1",
  teal      = "#94e2d5",
  sky       = "#89dceb",
  sapphire  = "#74c7ec",
  blue      = "#89b4fa",
  lavender  = "#b4befe"
)

theme_mocha <- function(base_size = 12) {
  theme_minimal(base_size = base_size) %+replace%
    theme(
      # Background and text
      plot.background   = element_rect(fill = mocha$base, color = NA),
      panel.background  = element_rect(fill = mocha$base, color = NA),
      panel.grid.major  = element_line(color = mocha$surface),
      panel.grid.minor  = element_line(color = mocha$surface),
      text              = element_text(color = mocha$text),
      
      # Axis
      axis.text         = element_text(color = mocha$text, size = rel(1)),
      axis.title        = element_text(color = mocha$subtext, size = rel(1.2)),
      axis.ticks        = element_line(color = mocha$overlay),
      
      # Legend
      legend.background = element_rect(fill = mocha$base, color = NA),
      legend.key        = element_rect(fill = mocha$mantle, color = NA),
      legend.text       = element_text(color = mocha$text),
      legend.title      = element_text(color = mocha$subtext),
      
      # Plot title and subtitle
      plot.title        = element_text(color = mocha$lavender, size = rel(1.2), face = "bold"),
      plot.subtitle     = element_text(color = mocha$subtext, size = rel(1)),
      plot.caption      = element_text(color = mocha$overlay, size = rel(0.8)),
      
      # Strip background (for facets)
      strip.background  = element_rect(fill = mocha$mantle, color = NA),
      strip.text        = element_text(color = mocha$text, face = "bold")
    )
} 