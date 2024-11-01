import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('Login below or '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                    );
                  },
                  child: const Text(
                    'create an account',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Menu Screen after successful login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('Sign In'),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Add forgot password functionality here
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create account',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text('Enter your account details below or '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'log in',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'First name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Last name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Date of Birth (MM-DD-YYYY)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm your password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Name Entry screen after signup
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const NameEntryPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Create account'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NameEntryPage extends StatelessWidget {
  const NameEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Your Name'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What’s your name?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Menu Screen after entering name
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logout button to go back to LoginPage
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Questionnaire',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Description text about something on this page that can be long or short.',
            ),
            const SizedBox(height: 20),
            // Questionnaire options
            MenuOptionButton(
              icon: Icons.description,
              label: 'Start New Questionnaire',
              onTap: () {
                // Add navigation or functionality
              },
            ),
            MenuOptionButton(
              icon: Icons.add,
              label: 'Continue Saved Questionnaire',
              onTap: () {
                // Add navigation or functionality
              },
            ),
            MenuOptionButton(
              icon: Icons.history,
              label: 'View Past Results/History',
              onTap: () {
                // Add navigation or functionality
              },
            ),
            MenuOptionButton(
              icon: Icons.report,
              label: 'Reports/Recommendations',
              onTap: () {
                // Add navigation or functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Helper widget for menu options
class MenuOptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const MenuOptionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: onTap,
    );
  }
}
