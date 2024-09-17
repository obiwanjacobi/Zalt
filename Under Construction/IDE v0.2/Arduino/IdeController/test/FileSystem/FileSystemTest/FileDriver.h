#pragma once

#include <string>
#include <fstream>


class FileDriver {
public:
  explicit FileDriver(const char* fileName) {
    _stream.open(fileName, std::ios::in | std::ios::out | std::ios::binary);
  }
  void Close() {
    _stream.close();
  }
private:
  std::fstream _stream;
};