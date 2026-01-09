import 'package:agromart/constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FarmerDashboardScreen());
}

class FarmerDashboardScreen extends StatefulWidget {
  const FarmerDashboardScreen({super.key});

  @override
  State<FarmerDashboardScreen> createState() => _FarmerDashboardScreenState();
}

class _FarmerDashboardScreenState extends State<FarmerDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Good Morning, Farmer!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                ],
              ),

              SizedBox(height: 20),

              //Dashboard Cards
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  DashboardCard(
                    title: 'Total Products',
                    icon: Icons.inventory,
                    value: '150',
                  ),
                  DashboardCard(
                    title: 'Active Listings',
                    icon: Icons.eco,
                    value: '25',
                  ),
                  DashboardCard(
                    title: 'Pending Orders',
                    icon: Icons.shopping_cart,
                    value: '3',
                  ),
                  DashboardCard(
                    title: 'Earnings',
                    icon: Icons.attach_money,
                    value: '\$1,200',
                  ),
                ],
              ),

              SizedBox(height: 30),

              //Action Buttons
              DashboardButton(
                iconData: Icons.add,
                label: 'Add New Product',
                onPressed: () {
                  // Navigate to add product screen
                },
                color: Color(0xFFD88C1D),
              ),
              SizedBox(height: 16),
              DashboardButton(
                iconData: Icons.remove_red_eye,
                label: 'View Orders',
                onPressed: () {
                  // Navigate to view orders screen
                },
                color: Color(0xFFB5731B),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//dashboard card widget
class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String value;

  const DashboardCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF1E0C5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

//Button widget
class DashboardButton extends StatelessWidget {
  final IconData iconData;
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const DashboardButton({
    super.key,
    required this.iconData,
    required this.label,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),
        onPressed: onPressed,
        icon: Icon(iconData, color: Colors.black, size: 30),
        label: Text(
          label,
          style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
