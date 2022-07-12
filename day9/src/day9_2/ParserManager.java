package day9_2;

interface Parseable {
	// 구문 분석작업을 수행한다.
	public abstract void parse(String fileName);
}

public class ParserManager {
	// 리턴 타입이 Parseable인터페이스이다.
	public static Parseable getParser(String type) {
		if(type.equals("XML")) {
			return new XMLParser();
		} else {
			Parseable p = new HTMLParser();
			return p;
		}
	}
}
