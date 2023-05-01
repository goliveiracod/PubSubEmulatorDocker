FROM google/cloud-sdk:emulators

# Crie um diretório para armazenar os dados do emulador
RUN mkdir -p /tmp/pubsub-emulator

# Defina as variáveis de ambiente
ENV PUBSUB_EMULATOR_HOST=0.0.0.0:8085
ENV PUBSUB_PROJECT_ID=local-project
ENV PUBSUB_EMULATOR_DATA_DIR=/tmp/pubsub-emulator

# Exponha a porta padrão do emulador
EXPOSE 8085

# Inicie o emulador do Pub/Sub
CMD ["sh", "-c", "gcloud beta emulators pubsub start --host-port=$PUBSUB_EMULATOR_HOST --data-dir=$PUBSUB_EMULATOR_DATA_DIR --project=$PUBSUB_PROJECT_ID"]