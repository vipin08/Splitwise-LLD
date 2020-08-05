require_relative 'models/group'
require_relative 'models/user'
require_relative 'utility/group_utility'
require_relative 'utility/user_utility'

include Utility


user_utility = UserUtility.new
group_utility = GroupUtility.new
expense

u1= 1
user_utility.register(u1, 'User 1', 'user_1@gmail.com')

u2= 2
user_utility.register(u2, 'User 2', 'user_2@gmail.com')

u3= 3
user_utility.register(u3, 'User 3', 'user_3@gmail.com')

u4= 4
user_utility.register(u4, 'User 4', 'user_4@gmail.com')

u5= 5
user_utility.register(u5, 'User 5', 'user_5@gmail.com')

u6= 6
user_utility.register(u6, 'User 6', 'user_6@gmail.com')

g1 = 'g1'
group_utility.create(g1, u1, 'Group1')


group_utility.add_user(g1, u2)
group_utility.add_user(g1, u3)
group_utility.add_user(g1, u4)


g2 = 'g2'
group_utility.create(g2, u5, 'Group2')
group_utility.add_user(g2, u6)


us


