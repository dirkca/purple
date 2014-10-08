
{if $MAINNAV}
        <div id="main-nav" class=" main-nav">
             
            <h3 class="rd-nav-title"><a id="rd-nav-a" href="#">{if $ADMIN || $INSTITUTIONALADMIN || $STAFF || $INSTITUTIONALSTAFF}{str tag=admin} {/if}{str tag=menu}<span class="rd-arrow"></span></a></h3>
          <div class="navbar-collapse navbar-inverse-collapse in" style="height: auto;">    
            <ul id="dropdown-nav" class="nav navbar-nav">
{strip}
{foreach from=$MAINNAV item=item}
                <li class="{if $item.path}{$item.path}{else}dashboard{/if}{if $item.selected} selected{/if} dropdown dropdown-nav-home"><span><a href="{$WWWROOT}{$item.url}"{if $item.accesskey} accesskey="{$item.accesskey}"{/if} class="{if $item.path}{$item.path}{else}dashboard{/if}">{$item.title}</a></span>
{if $item.submenu}
                    <ul class="dropdown-menu dropdown-sub rd-subnav">
{strip}
{foreach from=$item.submenu item=subitem}
                        <li{if $subitem.selected} class="selected"{/if}><span>
                            <a href="{$WWWROOT}{$subitem.url}"{if $subitem.accesskey} accesskey="{$subitem.accesskey}"{/if}>{$subitem.title}</a>
                        </span></li>
{/foreach}
{/strip}
                                        <div class="cl"></div>
                    </ul>
{/if}
                </li>
{/foreach}
{if $ADMIN || $INSTITUTIONALADMIN || $STAFF || $INSTITUTIONALSTAFF}
                <li class="returntosite"><span><a href="{$WWWROOT}" accesskey="h" class="return-site">{str tag="returntosite"}</a></span></li>
{elseif $USER->get('admin')}
                <li class="siteadmin"><span><a href="{$WWWROOT}admin/" accesskey="a" class="admin-site">{str tag="administration"}</a></span></li>
{elseif $USER->is_institutional_admin()}
                <li class="instituteadmin"><span><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="admin-user">{str tag="administration"}</a></span></li>
{elseif $USER->get('staff')}
                <li class="siteinfo"><span><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="admin-user">{str tag="siteinformation"}</a></span></li>
{elseif $USER->is_institutional_staff()}
                <li class="instituteinfo"><span><a href="{$WWWROOT}admin/users/search.php" accesskey="a" class="admin-user">{str tag="institutioninformation"}</a></span></li>
{/if}
            {/strip}</ul>
            
         <button onclick="TogetherJS(this); return false;" style="float: right;">Team Work</button>  
        </div> 
        
        
        
          </div>  

   
        {else}
        <div id="cont"> </div>
        {/if}
        
        
        