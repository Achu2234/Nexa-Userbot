echo "Nexa Userbot is starting now..."

if [[ -z "$PYRO_STR_SESSION" && -z "$TELE_STR_SESSION" ]]
then
	echo "Please add Pyrogram or Telethon String Session!"
elif [[ -z "$PYRO_STR_SESSION" ]]
then
	python -m pyrogram_ub
elif [[ -z "$TELE_STR_SESSION" ]]
then
	python -m telethon_ub
else
	python -m pyrogram_ub & python -m telethon_ub
	exit 1
fi
