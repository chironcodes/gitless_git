import os


class Pooler:

    @staticmethod
    def create_service_folders(services) -> bool: 
        mkdir_fold = [ os.makedirs(f) for f in services if not os.path.isdir(f)] 
        return True

    @staticmethod
    def get_projects(path) -> list[str]: return [ f.path.split('gitlab/') for f in os.scandir(path) if os.path.isdir(f.path+'/.git')]


