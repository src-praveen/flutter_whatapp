import 'model/call.dart';
import 'model/chat.dart';
import 'model/status.dart';

List<Chat> CHATS = [
  Chat(
      id: 1,
      imageUrl:
          'https://cdn.iconscout.com/icon/free/png-256/friends-4-225967.png',
      contactNameOrGroupName: 'AVC Friends',
      isMuted: false,
      lastAction: '+91 9585757200',
      lastMessage: DateTime.now(),
      unReadMessage: 5),
  Chat(
      id: 2,
      imageUrl:
          'https://i.pinimg.com/originals/09/01/0d/09010dc398df04b9abd70baf1680e01c.png',
      contactNameOrGroupName: 'Office Group 24',
      isMuted: true,
      lastAction: 'phone',
      lastMessage: DateTime.now(),
      unReadMessage: 15),
  Chat(
      id: 3,
      imageUrl:
          'https://comosaconnect.org/wp-content/uploads/2017/03/school.png',
      contactNameOrGroupName: 'Shchool Gang',
      isMuted: true,
      lastAction: 'last bench',
      lastMessage: DateTime.now(),
      unReadMessage: 205),
  Chat(
      id: 4,
      imageUrl:
          'https://static-s.aa-cdn.net/img/ios/899287106/45820b5b6bba46c7fcd853a46d554a34?v=1',
      contactNameOrGroupName: 'Animal Care',
      isMuted: false,
      lastAction: '+1 2326598989',
      lastMessage: DateTime.now().subtract(
        Duration(minutes: 5),
      ),
      unReadMessage: 0),
  Chat(
      id: 5,
      imageUrl:
          'https://www.journalofaccountancy.com/content/dam/jofa/news/coronavirus-128.jpg',
      contactNameOrGroupName: 'Corona Update',
      isMuted: true,
      lastAction: '245 New cases',
      lastMessage: DateTime.now().subtract(
        Duration(minutes: 1),
      ),
      unReadMessage: 2),
  Chat(
      id: 6,
      imageUrl:
          'https://media-cdn.tripadvisor.com/media/photo-s/0a/2d/43/dc/pazhaya-waterfall-old.jpg',
      contactNameOrGroupName: 'Courtallam Trip',
      isMuted: true,
      lastAction: 'Alex',
      lastMessage: DateTime.now().subtract(
        Duration(minutes: 10, seconds: 20),
      ),
      unReadMessage: 0),
  Chat(
      id: 7,
      imageUrl:
          'https://www.clayfin.com/wp-content/themes/clayfin/images/celebrating-craftsmanship.png',
      contactNameOrGroupName: 'Clayfin Official',
      isMuted: true,
      lastAction: 'kumaran left',
      lastMessage: DateTime.now().subtract(
        Duration(minutes: 10, seconds: 40),
      ),
      unReadMessage: 20),
  Chat(
      id: 6,
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-256-thumb/apartment-333-775157.png',
      contactNameOrGroupName: 'Apartment Group',
      isMuted: true,
      lastAction: '+91 3232659898',
      lastMessage: DateTime.now().subtract(
        Duration(minutes: 8, seconds: 20),
      ),
      unReadMessage: 0),
];

List<Status> status = [
  Status(
      id: 1,
      title: 'Alex',
      subTitle: 'Today 10.45 AM',
      isMyStatus: false,
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-256-thumb/alien-1734620-1474715.png'),
  Status(
      id: 2,
      title: 'Kumarn',
      subTitle: 'Today 9.15 AM',
      isMyStatus: false,
      imageUrl:
          'https://res-4.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1397183170/2bde96f2437feafd7e46dc33187d1f63.jpg'),
];

List<Call> calls = [
  Call(
    id: 1,
    imageUrl: '',
    callFrom: 'Alex',
    callTime: DateTime.now().subtract(
      Duration(
        days: 1,
      ),
    ),
    isIncoming: true,
    isVideoCall: false,
  ),
  Call(
    id: 2,
    imageUrl: 'https://aidsresource.org/wp-content/uploads/2017/05/home.png',
    callFrom: 'Home',
    callTime: DateTime.now().subtract(
      Duration(
        days: 2,
      ),
    ),
    isIncoming: false,
    isVideoCall: true,
  )
];
