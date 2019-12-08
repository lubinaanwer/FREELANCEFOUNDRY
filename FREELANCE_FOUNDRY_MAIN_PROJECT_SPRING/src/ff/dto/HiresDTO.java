package ff.dto;

public class HiresDTO {
String WorkerId,SeekerId,AcceptStatus,SeekerName;

public String getSeekerName() {
	return SeekerName;
}

public void setSeekerName(String seekerName) {
	SeekerName = seekerName;
}

public String getAcceptStatus() {
	return AcceptStatus;
}

public void setAcceptStatus(String acceptStatus) {
	AcceptStatus = acceptStatus;
}

public String getWorkerId() {
	return WorkerId;
}

public void setWorkerId(String workerId) {
	WorkerId = workerId;
}

public String getSeekerId() {
	return SeekerId;
}

public void setSeekerId(String seekerId) {
	SeekerId = seekerId;
}
}
