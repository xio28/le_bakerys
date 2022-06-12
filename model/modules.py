import json
import os

CONF_PATH  = "./config/config.json"

class Modules:

    @staticmethod
    def load_config():
        with open(CONF_PATH) as f:
            return json.load(f)

    @staticmethod
    def auth_admin(user, password):
        return True if user.lower() == 'admin' and password == "admin1234" else False

class Upload:
    @staticmethod
    def get_ext(file):
        name, ext = os.path.splitext(file.filename)
        return ext

    @staticmethod
    def save_img(root, file, name):
        file.save(root, overwrite=True)
        old = os.path.join(root, file.filename)
        new = os.path.join(root, f'{name}{Upload.get_ext(file)}'.lower())
        os.rename(old, new)

        return new