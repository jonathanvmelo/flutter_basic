import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SectionTitle(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...courses
                        .map((course) => Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: CourseCard(course: course),
                            ))
                        .toList(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Recentes",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              ...recentCourses.map((course) => Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: SecondaryCourseCard(course: course),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class SecondaryCourseCard extends StatelessWidget {
  const SecondaryCourseCard({
    super.key, required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: course.bgColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(course.title,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,
                fontWeight: FontWeight.w600),
                ),
                Text("Whatch video", style: TextStyle(
                  color: Colors.white60,
                  fontSize: 16,
                ),)
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: VerticalDivider(color: Colors.white70),
          ),
          SizedBox(
            width: 8,
          ),
          SvgPicture.asset(course.iconSrc),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Text(
      "Cursos",
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 280,
      width: 260,
      decoration: BoxDecoration(
        color: course.bgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 6, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(course.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                    child: Text(
                      course.description,
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  Text(
                    "10 Aulas - 40 Horas".toUpperCase(),
                    style: TextStyle(color: Colors.white54),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SvgPicture.asset(course.iconSrc)
        ],
      ),
    );
  }
}

class Course {
  final String title, description, iconSrc;
  final Color bgColor;

  Course({required this.title, this.description = "Aprenda a programar em Flutter", this.iconSrc = "assets/icons/code.svg", this.bgColor = const Color(0xFF7553F6)});
}

List<Course> courses = [Course(title: "Flutter Básico", description: "Desenvolva componentes e layouts", iconSrc: "assets/icons/code.svg", bgColor: const Color(0xFF80A4FF)), Course(title: "Flutter Avançado", description: "Desenvolva componentes e layouts", iconSrc: "assets/icons/code.svg", bgColor: const Color(0xFF80A4FF))];

List<Course> recentCourses = [
  Course(title: "Flutter Básico", description: "Desenvolva componentes e layouts", iconSrc: "assets/icons/code.svg", bgColor: const Color(0xFF804aFF)),
  Course(title: "Orientação a Objetos", description: "Desenvolva componentes e layouts", iconSrc: "assets/icons/code.svg", bgColor: const Color(0xFF80A4FF)),
  Course(title: "Dart Básico", description: "Desenvolva componentes e layouts", iconSrc: "assets/icons/code.svg", bgColor: const Color(0xFF804aFF)),
  Course(title: "Flutter Avançado", description: "Desenvolva componentes e layouts", iconSrc: "assets/icons/code.svg", bgColor: const Color(0xFF80A4FF)),
  Course(title: "Inglês", description: "Desenvolva componentes e layouts", iconSrc: "assets/icons/code.svg", bgColor: const Color(0xFF804aFF))
];

class Exercise {
  final String title, description;
  final Color bgColor;

  Exercise({required this.title, required this.description, required this.bgColor});
}
