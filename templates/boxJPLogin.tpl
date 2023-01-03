{if $canLogInOrRegister}
    <h2 class="boxTitle">{lang}wcf.user.loginOrRegister{/lang}</h2>

    <div class="boxContent">
        <div class="sidebarAvatar">{@$__wcf->getUserProfileHandler()->getAvatar()->getImageTag(128)}</div>
        {if !$__disableLoginLink|isset}
            <p>{lang}wcf.jpLoginBox.welcomeGuest{/lang}</p>

            <a class="loginLink button buttonPrimary" href="{link controller='Login' url=$__wcf->getRequestURI()}{/link}">{lang}wcf.user.loginOrRegister{/lang}</a>
        {/if}
    </div>
{else}
    <h2 class="boxTitle">{lang}wcf.jpLoginBox.welcomeBack{/lang}</h2>

    <div class="boxContent">
        <div class="sidebarAvatar">{@$__wcf->getUserProfileHandler()->getAvatar()->getImageTag(128)}</div>
            {lang}wcf.jpLoginBox.userGreeting{/lang}

        <form method="post" action="{link controller='Logout'}{/link}">
            <button type="submit" class="button buttonPrimary logoutButton">{lang}wcf.user.logout{/lang}</button>
            {csrfToken}
        </form>

        {if $canUseAcp}
            <a href="{link isACP=true}{/link}" class="useAcpLink button buttonPrimary">{lang}wcf.global.acp{/lang}</a>
        {/if}
    </div>
{/if}