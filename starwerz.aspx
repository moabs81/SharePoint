<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
    <SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
 
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <!-- import jQuery -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
         
    <!-- Write script to toggle class on scroll -->
    <script type="text/javascript">
    $(function() { // When the page is done loading...
        $('#s4-workspace').scroll(function() { // Monitor scrolling
            if ($(this).scrollTop() > 1) { // And if you have
                $('#s4-titlerow').addClass("condensed"); // condense!
            } else {
                $('#s4-titlerow').removeClass("condensed"); // expand!
            }
        });
    });
    </script>
</asp:Content>
 
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
    <WebPartPages:SPProxyWebPartManager runat="server" id="spproxywebpartmanager"></WebPartPages:SPProxyWebPartManager>
     
    <nav class="film-selector">
        <p>Star Wars Film Selector:</p>
        <ul>
            <li><a href="">I</a></li>
            <li><a href="">II</a></li>
            <li><a href="">III</a></li>
            <li><a href="">IV</a></li>
            <li><a href="">V</a></li>
            <li><a href="">VI</a></li>
            <li><a href="">VII</a></li>
            <li><a href="https://my.ncsecu.org/personal/s22307n/TestTeamSite/SiteAssets/NCSECU%20Logo.gif">Rogue One</a></li>
        </ul>
    </nav>
     
    <article class="content-block">
        <!-- Page Image -->
        <PublishingWebControls:RichImageField FieldName="3de94b06-4120-41a5-b907-88773e493458" runat="server"></PublishingWebControls:RichImageField>
         
        <!-- Page Content RTE -->
        <PublishingWebControls:RichHtmlField FieldName="f55c4d88-1f2e-4ad9-aaa8-819af4ee7ee8" runat="server"></PublishingWebControls:RichHtmlField>
    </article>
     
    <article class="content-parts">
        <WebPartPages:WebPartZone id="g_A7046AEDA7B34ED8A899F6700A1642C3" runat="server" title="Post Content"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
    </article>
     
    <!-- Header social links -->
    <nav class="social-1">
        <ul>
            <li><a href="https://www.facebook.com/StarWars">Facebook</a></li>
            <li><a href="http://starwars.tumblr.com/">Tumblr</a></li>
            <li><a href="https://twitter.com/starwars">Twitter</a></li>
            <li><a href="http://instagram.com/starwars">Instagram</a></li>
            <li><a href="https://plus.google.com/+StarWars/posts">Google+</a></li>
            <li><a href="http://www.youtube.com/user/starwars">YouTube</a></li>
            <li>Show Disney.com</li>
        </ul>
    </nav>
</asp:Content>
 
<asp:Content ContentPlaceholderID="PlaceHolderQuickLaunchBottom" runat="server">
    <p>Follow Star Wars:</p>
    <!-- Footer social links -->
    <nav class="social-2">
        <ul>
            <li><a href="https://www.facebook.com/StarWars">Facebook</a></li>
            <li><a href="http://starwars.tumblr.com/">Tumblr</a></li>
            <li><a href="https://twitter.com/starwars">Twitter</a></li>
            <li><a href="http://instagram.com/starwars">Instagram</a></li>
            <li><a href="https://plus.google.com/+StarWars/posts">Google+</a></li>
            <li><a href="http://www.youtube.com/user/starwars">YouTube</a></li>
        </ul>
    </nav>
    <p>TM &amp; © Lucasfilm Ltd. All Rights Reserved.</p>
</asp:Content>