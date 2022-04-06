 param(
    [string] $video_id
  )
(New-Object System.Net.WebClient).DownloadString("https://api.tiktokv.com/aweme/v1/multi/aweme/detail/?aweme_ids=%5B"+$video_id+"%5D") | ConvertFrom-Json | % {$_.aweme_details[0].video.play_addr.url_list[0]}