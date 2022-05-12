# notification_cron
This simple script can be turned into a notification system using cron, though it lacks scalability for large environments, it is excellent for smaller use cases. 
I have used this on a 6 hour schedule, and I run it as an "every sixth hour" interval by adding the following to crontab:
0 */6 * * *
