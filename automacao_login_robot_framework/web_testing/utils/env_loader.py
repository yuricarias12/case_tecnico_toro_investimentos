from dotenv import load_dotenv
import os

def get_env(key):
    load_dotenv()
    return os.getenv(key)


if __name__ == "__main__":
    print(get_env("EMAIL")) 
    print(get_env("SENHA")) 