import pytest
from starkware.starknet.testing.starknet import Starknet
from utils import (
    get_contract_def
)

@pytest.fixture
def contract_defs():
    _def = get_contract_def('array.cairo')
    return _def

# @pytest.mark.asyncio
# async def test_initial_data(erc721_factory):
#     erc721 = erc721_factory
#     execution_info = await erc721.name().call()
#     assert execution_info.result.name == NAME