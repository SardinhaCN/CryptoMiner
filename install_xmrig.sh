#!/bin/bash
set -e

echo "🔧 Baixando e compilando o XMRig..."

# Diretório de destino
INSTALL_DIR="/opt/cryptominer"
mkdir -p "$INSTALL_DIR"
cd /opt/cryptominer/

# Baixar o XMRig se ainda não existir
if [ ! -d "xmrig" ]; then
    git clone https://github.com/xmrig/xmrig.git
fi

cd xmrig

# Criar diretório de build
mkdir -p build
cd build

# Rodar cmake e make
cmake ..
make -j$(nproc)

# Copiar binário para o destino
cp xmrig "$INSTALL_DIR/xmrig"
cd ..
cd ..
sudo chmod +x usr/local/bin/cryptominer
sudo chmod +x usr/local/bin/cryptominerDialog
echo "✅ XMRig instalado com sucesso em: $INSTALL_DIR/xmrig"
