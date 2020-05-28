package BeanClasses;

public class ProjectsAjax
{
	private int projectID;
	private String projectName;
	private String aboutProject;
	private int synopsis;
	private int projectReport;
	private int projectPPt;
	private String uploadedBy;
	private int downloads;
	private int cost;
	
	public int getProjectID() {
		return projectID;
	}
	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public int getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(int synopsis) {
		this.synopsis = synopsis;
	}
	public int getProjectReport() {
		return projectReport;
	}
	public void setProjectReport(int projectReport) {
		this.projectReport = projectReport;
	}
	public int getProjectPPt() {
		return projectPPt;
	}
	public void setProjectPPt(int projectPPt) {
		this.projectPPt = projectPPt;
	}
	public String getUploadedBy() {
		return uploadedBy;
	}
	public void setUploadedBy(String uploadedBy) {
		this.uploadedBy = uploadedBy;
	}
	public int getDownloads() {
		return downloads;
	}
	public void setDownloads(int downloads) {
		this.downloads = downloads;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getAboutProject() {
		return aboutProject;
	}
	public void setAboutProject(String aboutProject) {
		this.aboutProject = aboutProject;
	}
}
