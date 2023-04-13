# Default imports
import json

# Import for the requests
import requests
import urllib3
import ssl

# Imports for the data manipulation
import pandas as pd



class CustomHttpAdapter (requests.adapters.HTTPAdapter):
    """A custom HTTP adapter that uses a custom SSL context."""
    # "Transport adapter" that allows us to use custom ssl_context.

    def __init__(self, ssl_context=None, **kwargs):
        self.ssl_context = ssl_context
        super().__init__(**kwargs)

    def init_poolmanager(self, connections, maxsize, block=False):
        self.poolmanager = urllib3.poolmanager.PoolManager(
            num_pools=connections, maxsize=maxsize,
            block=block, ssl_context=self.ssl_context)


def get_request():
    """Return a requests session with a custom SSL context."""
    ctx = ssl.create_default_context(ssl.Purpose.SERVER_AUTH)
    ctx.options |= 0x4  # OP_LEGACY_SERVER_CONNECT
    session = requests.session()
    session.mount('https://', CustomHttpAdapter(ctx))
    return session


def get_request_json(url: str)-> dict:
    """Return a json from a request.

    Args:
        url (str): The url to make the request.

    Returns:
        dict: A dict with the json data.
    """
    response = get_request().get(url)
    return response.json()



def make_df(json_dict: dict) -> pd.DataFrame:
    """Return a DataFrame from a json dict.

    Args:
        json_dict (dict): A dict containing the json data.

    Returns:
        pd.DataFrame: A DataFrame with the data.
    """
    # Create a list to store the rows
    rows = []
    # Iterate over each item on the json dict
    for item in json_dict:
        # Unpack the json dict into a single row dict
        row = unpack_json(item)
        # Add the row to the list
        rows.append(row)
    # Create a DataFrame from the rows list
    df = pd.DataFrame(rows)
    return df


def unpack_json(json_dict: dict, col_name: str = '') -> dict:
    output = {}

    def flatten(column, col_name:str = ''):

        if type(column) == dict:

            for key in column:
                
                if col_name == '':
                    new_col_name = str(key)
                else:
                    new_col_name = col_name + '-' + str(key)
                    #new_col_name = str(key)

                flatten(column[key], new_col_name)
        else:
            output[col_name] = column

    flatten(json_dict, col_name)
    return output