package com.olivia.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.olivia.dao.ImageDao;
import com.olivia.dao.ProductDao;
import com.olivia.model.Image;
import com.olivia.model.Product;

/**
 * Product action
 * 
 * @author Gang.chen
 *
 */
public class ProductAction extends BaseAction {
	private static final long serialVersionUID = -2078226003856975237L;

	private List<Image> imageList;
	private ProductDao productDao;
	private ImageDao imageDao;

	/** 产品ID */
	private String pid;
	private String title;
	private String description;

	private List<File> cover;
	private List<String> coverFileName;
	private List<String> coverContentType;

	private List<Product> productList;
	
	public String productDetail() {
		try {
			setImageList(imageDao.selectImage(pid));
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("index", "2");
		return SUCCESS;
	}

	public String list(){
		setProductList(getProducts());
		return "list";
	}
	
	public String modifyProductInfo(){
		Product p = new Product();
		p.setId(pid);
		List<Product> pList = null;
		try {
			pList = productDao.selectProduct(p);
		} catch (Exception e) {
			response(false, e.getMessage());
			e.printStackTrace();
		}
		if(pList == null || pList.size() == 0){
			response(false,"Product not exists");
			return null;
		}
		p = pList.get(0);
		p.setTitle(title);
		p.setIntroduction(description);
		int result = 0;
		try {
			result = productDao.updateProduct(p);
		} catch (Exception e) {
			response(false, e.getMessage());
			e.printStackTrace();
			return null;
		}
		if(result > 0)
			response(true, "");
		else
			response(false,"");
		return null;
	}
	
	public String add(){
		String path = uploadCoverImage();
		Product p = new Product();
		p.setIntroduction(description);
		p.setTitle(title);
		p.setCover(path);
		try {
			productDao.addProduct(p);
		} catch (Exception e) {
			e.printStackTrace();
		}
		setProductList(getProducts());
		return "addproduct";
	}
	
	public String del() {
		Product p = new Product();
		p.setId(pid);
		List<Product> plist = null;
		try {
			plist = productDao.selectProduct(p);
		} catch (Exception e1) {
			e1.printStackTrace();
			return "delproduct";
		}
		if(plist == null || plist.size() == 0){
			response(false, "Product not exists");
			return "delproduct";
		}
		int result = 0;
		try {
			result = productDao.deleteProduct(pid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result > 0) {
			//Delete images
			String path = request.getSession().getServletContext().getRealPath("") + "\\" + plist.get(0).getCover();
			File file = new File(path);
			boolean filedelete = false;
			if (file.exists()){
				filedelete = file.delete();
			}
			System.out.println("Product Image delete result: " + filedelete);
		}
		deleteImage(pid);
		setProductList(getProducts());
		return "delproduct";
	}
	
	private boolean deleteImage(String pid) {
		List<Image> imgList;
		try {
			imgList = imageDao.selectImage(pid);
			for(Image img : imgList) {
				imageDao.deleteImage(img.getId());
				//Delete images
				String path = request.getSession().getServletContext().getRealPath("") + "\\" + img.getPath();
				File file = new File(path);
				boolean filedelete = false;
				if (file.exists()){
					filedelete = file.delete();
				}
				System.out.println("Image delete result: " + filedelete);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	private String uploadCoverImage() {
		String path = null;
		// 得到工程保存图片的路径
//		String root = ServletActionContext.getRequest().getServletContext().getRealPath("/upload");
		String root = request.getRealPath("/upload");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");		//上传到当前月份
		String newpath = root + "\\" + sdf.format(new Date());
		File dir = new File(newpath);
		dir.mkdir();
		List<String> newNameList = new ArrayList<String>();		//新文件名
		
		// 循环上传的文件
		try {
			
			for (int i = 0; i < cover.size(); i++) {
				InputStream is = new FileInputStream(cover.get(i));

				// 得到图片保存的位置(根据root来得到图片保存的路径在tomcat下的该工程里)
				File destFile = null;
				
				String name = this.getCoverFileName().get(i);		//改名
				if(name.indexOf(".")<0){
					return null;
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
			coverFileName.clear();
			coverFileName.addAll(newNameList);
		} catch (Exception e) {
			return null;
		}
		return path + "/" + newNameList.get(0);
	}
	
	private List<Product> getProducts(){
		List<Product> productList = null;
		try {
			productList = productDao.selectProduct();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
	
	public List<Image> getImageList() {
		return imageList;
	}

	public void setImageList(List<Image> imageList) {
		this.imageList = imageList;
	}

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ImageDao getImageDao() {
		return imageDao;
	}

	public void setImageDao(ImageDao imageDao) {
		this.imageDao = imageDao;
	}

	public List<File> getCover() {
		return cover;
	}

	public void setCover(List<File> cover) {
		this.cover = cover;
	}

	public List<String> getCoverFileName() {
		return coverFileName;
	}

	public void setCoverFileName(List<String> coverFileName) {
		this.coverFileName = coverFileName;
	}

	public List<String> getCoverContentType() {
		return coverContentType;
	}

	public void setCoverContentType(List<String> coverContentType) {
		this.coverContentType = coverContentType;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

}
