import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sushmita Vishwas Bhor | Flutter Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 800),
                child: Text(
                  'Sushmita Vishwas Bhor',
                  style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              FadeInDown(
                duration: const Duration(milliseconds: 1000),
                child: Text(
                  'Senior Software Engineer | Flutter Performance Specialist',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              FadeInLeft(
                duration: const Duration(milliseconds: 1000),
                child: SectionTitle('About Me'),
              ),
              const SizedBox(height: 12),
              FadeInLeft(
                duration: const Duration(milliseconds: 1200),
                child: Text(
                  'I am a results-driven Flutter Developer with 4.8+ years of experience across healthcare, insurance, and enterprise domains. My focus lies in creating scalable, secure, and high-performance mobile apps using Flutter, optimizing frame performance, and managing complex state architectures (BLoC, MobX, Provider).',
                  style: GoogleFonts.inter(fontSize: 16, height: 1.5),
                ),
              ),

              const SizedBox(height: 32),
              FadeInUp(
                duration: const Duration(milliseconds: 900),
                child: SectionTitle('Key Projects'),
              ),

              const SizedBox(height: 12),
              FadeInUp(
                duration: const Duration(milliseconds: 1000),
                child: ProjectCard(
                  title: 'KYMA Real-Time Monitoring App',
                  description:
                      'Real-time patient monitoring system using WebSocket streaming and MobX. Optimized widget rebuilds and achieved 60 FPS performance.',
                  techStack: 'Flutter, WebSocket, MobX, StreamController',
                ),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1100),
                child: ProjectCard(
                  title: 'Insurance Claim App',
                  description:
                      'Offline-first BFSI application with RESTful APIs, Hive caching, and Google Maps integration for hospital locator. Refactored to improve rebuild efficiency by 35%.',
                  techStack: 'Flutter, Provider, Hive, REST, Google Maps',
                ),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: ProjectCard(
                  title: 'NomadSAT Workspace Platform',
                  description:
                      'Cross-platform workspace booking platform using Flutter Web and MVVM. Designed responsive UI with live updates via WebSocket.',
                  techStack: 'Flutter Web, MVVM, WebSocket',
                ),
              ),

              const SizedBox(height: 32),
              FadeInLeft(
                duration: const Duration(milliseconds: 900),
                child: SectionTitle('Performance Optimization Highlights'),
              ),

              const SizedBox(height: 12),
              FadeInRight(
                duration: const Duration(milliseconds: 1000),
                child: OptimizationPoint(
                  title: 'Widget Optimization',
                  detail:
                      'Used const constructors, Selector widgets, and RepaintBoundary to reduce rebuild cost and improve frame rendering stability.',
                ),
              ),
              FadeInRight(
                duration: const Duration(milliseconds: 1100),
                child: OptimizationPoint(
                  title: 'Data Parsing',
                  detail:
                      'Handled heavy JSON parsing using compute() isolates to prevent UI thread blocking.',
                ),
              ),
              FadeInRight(
                duration: const Duration(milliseconds: 1200),
                child: OptimizationPoint(
                  title: 'Image & Animation Performance',
                  detail:
                      'Implemented CachedNetworkImage and AnimatedBuilder for smoother animations without frame drops.',
                ),
              ),
              FadeInRight(
                duration: const Duration(milliseconds: 1300),
                child: OptimizationPoint(
                  title: 'Profiling & Testing',
                  detail:
                      'Used Flutter DevTools for profiling rebuilds, frame performance, and memory management under profile mode.',
                ),
              ),

              const SizedBox(height: 32),
              FadeInUp(
                duration: const Duration(milliseconds: 900),
                child: SectionTitle('Get in Touch'),
              ),

              const SizedBox(height: 12),
              FadeInUp(
                duration: const Duration(milliseconds: 1100),
                child: Text(
                  '📧 sushmitabhor3@gmail.com\n🔗 linkedin.com/in/sushmitabhor\n💻 github.com/SushmitaBhor',
                  style: GoogleFonts.inter(fontSize: 16, height: 1.6),
                ),
              ),

              const SizedBox(height: 40),
              Center(
                child: FadeIn(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    '© 2025 Sushmita Vishwas Bhor',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.indigo[800],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String techStack;
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.techStack,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      duration: const Duration(milliseconds: 800),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.symmetric(vertical: 12),
        elevation: 4,
        shadowColor: Colors.indigo.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: GoogleFonts.inter(fontSize: 15, height: 1.5),
              ),
              const SizedBox(height: 8),
              Text(
                'Tech Stack: $techStack',
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptimizationPoint extends StatelessWidget {
  final String title;
  final String detail;
  const OptimizationPoint({
    super.key,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.indigo, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[800],
                  ),
                ),
                Text(
                  detail,
                  style: GoogleFonts.inter(fontSize: 15, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
