# TaskFlow - Aplicativo de Gerenciamento de Tarefas 📋✅

![TaskFlow Logo](assets/images/logo.png)

TaskFlow é um aplicativo de gerenciamento de tarefas intuitivo e elegante, desenvolvido em Flutter, que ajuda você a organizar suas atividades diárias de forma eficiente.

## ✨ Funcionalidades Principais

- ✅ Adicionar, editar e excluir tarefas
- 📅 Definir datas de vencimento para tarefas
- 🔍 Visualizar tarefas pendentes e concluídas
- 🎨 Interface moderna com suporte a tema claro e escuro
- 📱 Design responsivo para diversos tamanhos de tela
- 🔄 Sincronização local com banco de dados SQLite

## 📸 Capturas de Tela

| Tela de Login | Lista de Tarefas | Adicionar Tarefa |
|--------------|----------------|----------------|
| ![Login](screenshots/login.png) | ![Tasks](screenshots/tasks.png) | ![Add Task](screenshots/add_task.png) |

## 🛠️ Tecnologias Utilizadas

- **Flutter** - Framework para desenvolvimento multiplataforma
- **Dart** - Linguagem de programação
- **SQLite** - Banco de dados local
- **Provider** - Gerenciamento de estado
- **Material Design 3** - Design system moderno

## 📥 Como Executar o Projeto

1. **Pré-requisitos**
   - Flutter SDK instalado (versão 3.0 ou superior)
   - Dispositivo ou emulador configurado

2. **Instalação**
   ```bash
   git clone https://github.com/seu-usuario/taskflow.git
   cd taskflow
   flutter pub get
   ```

3. **Execução**
   ```bash
   flutter run
   ```

## 🏗️ Estrutura do Projeto

```
taskflow/
├── android/          # Configurações para Android
├── ios/              # Configurações para iOS
├── lib/              # Código fonte Dart
│   ├── database/     # Lógica do banco de dados
│   ├── models/       # Modelos de dados
│   ├── screens/      # Telas do aplicativo
│   ├── theme/        # Configurações de tema
│   ├── widgets/      # Componentes reutilizáveis
│   └── main.dart     # Ponto de entrada
├── assets/           # Recursos estáticos
│   └── images/       # Imagens do aplicativo
├── test/             # Testes unitários
└── pubspec.yaml      # Configurações e dependências
```

## 🤝 Como Contribuir

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request



---

Feito por Davi Oliveira Teobaldo - Um aplicativo para organizar sua vida! 🚀
