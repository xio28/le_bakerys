import json
import os
from datetime import datetime

CONF_PATH  = "./config/config.json"
SESSION_PATH = "./config/session.json"

class Modules:

    @staticmethod
    def load_config():
        with open(CONF_PATH) as f:
            return json.load(f)

    @staticmethod
    def load_session():
        with open(SESSION_PATH) as f:
            return json.load(f)

    @staticmethod
    def write_session(datas: dict):
        with open(SESSION_PATH, 'r+') as f:
            session = json.load(f)
            
            for session_key in session.keys():
                for datas_key, datas_value in datas.items():
                    if session_key == datas_key:
                        session[session_key] = datas_value

            f.seek(0)
            json.dump(session, f, indent=4)
            f.truncate()

    @staticmethod
    def auth_admin(user, password):
        return True if user.lower() == 'admin' and password == "admin1234" else False

    @staticmethod
    def set_time():
        now = datetime.now()
        return now.strftime("%d%m%Y%H%M%S")

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