from robot.api.deco import keyword
import logging

class ShiggyTestingLibrary(object):
    def sign_user_in(self):
        logging.info("user logged in")
        return "SUCCESS"
