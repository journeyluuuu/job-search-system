import io
import os
import yaml
import pymysql
from logger import setup_log

logger = setup_log(__name__)
DEFAULT_CONFIG_LOCATION = 'config.yml'


class mysql:

    def __init__(self, config):
        """
        :param config:
        """
        self.connection = pymysql.connect(user=config['user'],
                                          password=config['password'],
                                          port=config['port'],
                                          host=config['host'],
                                          db=config['db'],
                                          charset=config['charset'])

    def fetchone_db(self, sql):
        """
        :param sql: sql queries
        :return:    sql results
        """
        c = self.connection.cursor(cursor=pymysql.cursors.DictCursor)
        self.connection.ping(reconnect=True)
        c.execute(sql)
        return c.fetchone()

    def fetchall_db(self, sql):
        """
        :param sql: sql queries
        :return:    sql results
        """
        c = self.connection.cursor(cursor=pymysql.cursors.DictCursor)
        self.connection.ping(reconnect=True)
        c.execute(sql)
        return c.fetchall()

    def exe(self, sql):
        """
        :param sql: sql queries
        """
        c = self.connection.cursor(cursor=pymysql.cursors.DictCursor)
        self.connection.ping(reconnect=True)
        c.execute(sql)
        self.connection.commit()

    def rollback(self):
        """
        return
        """
        self.connection.ping(reconnect=True)
        self.connection.rollback()


class InvalidConfigError(ValueError):
    """
    """

    def __init__(self, message):
        super(InvalidConfigError, self).__init__(message)


def read_file(filename, encoding="utf-8-sig"):
    """
    read files
    """
    with io.open(filename, encoding=encoding) as f:
        return f.read()


def fix_yaml_loader():
    """
    """
    from yaml import Loader, SafeLoader

    def construct_yaml_str(self, node):
        # Override the default string handling function
        # to always return unicode objects
        return self.construct_scalar(node)

    Loader.add_constructor(u'tag:yaml.org,2002:str', construct_yaml_str)
    SafeLoader.add_constructor(u'tag:yaml.org,2002:str', construct_yaml_str)


def read_yaml(content):
    """
    read yaml
    """
    fix_yaml_loader()
    return yaml.load(content)


def read_yaml_file(filename):
    """
    read local yaml
    """
    fix_yaml_loader()
    return yaml.load(read_file(filename, "utf-8"))


def load_config(filename=DEFAULT_CONFIG_LOCATION, **kwargs):
    """
        input:
            filename:
                    "/Config/config.yml"
        output:
            items:
                    {'language': 'zh',
                     'neo4j':
                         {'host': '127.0.0.1',
                          'http_port': 7474,
                          'user': 'neo4j',
                          'password': '123456'
                          }
                    }
    """
    if filename is None and os.path.isfile(DEFAULT_CONFIG_LOCATION):
        filename = DEFAULT_CONFIG_LOCATION
    if filename is not None:
        try:
            file_config = read_yaml_file(filename)
        except Exception as e:
            error = "Failed to read configuration file '{}'. Error: {}".format(filename, e)
            logger.error(error)
            raise InvalidConfigError(error)
        if kwargs:
            file_config.update(kwargs)
        return file_config
    else:
        return kwargs