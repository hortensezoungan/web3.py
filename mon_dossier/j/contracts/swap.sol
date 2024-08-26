pragma solidity ^0.8.24;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

contract SwapContract {
    IUniswapV2Router02 public uniswapRouter;
    address private WETH;

    constructor(address _uniswapRouter) {
        uniswapRouter = IUniswapV2Router02(_uniswapRouter);
        WETH = uniswapRouter.WETH();
    }

    function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)
        external
        payable
    {
        uniswapRouter.swapETHForExactTokens{value: msg.value}(amountOut, path, to, deadline);
    }

    function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        payable
    {
        uniswapRouter.swapExactETHForTokens{value: msg.value}(amountOutMin, path, to, deadline);
    }

    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
    {
        uniswapRouter.swapExactTokensForETH(amountIn, amountOutMin, path, to, deadline);
    }

    function swapExactTokensForTokens(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
    {
        uniswapRouter.swapExactTokensForTokens(amountIn, amountOutMin, path, to, deadline);
    }

    function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)
        external
    {
        uniswapRouter.swapTokensForExactETH(amountOut, amountInMax, path, to, deadline);
    }

    function swapTokensForExactTokens(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)
        external
    {
        uniswapRouter.swapTokensForExactTokens(amountOut, amountInMax, path, to, deadline);
    }
}


curl https://ipfs.io/ipfs/Qmegj6pV3qvGE8XWfMPdzXCu2sUoNMGtpbL5vYuAkhnJja | jq '.claims."YOUR_ADDRESS_HERE"'