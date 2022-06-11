import json

CONF_PATH  = "./config/config.json"

class Modules:

    @classmethod
    def load_config(cls):
        with open(CONF_PATH) as f:
            return json.load(f)

    @classmethod
    def auth_admin(cls, user, password):
        return True if user.lower() == 'admin' and password == "admin1234" else False