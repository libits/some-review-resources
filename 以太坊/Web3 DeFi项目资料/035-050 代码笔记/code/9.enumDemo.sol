// SPDX-License-Identifier: MIT; 
pragma solidity >=0.7.0<0.9.0;


contract UserState {
  // 枚举
  //默认值是列表中的第一个元素
  enum State { 
    Online,  	// 0
    Offline,	// 1
    Unknown		// 2
  } 

  State public test;
  function get() public view returns (State) {
      return test;
  }
//   // 通过将uint传递到输入来更新状态
  function set(State _status) public {
      test = _status;
  }
//   // 也可以是这样确定属性的更新
  function off() public {
      test = State.Offline;
  }
//   // delete 将枚举重置为其第一个值 0
  function reset() public {
      delete test;
  }
}