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
//拓展replace的功能
void  replace(string &str, const string& source, const string& target){
	auto length = str.size();
	vector<string> cache(length);
	for(int i = 0; i < length; i++){
		cache[i] = str[i];
	}
	replace(cache.begin(),cache.end(), source, target);
	string ans;
	for(const auto &c: cache) ans.append(c);
	str = move(ans);
}
