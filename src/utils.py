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


def unpack_json(json_dict: dict, parent_col:str = '', row: dict = {}) -> dict:
    """Unpack a json dict into a single row dict.

    Args:
        json_dict (dict): 
            A dict containing the json data. This function assumes that the json comes from a request from the IBGE'S API.
        row (dict, optional): 
            A pointer that will be passed recursivelly to the function to store the data.
            Don't set this argument. Defaults to {}.
        parent_col (str, optional): 
            The name of the parent column that will be added on the start of the column name.
            The column name will be {parent_col}-{child_col}. Defaults to ''.

    Returns:
        dict: A dict with the data.
    """
    
  # Iterate over each key/value pair on the data
    for key in json_dict:
    # If the value is another dict, i.e. it has more data
        if type(json_dict[key]) == dict:
            # recursivelly call unpack_json() to extract the data
            # passing the a json_dict, the current row (pointer), and the name of the parent col
            unpack_json(json_dict[key], row = row, parent_col = key)
        else:
            # If it's a value (e.g. str, int, etc.), register it on the row
            # formatting the row's column name
            if parent_col == '':
                col_name = str(parent_col) + str(key)
            else:
                col_name = str(parent_col) + '-' + str(key)
            # register the value in the row
            row[col_name] = json_dict[key]
    return row.copy()


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



