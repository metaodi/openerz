import shutil
import os
import logging


log = logging.getLogger(__name__)

__location__ = os.path.realpath(
    os.path.join(
        os.getcwd(),
        os.path.dirname(__file__)
    )
)


def copy_file_from_cache(cache_path, output_path):
    cache_loc = os.path.join(__location__, '..', '..', cache_path)
    if not os.path.exists(cache_loc):
        raise FileNotFoundError(f"Cache path {cache_loc} not found")
    log.debug(f"Copy file from cache {cache_path} to {output_path}")
    shutil.copy(cache_loc, output_path)

