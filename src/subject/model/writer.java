package subject.model;

public class writer {
	
	private String id;
	private String sname;
	
	public writer(String id, String name) {
		this.id=id;
		this.sname=name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return sname;
	}
	
	
}
