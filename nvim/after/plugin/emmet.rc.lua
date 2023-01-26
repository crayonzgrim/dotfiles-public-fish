local status, emmet = pcall(require, "emmet-vim")
if (not status) then return end

emmet.setup {}
