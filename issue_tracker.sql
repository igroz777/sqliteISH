/*Name of database is issue_tracker*/


CREATE TABLE IF NOT EXISTS `issues` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `date_opened` varchar(15) NOT NULL,
  `date_closed` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;


INSERT INTO `issues` (`id`, `user_id`, `date_opened`, `date_closed`, `title`, `description`, `status`) VALUES
(1, 1, '24/10/2016', '', 'Electrical Fault on Floor Nine', 'There is an electrical fault on the 9th floor. A spatial generator malfunctioned and summoned Zeus. Please fix', 'pending'),
(2, 2, '23/10/2016', '24/10/2016', 'Dirty floors in the bathroom', 'The bathroom floor on the 2nd floor is filthy. Mold is growing mold. Clean it up ', 'resolved');

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(40) NOT NULL,
  `datecreated` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `users` (`id`, `username`, `password`, `email`, `datecreated`) VALUES
(1, 'igroz777', 'c580a1580ed732f0894545cc4e21877ab83df360a20fdc28ba5bc72133a78745', 'igroz777@gmail.com', '24/10/2016'),
(2, 'hungrybunny9', 'c580a1580ed732f0894545cc4e21877ab83df360a20fdc28ba5bc72133a78745', 'igroz777@gmail.com', '23/10/2016');
