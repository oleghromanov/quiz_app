import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/resources/app_colors.dart';

class AnswerOptions extends StatelessWidget {
  const AnswerOptions({
    super.key,
    required this.answers,
    required this.selectedIndex,
    this.onPressed,
  });

  final List<String> answers;
  final int selectedIndex;
  final Function(int)? onPressed;

  @override
  Widget build(BuildContext context) => ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            onPressed?.call(index);
          },
          child: _buildAnswer(
            answers[index],
            isSelected: index == selectedIndex,
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: answers.length,
      );

  Widget _buildAnswer(String answer, {required bool isSelected}) => Container(
        height: 75,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.accent : AppColors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                answer,
                maxLines: 2,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      );
}
