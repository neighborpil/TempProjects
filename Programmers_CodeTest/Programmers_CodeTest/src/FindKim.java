public class FindKim {
	public String findKim(String[] seoul){
		//x�� �輭���� ��ġ�� �����ϼ���.
		int x = 0;

		for(x = 0; x < seoul.length; x++){
      if(seoul[x] == "Kim")
        return "�輭���� "+ x + "�� �ִ�";
    }
    return "�輭���� ���￡ ����";
	}
	
	// ������ ���� �׽�Ʈ�ڵ��Դϴ�.
	public static void main(String[] args) {
		FindKim kim = new FindKim();
		String[] names = {"Queen", "Tod","Kim"};
		System.out.println(kim.findKim(names));
	}
}

