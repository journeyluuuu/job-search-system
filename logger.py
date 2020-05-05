import os
import logging
from logging.handlers import RotatingFileHandler, TimedRotatingFileHandler


def log_dir_check():
    """
    check logger
    :return:
    """
    if "logs" not in os.listdir("./"):
        os.makedirs("logs")
        os.makedirs("logs/all")
        os.makedirs("logs/error")
    else:
        logs_dir = os.listdir("./logs")
        if "all" not in logs_dir:
            os.makedirs("./logs/all")
        elif "error" not in logs_dir:
            os.makedirs("./logs/error")


def setup_log(name):
    """
    initialize
    :param name:  __name__
    :return: 
    """
    log_dir_check()

    def should_log(record):
        """
      
        :param record: 
        :return: True or False
        """
        if record.levelname not in ["INFO", "WARNING"]:
            return False
        return True

   
    logger = logging.getLogger(name)

    logger.setLevel(level=logging.INFO)

    _ = '%(asctime)s - %(levelname)s - %(module)s:%(funcName)s - lineno:%(lineno)d - %(message)s'
    formatter = logging.Formatter(_)


    console = logging.StreamHandler()
    all_handler = TimedRotatingFileHandler("logs/all/all_log.log", when='midnight', interval=1, backupCount=10)
    error_handler = RotatingFileHandler("logs/error/error_log.log", maxBytes=1024 * 1024 * 100, backupCount=10)


    console.setLevel(logging.INFO)
    all_handler.setLevel(logging.INFO)
    error_handler.setLevel(logging.ERROR)


    console.setFormatter(formatter)
    all_handler.setFormatter(formatter)
    error_handler.setFormatter(formatter)


    logging_filter = logging.Filter()
    logging_filter.filter = should_log
    console.addFilter(logging_filter)


    all_handler.suffix = "%Y-%m-%d_%H-%M-%S.log"


    logger.addHandler(console)
    logger.addHandler(all_handler)
    logger.addHandler(error_handler)

    return logger
