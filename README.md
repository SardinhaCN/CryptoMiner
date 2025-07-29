# 🧱 CryptoMiner - só para o CasaOS | Em breve para o Termux!

**Versão 0.0.1**

CLI para facilitar a instalação e execução do XMRig no Linux.

---

## 📋 Overview

O **CryptoMiner** é uma ferramenta de linha de comando que:
- oferece interface interativa via `dialog` para configuração da mineração;
- faz download e compilação automática do **XMRig**;
- automatiza o processo de setup e mineração em CPU com o RandomX.

Ideal para quem quer minerar com o XMRig sem se preocupar com dependências ou configuração manual.

---

## 🚀 Instalação

### Com pacote `.deb` (recomendado)

```bash
sudo apt update
sudo apt install ./CryptoMiner_0.0.1.deb
```

Ou:

```bash
sudo dpkg -i CryptoMiner_0.0.1.deb
sudo apt install -f
```

O postinst cuida do download e compilação do XMRig automaticamente.

#Manual (via script)

```bash
git clone https://github.com/SardinhaCN/CryptoMiner.git
cd CryptoMiner
sudo bash install_xmrig.sh
bash cryptominer
```

#⚙️ Dependências
Instale antes de usar:
```bash
sudo apt install dialog git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
```

#🎛️ Configuração
No menu interativo, configure:

endereço da pool de mineração

endereço da carteira

nome do worker

algoritmo

Os arquivos de configuração ficam em: src/configs/BAT.json

🔧 Uso
Basta executar:
```bash
cryptominer
```
O script verifica se o XMRig está presente em /opt/cryptominer. Se não estiver, ele baixa, compila e instala automaticamente.

#📂 Estrutura de Pastas
```bash
/usr/local/bin/cryptominer
/opt/cryptominer/
├─ install_xmrig.sh
├─ xmrig-src/ (código-fonte clonado)
├─ xmrig/ (binário compilado)
├─ src/configs/BAT.json
└─ logs/delete.txt
```

#📝 Desenvolvimento & Atualizações
Faça contribuições enviando issues ou pull requests. Sinta-se à vontade para sugerir novos recursos ou melhorias na interface.

#👤 Sobre o Autor
Sardinha CN
📧 ydesouzazanotti@gmail.com

#🏷️ Licença
A definir (ex: MIT, GPL, etc.)
```yaml

---

## 💡 Dicas adicionais

- Inclua badges no topo do README como build status, licença ou versão.
- Adicione uma seção de **FAQ** ou **Problemas comuns**.
- Se quiser destacar o funcionamento, considere um screenshot da interface `dialog` ou logs.

---

Se quiser, posso gerar um **README.md pronto** com base nesse template e adaptar ao seu conteúdo atual. Deseja que eu crie essa versão para você?
::contentReference[oaicite:0]{index=0}
```
