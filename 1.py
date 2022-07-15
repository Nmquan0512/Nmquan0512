import requests
from time import sleep

f = open("./cron.txt", "r")
crons = f.read().split("\n")

loop = True
phien = 1
limit = 5

while loop:
	for cron in crons:
		res = requests.get(cron)

		print('Phiên: ' + str(phien))
		print('+ URL: ' + cron)
		print('+ Response: ' + res.text)
		print('-----------------------------------')
		phien = phien + 1

	sleep(limit)
