//split 自定义字符串的切割方式
template<typename T>
vector<T> split(const string& str, char delim){
	stringstream  stream(str);
	string line;
	vector<T> ans;
	while(getline(stream,line, delim)){
		istringstream stream(line);
		T tmp;
		while(stream >> tmp) ans.push_back(tmp);
	}
	return ans;
}