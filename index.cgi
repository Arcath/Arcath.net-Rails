<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	
	<title>Main page - SmoothWall Express</title>
	<script language='javascript' SRC='/ui/js/script.js'></script>
	<link href='/ui/css/style.css' rel='stylesheet' type='text/css'>
</head>
<body>
<table class='main'>
<tr>
	<td class='logo' rowspan='2'>
	</td><td class='header'>
	</td> 
</tr>
<tr>
	<td class='mainmenu'>
	<script>
		function menu_clear( me )
		{
			if( me != 'About') document.getElementById('About').style.display = 'none';
			if( me != 'About') document.getElementById('Aboutshadow').style.display = 'none';
			if( me != 'Services') document.getElementById('Services').style.display = 'none';
			if( me != 'Services') document.getElementById('Servicesshadow').style.display = 'none';
			if( me != 'Networking') document.getElementById('Networking').style.display = 'none';
			if( me != 'Networking') document.getElementById('Networkingshadow').style.display = 'none';
			if( me != 'VPN') document.getElementById('VPN').style.display = 'none';
			if( me != 'VPN') document.getElementById('VPNshadow').style.display = 'none';
			if( me != 'Logs') document.getElementById('Logs').style.display = 'none';
			if( me != 'Logs') document.getElementById('Logsshadow').style.display = 'none';
			if( me != 'Tools') document.getElementById('Tools').style.display = 'none';
			if( me != 'Tools') document.getElementById('Toolsshadow').style.display = 'none';
			if( me != 'Maintenance') document.getElementById('Maintenance').style.display = 'none';
			if( me != 'Maintenance') document.getElementById('Maintenanceshadow').style.display = 'none';
		}
		function menu_show( what ){
			menu_clear();
			document.getElementById(what).style.display = 'block';
			document.getElementById( what+'shadow' ).style.display = 'block';
		}
	</script>
<table style='float: right;'>
<tr>
<td><a class='activemenu' href='/cgi-bin/index.cgi'>Control</a></td> 
							<td><div class='menushaddow' id='Aboutshadow'> 
						<a class='menushade' href='/cgi-bin/status.cgi'>status</a><br/><a class='menushade' href='/cgi-bin/advstatus.cgi'>advanced</a><br/><a class='menushade' href='/cgi-bin/graphs.cgi'>traffic graphs</a><br/><a class='menushade' href='/cgi-bin/bandwidthbars.cgi'>bandwidth bars</a><br/><a class='menushade' href='/cgi-bin/trafficmonitor.cgi'>traffic monitor</a><br/><a class='menushade' href='/cgi-bin/register.cgi'>my smoothwall</a><br/> 
							</div>
						 <div class='menu' id='About' 
							onMouseOver="menu_show('About')" 
							onMouseOut="menu_clear();"> 
						<a class='menushade' href='/cgi-bin/status.cgi'>status</a><br/><a class='menushade' href='/cgi-bin/advstatus.cgi'>advanced</a><br/><a class='menushade' href='/cgi-bin/graphs.cgi'>traffic graphs</a><br/><a class='menushade' href='/cgi-bin/bandwidthbars.cgi'>bandwidth bars</a><br/><a class='menushade' href='/cgi-bin/trafficmonitor.cgi'>traffic monitor</a><br/><a class='menushade' href='/cgi-bin/register.cgi'>my smoothwall</a><br/> 
							</div></td>	
							<td 	onMouseOver="menu_show('About')" 
								onMouseOut="menu_clear();">
								 | <a class='menu' href='/cgi-bin/status.cgi'>About</a>
							</td>
						 
							<td><div class='menushaddow' id='Servicesshadow'> 
						<a class='menushade' href='/cgi-bin/proxy.cgi'>web proxy</a><br/><a class='menushade' href='/cgi-bin/im.cgi'>im proxy</a><br/><a class='menushade' href='/cgi-bin/p3scan.cgi'>pop3 proxy</a><br/><a class='menushade' href='/cgi-bin/sipproxy.cgi'>sip proxy</a><br/><a class='menushade' href='/cgi-bin/dhcp.cgi'>dhcp</a><br/><a class='menushade' href='/cgi-bin/ddns.cgi'>dynamic dns</a><br/><a class='menushade' href='/cgi-bin/hosts.cgi'>static dns</a><br/><a class='menushade' href='/cgi-bin/ids.cgi'>ids</a><br/><a class='menushade' href='/cgi-bin/remote.cgi'>remote access</a><br/><a class='menushade' href='/cgi-bin/time.cgi'>time</a><br/> 
							</div>
						 <div class='menu' id='Services' 
							onMouseOver="menu_show('Services')" 
							onMouseOut="menu_clear();"> 
						<a class='menushade' href='/cgi-bin/proxy.cgi'>web proxy</a><br/><a class='menushade' href='/cgi-bin/im.cgi'>im proxy</a><br/><a class='menushade' href='/cgi-bin/p3scan.cgi'>pop3 proxy</a><br/><a class='menushade' href='/cgi-bin/sipproxy.cgi'>sip proxy</a><br/><a class='menushade' href='/cgi-bin/dhcp.cgi'>dhcp</a><br/><a class='menushade' href='/cgi-bin/ddns.cgi'>dynamic dns</a><br/><a class='menushade' href='/cgi-bin/hosts.cgi'>static dns</a><br/><a class='menushade' href='/cgi-bin/ids.cgi'>ids</a><br/><a class='menushade' href='/cgi-bin/remote.cgi'>remote access</a><br/><a class='menushade' href='/cgi-bin/time.cgi'>time</a><br/> 
							</div></td>	
							<td 	onMouseOver="menu_show('Services')" 
								onMouseOut="menu_clear();">
								 | <a class='menu' href='/cgi-bin/proxy.cgi'>Services</a>
							</td>
						 
							<td><div class='menushaddow' id='Networkingshadow'> 
						<a class='menushade' href='/cgi-bin/portfw.cgi'>incoming</a><br/><a class='menushade' href='/cgi-bin/outgoing.cgi'>outgoing</a><br/><a class='menushade' href='/cgi-bin/dmzholes.cgi'>internal</a><br/><a class='menushade' href='/cgi-bin/xtaccess.cgi'>external access</a><br/><a class='menushade' href='/cgi-bin/ipblock.cgi'>ip block</a><br/><a class='menushade' href='/cgi-bin/timedaccess.cgi'>timed access</a><br/><a class='menushade' href='/cgi-bin/traffic.cgi'>qos</a><br/><a class='menushade' href='/cgi-bin/advnet.cgi'>advanced</a><br/><a class='menushade' href='/cgi-bin/pppsetup.cgi'>ppp</a><br/><a class='menushade' href='/cgi-bin/interfaces.cgi'>interfaces</a><br/> 
							</div>
						 <div class='menu' id='Networking' 
							onMouseOver="menu_show('Networking')" 
							onMouseOut="menu_clear();"> 
						<a class='menushade' href='/cgi-bin/portfw.cgi'>incoming</a><br/><a class='menushade' href='/cgi-bin/outgoing.cgi'>outgoing</a><br/><a class='menushade' href='/cgi-bin/dmzholes.cgi'>internal</a><br/><a class='menushade' href='/cgi-bin/xtaccess.cgi'>external access</a><br/><a class='menushade' href='/cgi-bin/ipblock.cgi'>ip block</a><br/><a class='menushade' href='/cgi-bin/timedaccess.cgi'>timed access</a><br/><a class='menushade' href='/cgi-bin/traffic.cgi'>qos</a><br/><a class='menushade' href='/cgi-bin/advnet.cgi'>advanced</a><br/><a class='menushade' href='/cgi-bin/pppsetup.cgi'>ppp</a><br/><a class='menushade' href='/cgi-bin/interfaces.cgi'>interfaces</a><br/> 
							</div></td>	
							<td 	onMouseOver="menu_show('Networking')" 
								onMouseOut="menu_clear();">
								 | <a class='menu' href='/cgi-bin/portfw.cgi'>Networking</a>
							</td>
						 
							<td><div class='menushaddow' id='VPNshadow'> 
						<a class='menushade' href='/cgi-bin/vpnmain.cgi'>control</a><br/><a class='menushade' href='/cgi-bin/vpn.cgi/vpnconfig.dat'>connections</a><br/> 
							</div>
						 <div class='menu' id='VPN' 
							onMouseOver="menu_show('VPN')" 
							onMouseOut="menu_clear();"> 
						<a class='menushade' href='/cgi-bin/vpnmain.cgi'>control</a><br/><a class='menushade' href='/cgi-bin/vpn.cgi/vpnconfig.dat'>connections</a><br/> 
							</div></td>	
							<td 	onMouseOver="menu_show('VPN')" 
								onMouseOut="menu_clear();">
								 | <a class='menu' href='/cgi-bin/vpnmain.cgi'>VPN</a>
							</td>
						 
							<td><div class='menushaddow' id='Logsshadow'> 
						<a class='menushade' href='/cgi-bin/logs.cgi/log.dat'>system</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/proxylog.dat'>web proxy</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/firewalllog.dat'>firewall</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/ids.dat'>ids</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/imviewer.cgi'>instant messages</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/pop3log.dat'>email</a><br/> 
							</div>
						 <div class='menu' id='Logs' 
							onMouseOver="menu_show('Logs')" 
							onMouseOut="menu_clear();"> 
						<a class='menushade' href='/cgi-bin/logs.cgi/log.dat'>system</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/proxylog.dat'>web proxy</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/firewalllog.dat'>firewall</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/ids.dat'>ids</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/imviewer.cgi'>instant messages</a><br/><a class='menushade' href='/cgi-bin/logs.cgi/pop3log.dat'>email</a><br/> 
							</div></td>	
							<td 	onMouseOver="menu_show('Logs')" 
								onMouseOut="menu_clear();">
								 | <a class='menu' href='/cgi-bin/logs.cgi/log.dat'>Logs</a>
							</td>
						 
							<td><div class='menushaddow' id='Toolsshadow'> 
						<a class='menushade' href='/cgi-bin/ipinfo.cgi'>ip information</a><br/><a class='menushade' href='/cgi-bin/iptools.cgi'>ip tools</a><br/><a class='menushade' href='/cgi-bin/shell.cgi'>shell</a><br/> 
							</div>
						 <div class='menu' id='Tools' 
							onMouseOver="menu_show('Tools')" 
							onMouseOut="menu_clear();"> 
						<a class='menushade' href='/cgi-bin/ipinfo.cgi'>ip information</a><br/><a class='menushade' href='/cgi-bin/iptools.cgi'>ip tools</a><br/><a class='menushade' href='/cgi-bin/shell.cgi'>shell</a><br/> 
							</div></td>	
							<td 	onMouseOver="menu_show('Tools')" 
								onMouseOut="menu_clear();">
								 | <a class='menu' href='/cgi-bin/ipinfo.cgi'>Tools</a>
							</td>
						 
							<td><div class='menushaddow' id='Maintenanceshadow'> 
						<a class='menushade' href='/cgi-bin/updates.cgi'>updates</a><br/><a class='menushade' href='/cgi-bin/modem.cgi'>modem</a><br/><a class='menushade' href='/cgi-bin/alcateladslfw.cgi'>speedtouch usb firmware</a><br/><a class='menushade' href='/cgi-bin/changepw.cgi'>passwords</a><br/><a class='menushade' href='/cgi-bin/backup.img'>backup</a><br/><a class='menushade' href='/cgi-bin/preferences.cgi'>preferences</a><br/><a class='menushade' href='/cgi-bin/shutdown.cgi'>shutdown</a><br/> 
							</div>
						 <div class='menu' id='Maintenance' 
							onMouseOver="menu_show('Maintenance')" 
							onMouseOut="menu_clear();"> 
						<a class='menushade' href='/cgi-bin/updates.cgi'>updates</a><br/><a class='menushade' href='/cgi-bin/modem.cgi'>modem</a><br/><a class='menushade' href='/cgi-bin/alcateladslfw.cgi'>speedtouch usb firmware</a><br/><a class='menushade' href='/cgi-bin/changepw.cgi'>passwords</a><br/><a class='menushade' href='/cgi-bin/backup.img'>backup</a><br/><a class='menushade' href='/cgi-bin/preferences.cgi'>preferences</a><br/><a class='menushade' href='/cgi-bin/shutdown.cgi'>shutdown</a><br/> 
							</div></td>	
							<td 	onMouseOver="menu_show('Maintenance')" 
								onMouseOut="menu_clear();">
								 | <a class='menu' href='/cgi-bin/updates.cgi'>Maintenance</a>
							</td>
						</tr></table></td>
</tr>
<tr>
	<td colspan='2' class='quicklink'>
		<!-- Quicklink Section -->
		<a href='/cgi-bin/shutdown.cgi'>shutdown</a> | <a href="javascript:displayHelp('index.cgi');" title="This will popup a new window with the requested help file">help</a> <img src="/ui/img/help.gif" alt="">
	</td>
</tr>


<!-- Create the top menu -->

<tr>
	<td colspan='2'>
	<br/>
<table class='mainmenu'>
<tr>
<td class='activetab' style='width: 56px;'><a href='/cgi-bin/index.cgi'>home</a> </td>	<td width='755px;' class='endtab'>&nbsp;</td>
	<td class='topend'></td>
</tr>
<tr>
	<td class='mainbody' colspan='2'> 
<br/>
<table class='note'><tr><td class='note'>
Welcome to <strong>SmoothWall Express</strong> 3.0-polar-i386<br>
This is your gateway to configuring and administering your SmoothWall
firewall.  Further information on your SmoothWall Express is available from <a href='http://www.smoothwall.org/'
 title='www.smoothwall.org - external link'>our website</a>.
</td>	</tr>
</table>
<br/>
<table class='box'>
<tr>
	<td>
<div style='width: 100%; text-align: center;'><a href='/cgi-bin/register.cgi'><img src='/ui/img/frontpage/frontpage.x3.jpg' alt='SmoothWall Express'/></a></div>	</td>
</tr>
</table>
<br/>
<br/>
<table class='box'>
<tr>
	<td>
<table class='centered'>
	<tr>
		<td style='text-align: right; vertical-align: top;'><img src='/ui/img/netstatus.connected.gif' alt='' style='float: right;'></td>
		<td>&nbsp;</td>
<td style='vertical-align: top;'>
<table style='width: 100%; border-collapse: collapse;'><tr><td><strong>Local:</strong></td><td>83.104.60.204</td></tr><tr><td><strong>Remote:</strong></td><td>194.159.161.32</td></tr>		<tr><td>Current:</td><td>11.6 Kbit/s / 145.9 Kbit/s (Out / In)</td></tr> 
		<tr><td>Today:</td><td>62.5 MB / 408.7 MB (Out / In)</td></tr>
		<tr><td>Month:</td><td>245.2 MB / 3.0 GB (Out / In)</td></tr>
</table>

	<table style='width: 100%;'>
	<form method='post' action='/cgi-bin/dial.cgi'>
	<tr>
		<td style='text-align: center;'><input type='submit' name='ACTION' value="Connect"></td>
		<td>&nbsp;&nbsp;</td>
		<td style='text-align: center;'><input type='submit' name='ACTION' value="Disconnect"></td>
		<td>&nbsp;&nbsp;</td>
		</form>
		<form method='post'>
		<td style='text-align: center;'><input type='submit' name='ACTION' value="Refresh"></td>
	</tr>
	</form>
</table>
<br/>
<strong>Current profile: Demon</strong><br/>
Connected (<FONT COLOR='#b04040'>7d 19h 19m 42s</FONT>)
		</td>
<td>&nbsp;</td><td style='vertical-align: top;'><img src='/rrdtool/red-day_preview.png' alt='traffic'></td>
</td>	</tr>
</table>
	</td>
</tr>
</table>
<br/>
<br/>
<table class='note'><tr><td class='note'>Your update file is  7d 19h 19m 17s  old. We recommend you update it on the "Updates" page.</td>	</tr>
</table>
<br/><table class='blank'><tr><td class='note'> 11:25:51 up 7 days, 19:34,  0 users,  load average: 0.00, 0.00, 0.00
</td></tr></table>
	</td>
	<td class='end'></td>
	</tr>
	<tr>
		<td colspan='2' class='bottom'></td>
		<td class='bottomright'></td>
	</tr>
		<!-- End of the Main Body -->
</table>
	<br/>
	</td>
</tr>
<tr><td colspan='2' style='background-color: #909090; height: 6px;'></td></tr>
<tr>
	<td class='footer' style='height: 38px;' colspan='2'>
	<table class='blank'>
	<tr>
		<td>
		    	<strong>SmoothWall Express 3.0-polar-i386</strong><br/>
			SmoothWall&trade; is a trademark of <a href='http://www.smoothwall.net/'>SmoothWall Limited</a>.
		</td>
		<td style='text-align: right;'>
		    	&copy; 2000 - 2007 <a href='http://smoothwall.org/team/'>The SmoothWall Team</a><br/>
			<a href='/cgi-bin/register.cgi'>Credits</a> - Portions &copy; <a href='http://smoothwall.org/sources.html'>original authors</a>
		</td>
	</tr>
	</table>
	</td>
</tr> 
</table>
	<script language='javascript' SRC='/ui/js/wz_tooltip.js'></script>
	<script>
	</script>
	</body>
	</html>
