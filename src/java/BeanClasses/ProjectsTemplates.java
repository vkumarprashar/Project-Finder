package BeanClasses;

public class ProjectsTemplates
{
	private int templateID;
	private String templateName;
	private String uploadedBy;
	private int downloads;
	private int cost;
	private String aboutTemplate;
	
	public int getTemplateID() {
		return templateID;
	}
	public void setTemplateID(int templateID) {
		this.templateID = templateID;
	}
	public String getTemplateName() {
		return templateName;
	}
	public void setTemplateName(String templateName) {
		this.templateName = templateName;
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
	public String getAboutTemplate() {
		return aboutTemplate;
	}
	public void setAboutTemplate(String aboutTemplate) {
		this.aboutTemplate = aboutTemplate;
	}
}
