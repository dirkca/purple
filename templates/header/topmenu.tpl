 <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
          <li>
           <div id="header"><h1 id="site-logo"><a href="{$WWWROOT}"><img src="{$sitelogo}" alt="{$sitename}"></a></h1>
            </li>

          <!--<li class="dropdown">
             
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="themes">More Tools <span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="themes">
                
                <li><a tabindex="-1" href="http://moodle2.rockyview.ab.ca/">Moodle</a></li>
                <li><a tabindex="-1" href="http://epearl.rockyview.ab.ca">Epearl</a></li>
                <li><a tabindex="-1" href="http://schoolblogs.rockyview.ab.ca">Schoolblogs</a></li>
                <li><a tabindex="-1" href="http://creativeblogs.rockyview.ab.ca">Creativeblogs</a></li>
                
                <li><a tabindex="-1" href="http://login.rvschools.ab.ca/">Google Apps</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="http://www.rockyview.ab.ca/home/techsupports">Technology Support</a></li>
                
                
                
              </ul>
            </li>
            <li>
             
            </li>
            <!--<li>
              <a href="#">Link3</a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="download">Link4 <span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="download">
                <li><a tabindex="-1" href="#">Link4-1</a></li>
                <li><a tabindex="-1" href="#">Link4-2</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#">Link4-3</a></li>
                <li><a tabindex="-1" href="#">Link4-4</a></li>
              </ul>
            </li>-->
          </ul>
          
          <ul class="nav navbar-nav navbar-right"> 
          
          <li>{if !$nosearch && $LOGGEDIN}        {header_search_form}{/if}</li> 
          <li>
          
          <div id="right-nav">
            <ul>{strip}
{if $LOGGEDIN}      <li class="identity"><a href="{profile_url($USER)}">{$USER|display_default_name}</a></li>{/if}
{if $RIGHTNAV}
{foreach from=$RIGHTNAV item=item}
                <li class="{$item.path}{if $item.selected}{assign var=MAINNAVSELECTED value=$item} selected{/if}"> | <a href="{if $item.wwwroot}{$item.wwwroot}{else}{$WWWROOT}{/if}{$item.url}">{if $item.title}{$item.title}{/if}{if $item.icon}<img src="{$item.icon}" alt="{$item.alt}">{if isset($item.count)}<span class="navcount{if $item.countclass} {$item.countclass}{/if}">{$item.count}</span>{/if}</a></li>
{/foreach}
                <li class="btn-logout"> | <a href="{$WWWROOT}?logout" accesskey="l">{str tag="logout"}</a></li>
                
{/if}
            {/strip}
{if !$nosearch && !$LOGGEDIN && $languageform}
                <li id="language">
                    {$languageform|safe}
                </li>
{/if}
{if !$LOGGEDIN && !$SIDEBARS && !$LOGINPAGE}        <li id="loginlink"><a href="{$WWWROOT}?login" accesskey="l">{str tag="login"}</a></li> {/if}
            </ul>
        </div>
         </li>
            
          </ul>  
          

        </div>
      </div>
    </div>