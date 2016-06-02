cd /Users/brian/dev/projects/github/liferay-portal-7.0.x/modules && ../gradlew :apps:web-experience:trash:trash-web:buildChangeLog --daemon -Dforced.cache.enabled=true && git add .releng/apps/web-experience/trash/trash-web/liferay-releng.changelog && (git diff-index --quiet HEAD || git commit --message="artifact:ignore trash-web 1.0.4 change log") && ../gradlew :apps:web-experience:trash:trash-web:baseline --daemon -Dforced.cache.enabled=true && git add --all apps/web-experience/trash/trash-web && (git diff-index --quiet HEAD || git commit --message="trash-web 1.0.4 packageinfo") && ../gradlew :apps:web-experience:trash:trash-web:uploadArchives --daemon -Dforced.cache.enabled=true -Psnapshot && ../gradlew :apps:web-experience:trash:trash-web:uploadArchives --daemon -Dforced.cache.enabled=true && git add apps/web-experience/trash/trash-web/bnd.bnd && git commit --message="artifact:ignore trash-web 1.0.4 prep next" && git add .releng/apps/web-experience/trash/trash-web/artifact.properties && git commit --message="artifact:ignore trash-web 1.0.4 artifact properties" && (git diff-index --quiet HEAD || git commit --all --message="trash-web 1.0.4 apply")