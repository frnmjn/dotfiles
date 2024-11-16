alias prima="cd ~/Repos/prima/prima"
alias prima-up="prima && docker compose up -d && docker compose logs -f web fe-builder"

alias stonehenge="cd ~/Repos/prima/stonehenge"
alias stonehenge-up="stonehenge && docker-compose --profile host pull && docker-compose --profile host up -d"

alias es-be="cd ~/Repos/prima/es-be"
alias es-be-up="es-be && docker-compose up -d postgres jaeger aws datadog auth0 rabbit control-center"

alias chc="cd ~/Repos/prima/contract-holder-communication"
alias chc-up="chc && docker compose run --service-ports app bash"

alias peano="cd ~/Repos/prima/peano"
alias peano-up="peano && docker compose run --service-ports web bash"

alias vianello="cd ~/Repos/prima/vianello"
alias vianello-up="vianello && docker-compose -f docker-compose.yml -f docker-compose.services.yml run --service-ports web bash"

alias artemis-up="prima && docker compose -f docker-compose-artemis.yml up -d"

alias sbarter="cd ~/Repos/prima/sbarter"

alias vault-login="vault login -method=oidc -path=okta --no-print"
alias aws-login="aws sso login --profile=AcquisitionsDevOpsChampionIT"
