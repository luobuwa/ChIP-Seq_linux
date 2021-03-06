package ChIP_Seq.action;

import ChIP_Seq.FileUtil;
import ChIP_Seq.GetProperty;
import ChIP_Seq.UploadUtil;
import ChIP_Seq.bean.MacsBean;
import ChIP_Seq.service.MacsService;
import ChIP_Seq.xmlUtil;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
<<<<<<< HEAD
import java.util.*;
=======
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c

/**
 * Created by lily on 11/17/16.
 */
public class diffRepsAction extends ActionSupport{
    private String input_diff_tagfile;
    private String input_diff_controlfile;
    private String input_diff_path;
    private int optionalParameters;
    private String macs_s,macs_bw,macs_p,macs_gs;
    private String flag,flag_validate;
    private String stdoutlist;
    private File fileField_macs_tag;
    private File fileField_macs_control;
    private String fileField_macs_tagFileName;
    private String fileField_macs_controlFileName;
    private String account_hidden;
    private List<File> fileField_diff;
    private List<String> fileField_diffFileName;

    public String getAccount_hidden() {
        return account_hidden;
    }

    public void setAccount_hidden(String account_hidden) {
        this.account_hidden = account_hidden;
    }

    public String getFlag_validate() {
        return flag_validate;
    }

    public void setFlag_validate(String flag_validate) {
        this.flag_validate = flag_validate;
    }


    public String getInput_diff_tagfile() {
        return input_diff_tagfile;
    }

    public void setInput_diff_tagfile(String input_diff_tagfile) {
        this.input_diff_tagfile = input_diff_tagfile;
    }

    public String getInput_diff_controlfile() {
        return input_diff_controlfile;
    }

    public void setInput_diff_controlfile(String input_diff_controlfile) {
        this.input_diff_controlfile = input_diff_controlfile;
    }

    public List<File> getFileField_diff() {
        return fileField_diff;
    }

    public void setFileField_diff(List<File> fileField_diff) {
        this.fileField_diff = fileField_diff;
    }

    public List<String> getFileField_diffFileName() {
        return fileField_diffFileName;
    }

    public void setFileField_diffFileName(List<String> fileField_diffFileName) {
        this.fileField_diffFileName = fileField_diffFileName;
    }

    public String getFileField_macs_controlFileName() {
        return fileField_macs_controlFileName;
    }

    public void setFileField_macs_controlFileName(String fileField_macs_controlFileName) {
        this.fileField_macs_controlFileName = fileField_macs_controlFileName;
    }

    public File getFileField_macs_tag() {
        return fileField_macs_tag;
    }

    public void setFileField_macs_tag(File fileField_macs_tag) {
        this.fileField_macs_tag = fileField_macs_tag;
    }

    public File getFileField_macs_control() {
        return fileField_macs_control;
    }

    public void setFileField_macs_control(File fileField_macs_control) {
        this.fileField_macs_control = fileField_macs_control;
    }

    public String getFileField_macs_tagFileName() {
        return fileField_macs_tagFileName;
    }

    public void setFileField_macs_tagFileName(String fileField_macs_tagFileName) {
        this.fileField_macs_tagFileName = fileField_macs_tagFileName;
    }

    public String getInput_diff_path() {
        return input_diff_path;
    }

    public void setInput_diff_path(String input_diff_path) {
        this.input_diff_path = input_diff_path;
    }

    public int getOptionalParameters() {
        return optionalParameters;
    }

    public void setOptionalParameters(int optionalParameters) {
        this.optionalParameters = optionalParameters;
    }

    public String getMacs_s() {
        return macs_s;
    }

    public void setMacs_s(String macs_s) {
        this.macs_s = macs_s;
    }

    public String getMacs_bw() {
        return macs_bw;
    }

    public void setMacs_bw(String macs_bw) {
        this.macs_bw = macs_bw;
    }

    public String getMacs_p() {
        return macs_p;
    }

    public void setMacs_p(String macs_p) {
        this.macs_p = macs_p;
    }

    public String getMacs_gs() {
        return macs_gs;
    }

    public void setMacs_gs(String macs_gs) {
        this.macs_gs = macs_gs;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getStdoutlist() {
        return stdoutlist;
    }

    public void setStdoutlist(String stdoutlist) {
        this.stdoutlist = stdoutlist;
    }

    private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
    public String diffReps_exe() throws Exception{
        //生成运行起始时间
        Date date=new Date();
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");
        String time=format.format(date);
        //构建session
        xmlUtil xmlUtil = new xmlUtil();
        String JobId="JobId_"+xmlUtil.generateString(6);
        xmlUtil.creatSession(JobId,time);
        /////////////////////////////////////////////////////////////////////////
        UploadUtil uploadUtil=new UploadUtil();
        String remote_tag,remote_control;
        List<String> Upload_path=uploadUtil.upload(fileField_diffFileName,fileField_diff);
        remote_tag=Upload_path.get(0);
        remote_control= Upload_path.get(1);
        System.out.println(remote_tag);
        System.out.println(remote_control);
        ///////////////////////////////////////////////////////////////////////
        FileUtil fileUtil=new FileUtil();
        String admin_path= fileUtil.adminCheck_path()+".txt";
        File admin=new File(admin_path);
        appendMethodB(admin_path,"File list:"+"\r\n");
        String fileList="";
        for(int i=0;i<fileField_diff.size();i++){
            appendMethodB(admin_path,Upload_path.get(i)+"\r\n");
            File file=new File(Upload_path.get(i));
            String name=file.getName();
            fileList+=name+" ; ";
        }
        xmlUtil.xmlAdd_Jobs(JobId,fileList, "diffReps", "ERROR","email",time);
        appendMethodB(admin_path,"Result path:"+"\r\n");
        /////////////////////////////////////////////////////////////////////////
        MacsService macsService= (MacsService) applicationContext.getBean("macsService");
        FileUtil fileUtil1=new FileUtil();
        input_diff_path=fileUtil1.Result_path();
        appendMethodB(admin_path, input_diff_path + "\r\n");
        MacsBean macsBean=new MacsBean();
        macsBean.setInput_tagfile(remote_tag);
        macsBean.setInput_controlfile(remote_control);
        macsBean.setInput_macs_path(input_diff_path);
        macsBean.setOption("");
        macsService.setMacsBean(macsBean);
        stdoutlist=macsService.Macs();
        flag="16";
        flag_validate="1";

        //将结果压缩
        FileUtil fileUtil2=new FileUtil();
        fileUtil2.ZipMultiFile("/home/bio/dataset/" + JobId, "/home/bio/dataset/" + JobId + ".zip");
        return SUCCESS;
    }
    public String diffnoUpload(){
        MacsService macsService= (MacsService) applicationContext.getBean("macsService");
        MacsBean macsBean=new MacsBean();
        FileUtil fileUtil=new FileUtil();
        input_diff_path=fileUtil.Result_path();
        macsBean.setInput_tagfile(input_diff_tagfile);
        macsBean.setInput_controlfile(input_diff_controlfile);
        macsBean.setInput_macs_path(input_diff_path);
        macsBean.setOption("");
        macsService.setMacsBean(macsBean);
        stdoutlist=macsService.Macs();
        flag="16";
        flag_validate="1";
        return SUCCESS;
    }
    public static void appendMethodB(String fileName, String content) {
        try {
            FileWriter writer = new FileWriter(fileName, true);
            writer.write(content);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void validate(){

        if(input_diff_tagfile.equals("")){
            this.addFieldError("input_tagfile", "Please input tag file.");
        }
        if(input_diff_controlfile.equals("")){
            this.addFieldError("input_controlfile", "Please input control file.");
        }
<<<<<<< HEAD
        try{
            UploadUtil uploadUtil2=new UploadUtil();
            if(!uploadUtil2.Check(fileField_diffFileName,fileField_diff)){
                /*HttpServletResponse response = ServletActionContext.getResponse();
                response.setContentType("text/html; charset=utf-8");
                response.getWriter().println("<script language='javascript'>alert('The file should be in right format and right size!');</script>");*/
                this.addFieldError("check1", "The file should be in right format and right size!");
            }
        }catch(Exception e){
        }
        if(check()){
            this.addFieldError("check1", "The input contain invalid characters! ");
        }
=======
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
     /*   xmlUtil xmlUtil=new xmlUtil();
        xmlUtil.login_validate();*/
        flag="16";
        flag_validate="2";
    }
<<<<<<< HEAD
    public boolean check() {
        String[] characterParams = {"~", "`", "!", "@", "#", "$", "%", "^", "&", "{", "}", "[", "]", "(", ")", ";", "\"", "'", "\\", "<", ">", "?", "/", "<<", ">>", "+"};
        boolean status = false;
        Map paramMap = ServletActionContext.getRequest().getParameterMap();
        Set<String> set = paramMap.keySet();
        String value="";
        for(Object aaa: set.toArray()){
            value = ((String[])paramMap.get(aaa))[0];
            for (int i = 0; i < characterParams.length; i++) {
                if (value.indexOf(characterParams[i]) >= 0) {
                    status = true;
                    break;
                }
            }
        }
        return status;
    }
=======
>>>>>>> e936dd87b716fe25aca999e6e8b1f4143e34194c
}
