<?php
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL,"https://api.chatwork.com/v2/rooms/{room-id}/messages");
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_POSTFIELDS,"body=".urlencode(shell_exec('sh /path/to/file/bash_deploy')));
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('X-ChatWorkToken: {Access-token}'));
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$server_output = curl_exec ($ch);
	curl_close ($ch);
?>
