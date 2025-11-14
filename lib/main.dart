import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                  title: 'NomadSAT — Workspace Booking Platform',
                  description:
                      'Flutter Web-based workspace booking and management system. Built interactive map-based modules, implemented MVVM architecture, and real-time updates using WebSocket.',
                  techStack: 'Flutter Web, MVVM, WebSocket, REST APIs',
                  webLink: 'https://nomadsat.com/',
                ),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1300),
                child: ProjectCard(
                  title: 'iPartner Pro — ICICI Lombard Partner App',
                  description:
                      'Flutter mobile app for insurance partners to manage customer policies, leads, and payments. Contributed to UI modules, API integrations, and performance optimization for 10K+ daily users.',
                  techStack:
                      'Flutter, REST APIs, Provider/BLoC, Secure Storage',
                  androidLink:
                      'https://play.google.com/store/apps/details?id=com.icicilombard.ipartnerpro&pcampaignid=web_share',
                  iosLink:
                      'https://apps.apple.com/in/app/ipartner-pro/id1589043830?l=hi',
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('📧 gmail link: '),
                        InkWell(
                          onTap: () async {
                            launchUrlString(
                              'mailto:sushmitabhor3@gmail.com?subject='
                              '&body='
                              '',
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            'sushmitabhor3@gmail.com',
                            style: GoogleFonts.inter(fontSize: 16, height: 1.6),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('🔗 linkedin link: '),
                        InkWell(
                          onTap: () async {
                            launchUrlString(
                              "https://www.linkedin.com/in/sushmitabhor/",
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            'linkedin.com/in/sushmitabhor',
                            style: GoogleFonts.inter(fontSize: 16, height: 1.6),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('💻 github link: '),
                        InkWell(
                          onTap: () async {
                            launchUrlString(
                              "https://github.com/SushmitaBhor",
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Text(
                            '💻 github.com/SushmitaBhor  ',
                            style: GoogleFonts.inter(fontSize: 16, height: 1.6),
                          ),
                        ),
                      ],
                    ),
                  ],
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
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.techStack,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });

  Future<void> _openLink(String url) async {
    try {
      await launchUrlString(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      // ignore errors on web; you can add a debug print
      print('Could not open link: $e');
    }
  }

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
              const SizedBox(height: 10),
              Row(
                children: [
                  if (androidLink != null)
                    TextButton.icon(
                      onPressed: () => _openLink(androidLink!),
                      icon: const Icon(Icons.android, color: Colors.green),
                      label: const Text('Play Store'),
                    ),
                  if (iosLink != null)
                    TextButton.icon(
                      onPressed: () => _openLink(iosLink!),
                      icon: const Icon(Icons.apple, color: Colors.black),
                      label: const Text('App Store'),
                    ),
                  if (webLink != null)
                    TextButton.icon(
                      onPressed: () => _openLink(webLink!),
                      icon: const Icon(Icons.public, color: Colors.indigo),
                      label: const Text('Visit Website'),
                    ),
                ],
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
