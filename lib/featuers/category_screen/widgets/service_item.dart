import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final List<Map<String, String>> serviceList = [
    {
      'profileImage':'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'rateValue': '4.5',
      'salary': '100',
      'duration': 'hour',
      'offValue': '20%',
      'serviceName': 'Service A',
      'workerName': 'John Doe',
    },
    {
      'profileImage':'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'rateValue': '4.2',
      'salary': '150',
      'duration': 'hour',
      'offValue': '15%',
      'serviceName': 'Service B',
      'workerName': 'Jane Smith',
    },
    {
      'profileImage':'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'rateValue': '4.8',
      'salary': '120',
      'duration': 'hour',
      'offValue': '25%',
      'serviceName': 'Service C',
      'workerName': 'Alice Johnson',
    },
    {
      'profileImage':'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'rateValue': '4.6',
      'salary': '110',
      'duration': 'hour',
      'offValue': '18%',
      'serviceName': 'Service D',
      'workerName': 'Bob Williams',
    },
    {
      'profileImage':'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'rateValue': '4.5',
      'salary': '100',
      'duration': 'hour',
      'offValue': '20%',
      'serviceName': 'Service A',
      'workerName': 'John Doe',
    },
    {
      'profileImage':'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'rateValue': '4.2',
      'salary': '150',
      'duration': 'hour',
      'offValue': '15%',
      'serviceName': 'Service B',
      'workerName': 'Jane Smith',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < serviceList.length; i += 2)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildServiceItem(serviceList[i]),
              if (i + 1 < serviceList.length)
                _buildServiceItem(serviceList[i + 1]),
            ],
          ),
      ],
    );
  }

  Widget _buildServiceItem(Map<String, String> service) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 160,
        height: 245,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CupertinoColors.systemGrey4,
          boxShadow: const [
            BoxShadow(
              color: Colors.white60,
              offset: Offset(1, 1),
              blurRadius: 1,
            )
          ],
        ),
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Positioned(
              top: 7,
              left: 3,
              right: 3,
              child: Container(
                height: 135,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(service['profileImage']!),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Positioned(
              top: 7,
              left: 3,
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_border_rounded,
                      color: Colors.orange,
                    ),
                    Text(
                      '${service['rateValue']}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              left: 1,
              child: Container(
                width: 160,
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '${service['salary']}\$/H',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                        Text(
                          'off ${service['offValue']}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      service['serviceName']!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff046CB5),
                      ),
                    ),
                    Text(
                      'by ${service['workerName']}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff046CB5),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
