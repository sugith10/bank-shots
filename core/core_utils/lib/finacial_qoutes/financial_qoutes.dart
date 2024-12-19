// ignore_for_file: lines_longer_than_80_chars

import 'dart:math';

final class FinancialQoutes {
  const FinancialQoutes._();

  static const List<String> _quotes = [
    "A goal without a plan is just a wish. – Antoine de Saint-Exupéry",
    "The journey of a thousand miles begins with one step. – Lao Tzu",
    "You can't manage what you don't measure. – Peter Drucker",
    "The secret to getting ahead is getting started. – Mark Twain",
    "Setting goals is the first step in turning the invisible into the visible. – Tony Robbins",
    "A goal properly set is halfway reached. – Zig Ziglar",
    "Don't tell me what you value, show me your budget, and I'll tell you what you value. – Joe Biden",
    "Savings, quite simply, is the difference between what you earn and what you spend. – Anonymous",
    "When it comes to money, goals are the roadmaps that guide your financial future. – Dave Ramsey",
    "If you don’t know where you are going, you’ll end up someplace else. – Yogi Berra",
    "The more you save, the more freedom you have. – Anonymous",
    "Financial freedom is a mental, emotional, and educational process. – Robert Kiyosaki",
    "You must gain control over your money, or the lack of it will forever control you. – Dave Ramsey",
    "It’s not about having lots of money. It’s about knowing how to manage it. – Anonymous",
    "The most important thing about reaching a goal is having the ability to move toward it. – Anonymous",
    "Wealth consists not in having great possessions, but in having few wants. – Epictetus",
    "The first step toward success is taken when you refuse to be a captive of the environment in which you first find yourself. – Mark Caine",
    "Without goals, and plans to reach them, you are like a ship that has set sail with no destination. – Fitzhugh Dodson",
    "Beware of little expenses; a small leak will sink a great ship. – Benjamin Franklin",
    "Financial fitness is not a pipe dream or a state of mind. It’s a reality if you are willing to pursue it and embrace it. – Will Robinson",
  ];

  static String getRandomQuote() {
    final random = Random();
    final int randomIndex = random.nextInt(_quotes.length);
    return _quotes[randomIndex];
  }
}
