import shutil
import os
import logging


log = logging.getLogger(__name__)


def copy_file_from_cache(cache_path, output_path):
    if not os.path.exists(cache_path):
        raise FileNotFoundError(f"Cache path {cache_path} not found")
    log.debug(f"Copy file from cache {cache_path} to {output_path}")
    shutil.copy(cache_path, output_path)

