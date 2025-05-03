
function CreateFolder(index, name)
  reaper.InsertTrackAtIndex(index, false)
  folder = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(folder, 'P_NAME', name, true)
  reaper.SetMediaTrackInfo_Value( folder, 'I_FOLDERDEPTH',1)
  reaper.SetMediaTrackInfo_Value(folder, 'I_FOLDERCOMPACT', 0)
end

function ImportAudio(index, channel, trackName, fileName, lastInFolder)
  local folderDepth = 0
  if lastInFolder then folderDepth = -1 end

  reaper.SetEditCurPos(0, false, false)
  reaper.InsertTrackAtIndex(index, false)
  tr = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(tr, 'P_NAME', trackName, true)
  reaper.SetMediaTrackInfo_Value( tr, 'I_FOLDERDEPTH',folderDepth)
  reaper.SetOnlyTrackSelected(tr, true)
  reaper.InsertMedia(fileName, 0)
  item = reaper.GetTrackMediaItem(tr, 0)
  take = reaper.GetActiveTake(item)
  reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", channel + 64 + 2)
end

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/stage/concreteMusic14Score_v1.caf"

CreateFolder(0, "Low Sound")
ImportAudio(1, 1, "Low Sound Effect", audioFile, false)
ImportAudio(2, 3, "Low Sound Clean", audioFile, true)

CreateFolder(3, "Low Dust")
ImportAudio(4, 5, "Low Dust Effect", audioFile, false)
ImportAudio(5, 7, "Low Dust Clean", audioFile, true)

CreateFolder(6, "Low Noise")
ImportAudio(7, 9, "Low Noise Effect", audioFile, false)
ImportAudio(8, 11, "Low Noise Clean", audioFile, true)

CreateFolder(9, "High Sound")
ImportAudio(10, 13, "High Sound Effect", audioFile, false)
ImportAudio(11, 15, "High Sound Clean", audioFile, true)

CreateFolder(12, "High Dust")
ImportAudio(13, 17, "High Dust Effect", audioFile, false)
ImportAudio(14, 19, "High Dust Clean", audioFile, true)

CreateFolder(15, "High Noise")
ImportAudio(16, 21, "High Noise Effect", audioFile, false)
ImportAudio(17, 23, "High Noise Clean", audioFile, true)

