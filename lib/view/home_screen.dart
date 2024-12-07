import 'package:coinpay_app/utils/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 50,
              color: AppColors.greenColor,
            ),
            Column(
              children: [
                // Search bar section
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.search, color: Colors.grey),
                              const SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  controller: _searchController,
                                  decoration: const InputDecoration(
                                    hintText: 'Search...',
                                    border: InputBorder.none,
                                  ),
                                  onSubmitted: (value) {
                                    print('Searching for: $value');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.crop_free, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 27),

                // Card Section - Moved up
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildActionCard(
                          'Activate', 'GrabPay', Icons.attach_money),
                      _buildPointsCard('Use Points', '758'),
                    ],
                  ),
                ),
                const SizedBox(height: 27),

                // Category Section using GridView with fixed height
                SizedBox(
                  height: 200, // Fixed height for GridView
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.count(
                      physics:
                          const NeverScrollableScrollPhysics(), // Prevent scrolling
                      crossAxisCount: 4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10,
                      children: [
                        _buildCategoryItem('Food', Icons.restaurant),
                        _buildCategoryItem('Mart', Icons.shopping_basket),
                        _buildCategoryItem('Express', Icons.local_shipping),
                        _buildCategoryItem('Transport', Icons.directions_car),
                        _buildCategoryItem('Offers', Icons.local_offer),
                        _buildCategoryItem('Gift Cards', Icons.card_giftcard),
                        _buildCategoryItem('Offers', Icons.local_offer_sharp),
                        _buildCategoryItem('More', Icons.more_horiz_sharp),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.grey),
            activeIcon: Icon(Icons.explore, color: AppColors.greenColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.grey),
            activeIcon: Icon(Icons.list, color: AppColors.greenColor),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment, color: Colors.grey),
            activeIcon: Icon(Icons.payment, color: AppColors.greenColor),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox, color: Colors.grey),
            activeIcon: Icon(Icons.inbox, color: AppColors.greenColor),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.grey),
            activeIcon: Icon(Icons.account_circle, color: AppColors.greenColor),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.greenColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  // Helper methods remain unchanged
  Widget _buildCategoryItem(String title, IconData icon) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: AppColors.itemBgColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: AppColors.greenColor,
            size: 30,
          ),
        ),
        const SizedBox(height: 9),
        Text(
          title,
          style: AppTextStyles.blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildActionCard(String title, String subtitle, IconData icon) {
    return Container(
      width: 172,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, color: AppColors.greenColor),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPointsCard(String title, String points) {
    return Container(
      width: 172,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  points,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.star, color: AppColors.greenColor),
          ),
        ],
      ),
    );
  }
}
