<nav class="navbar has-background-dark has-text-light p-4" role="navigation" aria-label="main navigation">
    <div class="navbar-brand has-background-dark has-text-light">
        <div class="is-align-text-center p-4">
            <a href="$BaseHref" class="navbar-item has-text-light title">$SiteConfig.Title</a>
            <% if $SiteConfig.Tagline %>
                <p class="subtitle ml-3">$SiteConfig.Tagline</p>
            <% end_if %>
        </div>
        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbar">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>
    <div id="navbar" class="navbar-menu has-background-dark has-text-light">
        <div class="navbar-start">
            <% loop $Menu(1) %>
                    <a href="$Link" title="Go to the $Title page" class="navbar-item <% if $isCurrent %>has-background-primary has-text-dark<% else %>has-background-dark has-text-light<% end_if %>">
                        $MenuTitle
                    </a>
                    <% if $Children %>
                      <div class="navbar-item has-dropdown is-hoverable">
                            <a class="navbar-link has-background-dark">

                            </a>
                            <div class="navbar-dropdown has-background-dark has-text-light">
                            <% loop $Children %>
                                <a href="$Link" class="navbar-item has-text-light <% if $isCurrent %>has-background-secondary has-text-dark<% else %>has-background-dark has-text-light<% end_if %>">
                                    $MenuTitle
                                </a>
                            <% end_loop %>
                            </div>
                          </div>
                    <% end_if %>
            <% end_loop %>
        </div>
    </div>
</nav>