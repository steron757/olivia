package com.olivia.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

/**
 * 仅作为图片上传,现不用
 * 
 * @author Gang.chen
 *
 */
public class UploadImageAction extends BaseAction {

	private static final long serialVersionUID = 6290991468717956873L;
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;
	private static Logger log = Logger.getLogger(UploadImageAction.class);
	private String path;		//图片上传后的路径
	List<String> msg = new ArrayList<String>();
	
	public String execute() throws IOException {
		// 得到工程保存图片的路径
		String root = request.getRealPath("/upload");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");		//上传到当前月份
		String newpath = root + "\\" + sdf.format(new Date());
		File dir = new File(newpath);
		dir.mkdir();
		
		// 循环上传的文件
		try {
			List<String> newNameList = new ArrayList<String>();		//新文件名
			
			for (int i = 0; i < file.size(); i++) {
				InputStream is = new FileInputStream(file.get(i));

				// 得到图片保存的位置(根据root来得到图片保存的路径在tomcat下的该工程里)
				File destFile = null;
				
				String name = this.getFileFileName().get(i);		//改名
				if(name.indexOf(".")<0){
					msg.add("File error.");
					setActionMessages(msg);
					log.error("File error");
					return ERROR;
				} else {
					name = System.currentTimeMillis() + "." + name.split("\\.")[1];
				}
				newNameList.add(name);
				
				if(dir.exists()){
					path = "upload/" + sdf.format(new Date());
					destFile = new File(newpath, name);
				} else {
					path = "upload/";
					destFile = new File(root, name);
				}
				// 把图片写入到上面设置的路径里
				OutputStream os = null;
				os = new FileOutputStream(destFile);
				byte[] buffer = new byte[400];
				int length = 0;
				while ((length = is.read(buffer)) > 0) {
					os.write(buffer, 0, length);
				}
				is.close();
				os.close();
			}
			fileFileName.clear();
			fileFileName.addAll(newNameList);
			
		} catch (Exception e) {
			msg.add(e.getMessage());
			setActionMessages(msg);
			log.error(e.getClass() + "," + e.getMessage());
			return SUCCESS;
		}
		msg.add("Upload image successful.");
		setActionMessages(msg);
		log.info("Upload image successful.");
		return SUCCESS;
	}

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
