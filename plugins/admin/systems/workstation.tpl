<h2><img alt="" align="middle" src="images/rightarrow.png"> {t}Properties{/t}</h2>
<table summary="" style="width:100%;">
 <tr>
  <td style="width:50%; vertical-align:top;">

   <table summary="">
    <tr>
     {if $cn eq 'wdefault'}
     <td colspan=2>{t}Workstation template{/t}</td>
     {else}
     <td>{t}Workstation name{/t}{$must}</td>
     <td>
      <input name="cn" size=18 maxlength=60 value="{$cn}">
     </td>
     {/if}
    </tr>
    <tr>
     <td>{t}Base{/t}{$must}</td>
     <td>
      <select size="1" name="base" title="{t}Choose subtree to place terminal in{/t}">
       {html_options options=$bases selected=$base_select}
      </select>
    </tr>
   </table>

  </td>

  <td rowspan=2 style="border-left:1px solid #A0A0A0">
   &nbsp;
  </td>

  <td style="vertical-align:top;">

   <table summary="">
    <tr>
     <td>{t}Mode{/t}</td>
     <td>
      <select name="gotoMode" title="{t}Select terminal mode{/t}" {$gotoModeACL}>
       {html_options options=$modes selected=$gotoMode_select}
      </select>
     </td>
    </tr>
   </table>

  </td>
 </tr>
 <tr>
  <td style="width:50%;">
   <table summary="">
    <tr><td colspan=2><div style="height:15px;"></div></td></tr>
    <tr>
     <td>{t}Root server{/t}</td>
     <td>
      <select name="gotoTerminalPath" title="{t}Select NFS root filesystem to use{/t}" {$gotoTerminalPathACL}>
       {html_options values=$nfsservers output=$nfsservers selected=$gotoTerminalPath_select}
      </select>
     </td>
    </tr>
    <tr>
     <td>{t}Swap server{/t}</td>
     <td>
      <select name="gotoSwapServer" title="{t}Choose NFS filesystem to place swap files on{/t}" {$gotoSwapServerACL}>
       {html_options values=$nfsservers output=$nfsservers selected=$gotoSwapServer_select}
      </select>
     </td>
    </tr>
   </table>
  </td>
  <td style="vertical-align:top;">

   <table summary="">
    <tr><td colspan=2><div style="height:15px;"></div></td></tr>
    <tr>
     <td>{t}Syslog server{/t}</td>
     <td>
      <select name="gotoSyslogServer" title="{t}Choose server to use for logging{/t}" {$gotoSyslogServerACL}>
       {html_options values=$syslogservers output=$syslogservers selected=$gotoSyslogServer_select}
      </select>
     </td>
    </tr>
    <tr>
     <td>{t}NTP server{/t}</td>
     <td>
      <select name="gotoNtpServer" title="{t}Choose server to use for synchronizing time{/t}" {$gotoNtpServerACL}>
       {html_options values=$ntpservers output=$ntpservers selected=$gotoNtpServer_select}
      </select>
     </td>
    </tr>
   </table>

  </td>
 </tr>
</table>
<p class="plugbottom" style="margin-bottom:0px; padding:0px;">&nbsp;</p>

{include file="$netconfig"}

<p class="plugbottom" style="margin-bottom:0px; padding:0px;">&nbsp;</p>
<h2><img alt="" align="middle" src="images/rocket.png"> {t}Action{/t}</h2>
<table summary="">
 <tr>
  <td>
   <select size="1" name="saction" {$actionACL} title="{t}Select action to execute for this terminal{/t}">
    <option disabled>&nbsp;</option>
    {html_options options=$actions}
   </select>
  </td>
  <td>
   <input type=submit name="action" value="{t}Execute{/t}">
  </td>
 </tr>
</table>


<!-- Place cursor -->
<script language="JavaScript" type="text/javascript">
  <!-- // First input field on page
  document.mainform.gotoTerminalName.focus();
  -->
</script>
