CREATE DATABASE blog DEFAULT CHARACTER SET utf8 ;
GRANT ALL PRIVILEGES ON blog.* TO 'testuser'@'localhost';
ALTER USER 'testuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'testpass';

SET GLOBAL time_zone = '+2:00';

use blog;

select * from content;

INSERT INTO CONTENT VALUES (1, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ipsum a arcu cursus vitae congue. Euismod lacinia at quis risus. Morbi quis commodo odio aenean sed adipiscing diam. Neque aliquam vestibulum morbi blandit cursus. Etiam dignissim diam quis enim. Tortor pretium viverra suspendisse potenti nullam ac. Egestas dui id ornare arcu odio ut sem nulla pharetra. Non arcu risus quis varius quam quisque. Viverra adipiscing at in tellus integer feugiat scelerisque varius. Et egestas quis ipsum suspendisse ultrices. Mauris a diam maecenas sed enim ut sem. Sagittis eu volutpat odio facilisis. Sed egestas egestas fringilla phasellus faucibus.

Amet venenatis urna cursus eget nunc scelerisque viverra mauris. Aliquet lectus proin nibh nisl condimentum id venenatis a condimentum. Netus et malesuada fames ac turpis egestas integer. Nunc non blandit massa enim nec. Ipsum dolor sit amet consectetur adipiscing elit. Lorem sed risus ultricies tristique nulla. Netus et malesuada fames ac. Urna neque viverra justo nec ultrices dui sapien. Ultricies mi eget mauris pharetra et ultrices neque ornare. Id semper risus in hendrerit gravida rutrum.

Lectus vestibulum mattis ullamcorper velit sed. A pellentesque sit amet porttitor eget. Nibh tortor id aliquet lectus proin nibh nisl condimentum id. Malesuada fames ac turpis egestas sed tempus. Amet consectetur adipiscing elit pellentesque habitant morbi. Odio aenean sed adipiscing diam donec. Arcu dictum varius duis at consectetur lorem. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Diam phasellus vestibulum lorem sed risus. Tortor vitae purus faucibus ornare suspendisse sed nisi. Sit amet consectetur adipiscing elit duis. Morbi blandit cursus risus at ultrices mi tempus imperdiet nulla. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh cras pulvinar mattis nunc sed blandit. Velit euismod in pellentesque massa placerat duis ultricies. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Consequat semper viverra nam libero justo laoreet sit. Amet porttitor eget dolor morbi non arcu risus.

Bibendum neque egestas congue quisque egestas. Eu feugiat pretium nibh ipsum. Sed odio morbi quis commodo odio aenean sed adipiscing diam. Adipiscing at in tellus integer feugiat scelerisque varius morbi. A diam sollicitudin tempor id eu nisl. Massa enim nec dui nunc. Quam quisque id diam vel quam. Et leo duis ut diam quam nulla porttitor massa id. Purus in massa tempor nec feugiat nisl pretium fusce. Hendrerit dolor magna eget est lorem. Non pulvinar neque laoreet suspendisse interdum. Non odio euismod lacinia at quis risus sed. Elit at imperdiet dui accumsan sit amet nulla. Id cursus metus aliquam eleifend mi in nulla posuere. Id donec ultrices tincidunt arcu non sodales neque. Luctus venenatis lectus magna fringilla urna porttitor.

Adipiscing diam donec adipiscing tristique risus nec feugiat. Scelerisque in dictum non consectetur a erat nam at. Sem nulla pharetra diam sit amet. Lectus nulla at volutpat diam ut. Varius duis at consectetur lorem donec massa sapien. Viverra nibh cras pulvinar mattis nunc. Sit amet facilisis magna etiam. Malesuada bibendum arcu vitae elementum curabitur. Fermentum et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Aliquam faucibus purus in massa tempor nec feugiat nisl pretium. Et tortor at risus viverra adipiscing at in. Eget nulla facilisi etiam dignissim. Congue eu consequat ac felis donec et. Laoreet non curabitur gravida arcu ac tortor dignissim.", "url/aa.png", "Java", "The main principles of OOP");

drop database blog;