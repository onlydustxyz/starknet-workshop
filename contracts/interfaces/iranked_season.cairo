%lang starknet

from starkware.cairo.common.uint256 import Uint256

@contract_interface
namespace IRankedSeason:

    func open_season() -> ():
    end

    func close_season() -> ():
    end

    func season_id() -> (res: felt):
    end

    func season_name() -> (res: felt):
    end

    func reward_token_address() -> (res: felt):
    end

    func reward_total_amount() -> (res: Uint256):
    end

    func is_season_open() -> (res: felt):
    end
end
