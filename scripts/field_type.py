from nav2_msgs.msg import Field
msg = Field()
msg.id = 1
msg.costs = 2.5

msg2 = Field()
msg2.id = 1
msg2.costs = 2.5

print(f"Combined: {msg.costs + msg2.costs}")
