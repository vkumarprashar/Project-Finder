package BeanClasses;

public class HitCounter
{
	private int sno;
	private Long hitcounter;
	private Long Downloads;
	public long getHitcounter() {
		return hitcounter;
	}

	public void setHitcounter(Long hitcounter) {
		this.hitcounter = hitcounter;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public Long getDownloads() {
		return Downloads;
	}

	public void setDownloads(Long downloads) {
		Downloads = downloads;
	}
}
