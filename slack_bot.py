# -*- coding: utf-8 -*-
import os
import sys
import re
from slacker import Slacker
from dotenv import load_dotenv
load_dotenv()

class Slack(object):

    __slacker = None

    def __init__(self, token):
        self.__slacker = Slacker(token)

    def post_to_file(self, file_path, channel):
        result = self.__slacker.files.upload(file_path, channels=[channel])
        self.__slacker.pins.add(channel=channel, file_=result.body['file']['id'])

if __name__ == "__main__":

    param = sys.argv
    file_path = param[1]
    if file_path.find("preview.jpg") > 0:
        slack = Slack(os.environ.get("SLACK_API_TOKEN"))
        slack.post_to_file(file_path, os.environ.get("SLACK_CHANNEL_ID"))
        print("posted to slack - "+file_path)
    else:
        print("skip - "+file_path)

