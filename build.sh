git pull
set -o allexport && . ./.env && set +o allexport
#TodayUnix=$(date -v-2d +%s)
TodayUnix=$(date +%s -d "2 days ago")
curl --request GET --url https://raid-helper.dev/api/v3/servers/$RAIDHELPER_SERVER_ID/events --header "Authorization: $RAIDHELPER_API" --header "StartTimeFilter: $TodayUnix" > data/events.json
hugo -D
swa deploy --env production