// ==UserScript==
// @name         Jira PR Autofiller
// @namespace    Goshawks
// @version      1.0
// @description  Autofills reviewers when opening a peer review on Jira
// @author       Fernando F. A.
// @match        http://mlbbitbucket:7990/*/pull-requests*
// @grant        none
// ==/UserScript==

window.onload = function ()
{
   setTimeout(function ()
   {
        var select2choices = document.getElementsByClassName("select2-choices");
        select2choices[0].innerHTML = ' \
            <li class="select2-search-choice"> \
                <div> \
                    <div class="avatar-with-name" title=""><span class="aui-avatar aui-avatar-xsmall user-avatar" data-username="tadeu.hayashida"><span class="aui-avatar-inner"><img src="/users/tadeu.hayashida/avatar.png?s=32&amp;v=1502839155000" alt="Tadeu Hayashida"></span></span><span class="display-name">Tadeu Hayashida</span></div> \
                </div> <a href="#" onclick="return false;" class="select2-search-choice-close" tabindex="-1"></a></li> \
            <li class="select2-search-choice"> \
                <div> \
                    <div class="avatar-with-name" title="Vinicius Pavia"><span class="aui-avatar aui-avatar-xsmall user-avatar" data-username="vinicius.pavia"><span class="aui-avatar-inner"><img src="/users/vinicius.pavia/avatar.png?s=32&amp;v=1474898126000" alt="Vinicius Pavia"></span></span><span class="display-name">Vinicius Pavia</span></div> \
                </div> <a href="#" onclick="return false;" class="select2-search-choice-close" tabindex="-1"></a></li> \
            <li class="select2-search-choice"> \
                <div> \
                    <div class="avatar-with-name" title="Arthur Gomes"><span class="aui-avatar aui-avatar-xsmall user-avatar" data-username="arthur.gomes"><span class="aui-avatar-inner"><img src="/users/arthur.gomes/avatar.png?s=32&amp;v=1480509729000" alt="Arthur Gomes"></span></span><span class="display-name">Arthur Gomes</span></div> \
                </div> <a href="#" onclick="return false;" class="select2-search-choice-close" tabindex="-1"></a></li> \
            <li class="select2-search-choice"> \
                <div> \
                    <div class="avatar-with-name" title="Andre Perussi"><span class="aui-avatar aui-avatar-xsmall user-avatar" data-username="andre.perussi"><span class="aui-avatar-inner"><img src="/users/andre.perussi/avatar.png?s=32&amp;v=1500654272000" alt="Andre Perussi"></span></span><span class="display-name">Andre Perussi</span></div> \
                </div> <a href="#" onclick="return false;" class="select2-search-choice-close" tabindex="-1"></a></li> \
            <li class="select2-search-choice"> \
                <div> \
                    <div class="avatar-with-name" title="Matheus Carvalho"><span class="aui-avatar aui-avatar-xsmall user-avatar" data-username="matheus.carvalho"><span class="aui-avatar-inner"><img src="/users/matheus.carvalho/avatar.png?s=32&amp;v=1500665039000" alt="Matheus Carvalho"></span></span><span class="display-name">Matheus Carvalho</span></div> \
                </div> <a href="#" onclick="return false;" class="select2-search-choice-close" tabindex="-1"></a></li> \
            <li class="select2-search-choice"> \
                <div> \
                    <div class="avatar-with-name" title="Lucas Severo"><span class="aui-avatar aui-avatar-xsmall user-avatar" data-username="lucas.severo"><span class="aui-avatar-inner"><img src="/users/lucas.severo/avatar.png?s=32&amp;v=1515433936000" alt="Lucas Severo"></span></span><span class="display-name">Lucas Severo</span></div> \
                </div> <a href="#" onclick="return false;" class="select2-search-choice-close" tabindex="-1"></a></li> \
            <li class="select2-search-choice"> \
                <div> \
                    <div class="avatar-with-name" title="Camylla Cantanheide"><span class="aui-avatar aui-avatar-xsmall user-avatar" data-username="camylla.cantanheide"><span class="aui-avatar-inner"><img src="http://www.gravatar.com/avatar/7b270d739458e5074f892a93ddf39d85.jpg?s=32&amp;d=mm" alt="Camylla Cantanheide" class="hoverZoomLink"></span></span><span class="display-name">Camylla Cantanheide</span></div> \
                </div> <a href="#" onclick="return false;" class="select2-search-choice-close" tabindex="-1"></a></li> \
            <li class="select2-search-field"> \
                <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" id="s2id_autogen1" style="width: 10px;"> </li> \
        ';
   }, 1000);
};