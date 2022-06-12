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
    def save_img(root, file, username):
        file.save(root, overwrite=True)
        old = os.path.join(root, file.filename)
        new = os.path.join(root, f'{username}{Upload.get_ext(file)}'.lower())
        os.renaem(old, new)

        return new