/*- Lazy Singleton usually needs to promise the thread safe, but since c++11, the version of local static variable is safe in thread. 
And this meyers singleton is perfect and  elegant
*/
class Singleton
{
private:
	Singleton() { };
	~Singleton() { };
	Singleton(const Singleton&);
	Singleton& operator=(const Singleton&);
public:
	static Singleton& getInstance() {
		static Singleton instance;
		return instance;
	}
};
