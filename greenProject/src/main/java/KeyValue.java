import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class KeyValue {

	public static void main(String[] args) {
		
		List<Map<String, Object>> listMap = new ArrayList<Map<String, Object>>();
		Map<String, Object> map 		  = new HashMap();
		
		for (int i = 0; i < 9; i++) {
			
			String cnt = Integer.toString(i);
			map.put(cnt, i);
			
		};
		
		listMap.add(map);
		System.out.println(listMap);
	}

}
