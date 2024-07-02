// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Loop{
    function loop(uint256 n) public pure returns(uint256){
        uint256 num;
        for(uint256 i=0;i<n;i++){
            if(i==6){
                num--;
                continue ;
            }
            if(i==15){
                while (n< 10) 
                {
                n++;
                }
                num=n+num;
                 break ;
             }
                num++;
            }
           return num;
        }
    }
   
