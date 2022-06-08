%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.alloc import alloc
from src.codefordao.utils.array import Array

@view
func test_array_utils{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}():
    alloc_locals

    let (local array : felt*) = alloc()
    assert array[0] = 1
    assert array[1] = 2
    assert array[2] = 3
    assert array[3] = 4

    let (arr_key) = Array.save(4, array)
    let (local arr_len: felt, local arr : felt*) = Array.get_array(arr_key)
    let (local arr_item : felt) = Array.get_item(arr_key, 2)

    assert 1 = arr[0]
    assert 2 = arr[1]
    assert 3 = arr[2]
    assert 4 = arr[3]
    assert 4 = arr_len

    assert arr_item = 3

    return ()
end
