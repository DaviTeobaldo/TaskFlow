import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 24),
            Text(
              'Davi Oliveira',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'davi.teobaldo@email.com',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                  ),
            ),
            const SizedBox(height: 32),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Informações da Conta',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 16),
                    _buildInfoRow(context, 'Membro desde', '10/05/2025'),
                    const Divider(),
                    _buildInfoRow(context, 'Tarefas concluídas', '22'),
                    const Divider(),
                    _buildInfoRow(context, 'Tarefas pendentes', '5'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Configurações',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 16),
                    _buildSettingOption(
                      context,
                      Icons.notifications,
                      'Notificações',
                      Icons.chevron_right,
                    ),
                    const Divider(),
                    _buildSettingOption(
                      context,
                      Icons.dark_mode,
                      'Tema Escuro',
                      Icons.chevron_right,
                    ),
                    const Divider(),
                    _buildSettingOption(
                      context,
                      Icons.security,
                      'Privacidade',
                      Icons.chevron_right,
                    ),
                    const Divider(),
                    _buildSettingOption(
                      context,
                      Icons.help,
                      'Ajuda',
                      Icons.chevron_right,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.error,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Sair da Conta'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
              ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  Widget _buildSettingOption(
    BuildContext context,
    IconData leadingIcon,
    String title,
    IconData trailingIcon,
  ) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
      trailing: Icon(trailingIcon),
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(vertical: -3),
    );
  }
}