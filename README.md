# git-ai

AI を使って `git ai commit` でコミットメッセージを自動生成するシェルスクリプトです。
vi（または設定済みの Git エディタ）が開くので、確認・編集してからコミット確定できます。

## 対応モデル

| コマンド | AI |
|---|---|
| `git ai commit` | Claude（デフォルト） |
| `git ai commit copilot` | GitHub Copilot CLI |
| `git ai commit codex` | OpenAI Codex CLI |

## 前提条件

以下のいずれかの CLI ツールをインストールしてください：

- Claude CLI — `claude`
- GitHub Copilot CLI — `copilot`
- OpenAI Codex CLI — `codex`

## インストール

### Option A: インストールスクリプト（推奨）

```bash
git clone https://github.com/0xkohe/git-ai.git
cd git-ai
bash install.sh
```

### Option B: 手動インストール（vi）

Step 1: スクリプトを作成

```bash
sudo vi /usr/local/bin/git-ai
```

vi の操作手順：
1. `i` キーで挿入モードに入る
2. `git-ai` の内容を貼り付ける
3. `Esc` でコマンドモードに戻る
4. `:wq` と入力して Enter で保存終了

Step 2: 実行権限を付与

```bash
sudo chmod +x /usr/local/bin/git-ai
```

Step 3: Git エイリアスを登録

```bash
git config --global alias.ai '!git-ai'
```

Step 4: 確認

```bash
git config --global --get alias.ai
# 期待される出力: !git-ai
```

## 使い方

```bash
git add .
git ai commit             # Claude（デフォルト）
git ai commit copilot     # GitHub Copilot CLI
git ai commit codex       # OpenAI Codex CLI
```

## License

MIT