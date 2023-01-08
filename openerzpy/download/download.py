# -*- coding: utf-8 -*-
import requests
from requests.adapters import HTTPAdapter
from requests.packages.urllib3.util.retry import Retry


def _download_request(url):
    retry_strategy = Retry(
        total=3,
        backoff_factor=2,
        status_forcelist=[429, 500, 502, 503, 504],
        method_whitelist=["HEAD", "GET", "OPTIONS"]
    )
    adapter = HTTPAdapter(max_retries=retry_strategy)
    http = requests.Session()
    http.mount("https://", adapter)
    http.mount("http://", adapter)
    headers = {'user-agent': 'Mozilla Firefox Mozilla/5.0; metaodi openerz at github'}
    r = http.get(url, headers=headers, timeout=10)
    r.raise_for_status()
    return r


def download(url, encoding='utf-8'):
    r = _download_request(url)
    if encoding:
        r.encoding = encoding
    return r.text


def download_content(url):
    r = _download_request(url)
    return r.content


def jsondownload(url):
    r = _download_request(url, silent)
    return r.json()


def download_file(url, path):
    r = _download_request(url)
    with open(path, 'wb') as f:
        for chunk in r.iter_content(1024):
            f.write(chunk)

