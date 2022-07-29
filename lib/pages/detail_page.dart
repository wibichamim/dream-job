import 'package:flutter/material.dart';
import 'package:dream_job/themes.dart';

class JobDetail extends StatefulWidget {
  final String imageurl;
  final String jobDesc;
  final String company;

  const JobDetail(
      {required this.company, required this.imageurl, required this.jobDesc});

  @override
  State<JobDetail> createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget successApply() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
        decoration: BoxDecoration(
          color: const Color(0xffECEDF1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Text(
            'You have applied this job and the recruiter will contact you',
            style: TextStyle(
              color: lightGray,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget header() {
      return Center(
        child: Column(
          children: [
            isApplied
                ? successApply()
                : const SizedBox(
                    height: 80,
                  ),
            Image.asset(
              widget.imageurl,
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.jobDesc,
              style: tagLine.copyWith(fontSize: 20),
            ),
            Text(
              "${widget.company} • Jakarta",
              style: TextStyle(color: lightGray),
            )
          ],
        ),
      );
    }

    Widget detailItem(String text) {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Icon(
              Icons.adjust,
              color: mainPurple,
              size: 12,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: darkGray,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget aboutJob() {
      return Container(
        margin: const EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About the job',
              style: jobSubTitle,
            ),
            detailItem('Full-Time On Site'),
            detailItem('Start at \$18,000 per month'),
          ],
        ),
      );
    }

    Widget qualification() {
      return Container(
        margin: const EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Qualification',
              style: jobSubTitle,
            ),
            detailItem('Candidate must possess at least a Bachelor\'s Degree.'),
            detailItem(
                'Able to use Microsoft Office and Google based service.'),
            detailItem(
                'Have an excellent time management, good at organized and details'),
          ],
        ),
      );
    }

    Widget responsibilities() {
      return Container(
        margin: const EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Responsibilities',
              style: jobSubTitle,
            ),
            detailItem(
                'Initiate and promote any programs, events, training, or activities.'),
            detailItem(
                'Assessing and anticipating needs and collaborate with Division.'),
          ],
        ),
      );
    }

    Widget applyButton() {
      return SizedBox(
        width: 200,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: isApplied ? mainRed : mainPurple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            isApplied ? 'Cancel Apply' : 'Apply for job',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
      );
    }

    Widget initButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              applyButton(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Message Recruiter',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffB3B5C4),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              aboutJob(),
              qualification(),
              responsibilities(),
              initButton(),
            ],
          ),
        ),
      ),
    );
  }
}
