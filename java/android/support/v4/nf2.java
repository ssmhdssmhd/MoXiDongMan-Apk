package android.support.v4;

import android.support.v4.lk0;
import com.wsw.cospa.utils.Cvolatile;
import fi.iki.elonen.NanoHTTPD;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Credentials;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class nf2 {

    /* renamed from: const, reason: not valid java name */
    public static final String f4206const = "nf2";

    /* renamed from: final, reason: not valid java name */
    public static final String f4207final = "ObjectNotFound";

    /* renamed from: super, reason: not valid java name */
    private static final String f4208super = "<?xml version=\"1.0\"?>\n<a:propfind xmlns:a=\"DAV:\">\n<a:prop>\n<a:displayname/>\n<a:resourcetype/>\n<a:getcontentlength/>\n<a:creationdate/>\n<a:getlastmodified/>\n%s</a:prop>\n</a:propfind>";

    /* renamed from: throw, reason: not valid java name */
    public static final /* synthetic */ boolean f4209throw = false;

    /* renamed from: case, reason: not valid java name */
    private long f4211case;

    /* renamed from: do, reason: not valid java name */
    private URL f4214do;

    /* renamed from: for, reason: not valid java name */
    private String f4216for;

    /* renamed from: if, reason: not valid java name */
    private String f4218if;

    /* renamed from: new, reason: not valid java name */
    private long f4219new;

    /* renamed from: try, reason: not valid java name */
    private long f4221try;

    /* renamed from: else, reason: not valid java name */
    private boolean f4215else = true;

    /* renamed from: goto, reason: not valid java name */
    private boolean f4217goto = false;

    /* renamed from: this, reason: not valid java name */
    private String f4220this = "";

    /* renamed from: break, reason: not valid java name */
    private String f4210break = "";

    /* renamed from: catch, reason: not valid java name */
    private String f4212catch = "";

    /* renamed from: class, reason: not valid java name */
    private OkHttpClient f4213class = Cvolatile.m27164goto();

    public nf2(String str) throws MalformedURLException {
        this.f4214do = new URL((URL) null, str, ui0.f6896do);
    }

    /* renamed from: default, reason: not valid java name */
    private Response m5203default(ArrayList<String> arrayList) throws IOException {
        String strReplace;
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            sb.append("<a:");
            sb.append(next);
            sb.append("/>\n");
        }
        if (sb.toString().isEmpty()) {
            strReplace = f4208super.replace("%s", "");
        } else {
            strReplace = String.format(f4208super, sb.toString() + "\n");
        }
        lk0.Cdo cdoM4703do = lk0.m4703do();
        if (cdoM4703do != null) {
            return this.f4213class.newCall(new Request.Builder().url(m5237while()).addHeader(pk0.f5051final, Credentials.basic(cdoM4703do.m4706if(), cdoM4703do.m4705do())).addHeader("Depth", "1").method("PROPFIND", RequestBody.create(MediaType.parse(NanoHTTPD.MIME_PLAINTEXT), strReplace)).build()).execute();
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m5204new(Request.Builder builder) throws IOException {
        lk0.Cdo cdoM4703do = lk0.m4703do();
        if (cdoM4703do != null) {
            builder.header(pk0.f5051final, Credentials.basic(cdoM4703do.m4706if(), cdoM4703do.m4705do()));
        }
        return this.f4213class.newCall(builder.build()).execute().isSuccessful();
    }

    /* renamed from: switch, reason: not valid java name */
    private List<nf2> m5205switch(String str) {
        String strM5237while;
        ArrayList arrayList = new ArrayList();
        Elements elementsByTag = Jsoup.parse(str).getElementsByTag("d:response");
        if (m5237while().endsWith(on0.f4694final)) {
            strM5237while = m5237while();
        } else {
            strM5237while = m5237while() + on0.f4694final;
        }
        Iterator<Element> it = elementsByTag.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            String strText = next.getElementsByTag("d:href").get(0).text();
            if (!strText.endsWith(on0.f4694final)) {
                String strSubstring = strText.substring(strText.lastIndexOf(on0.f4694final) + 1);
                try {
                    nf2 nf2Var = new nf2(strM5237while + strSubstring);
                    nf2Var.m5225package(strSubstring);
                    String strText2 = next.getElementsByTag("d:getcontenttype").text();
                    if (l22.m4571return(strText2)) {
                        strText2 = "";
                    }
                    nf2Var.m5216extends(strText2);
                    if (!strText.isEmpty()) {
                        nf2Var.f4210break = strText;
                    } else if (this.f4220this.isEmpty()) {
                        nf2Var.f4210break = this.f4214do.getFile().replace(on0.f4694final, "");
                    } else {
                        nf2Var.f4210break = this.f4214do.toString().replace(this.f4220this, "").replace(on0.f4694final, "");
                    }
                    if (nf2Var.f4216for.startsWith("backupB")) {
                        arrayList.add(nf2Var);
                    }
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T> T m5206throws(String str, Object obj) {
        try {
            Field[] declaredFields = Class.forName(str).getDeclaredFields();
            for (Field field : declaredFields) {
                field.setAccessible(true);
            }
            System.out.println("=============" + str + "===============");
            for (Field field2 : declaredFields) {
                System.out.println(field2.toString().substring(field2.toString().lastIndexOf(".") + 1) + " --> " + field2.get(obj));
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m5207abstract(long j) {
        this.f4221try = j;
    }

    /* renamed from: break, reason: not valid java name */
    public String m5208break() {
        return this.f4214do.getHost();
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m5209case() {
        return this.f4217goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public InputStream m5210catch() {
        Request.Builder builderUrl = new Request.Builder().url(m5237while());
        lk0.Cdo cdoM4703do = lk0.m4703do();
        if (cdoM4703do != null) {
            builderUrl.header(pk0.f5051final, Credentials.basic(cdoM4703do.m4706if(), cdoM4703do.m4705do()));
        }
        try {
            return this.f4213class.newCall(builderUrl.build()).execute().body().byteStream();
        } catch (IOException | IllegalArgumentException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public long m5211class() {
        return this.f4221try;
    }

    /* renamed from: const, reason: not valid java name */
    public String m5212const() {
        return this.f4220this;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m5213continue(String str) {
        this.f4220this = str;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m5214do() {
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public String m5215else() {
        return this.f4212catch;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m5216extends(String str) {
        this.f4212catch = str;
    }

    /* renamed from: final, reason: not valid java name */
    public String m5217final() {
        return this.f4214do.toString();
    }

    /* renamed from: finally, reason: not valid java name */
    public void m5218finally(long j) {
        this.f4219new = j;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m5219for(String str, boolean z) {
        FileOutputStream fileOutputStream;
        File file = new File(str);
        if (file.exists()) {
            if (!z) {
                return false;
            }
            file.delete();
        }
        InputStream inputStreamM5210catch = m5210catch();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i = inputStreamM5210catch.read(bArr);
                if (i == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i);
            }
            fileOutputStream.flush();
            try {
                fileOutputStream.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return true;
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public long m5220goto() {
        return this.f4219new;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m5221if() {
        return false;
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m5222import() throws IOException {
        Response responseM5203default = m5203default(new ArrayList<>());
        if (responseM5203default != null) {
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (responseM5203default.isSuccessful()) {
                responseM5203default.body().string();
                return false;
            }
        }
        this.f4217goto = false;
        return false;
    }

    /* renamed from: interface, reason: not valid java name */
    public boolean m5223interface(String str) throws IOException {
        return m5227protected(str, null);
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m5224native() {
        return this.f4215else;
    }

    /* renamed from: package, reason: not valid java name */
    public void m5225package(String str) {
        this.f4216for = str;
    }

    /* renamed from: private, reason: not valid java name */
    public void m5226private(boolean z) {
        this.f4215else = z;
    }

    /* renamed from: protected, reason: not valid java name */
    public boolean m5227protected(String str, String str2) throws IOException {
        File file = new File(str);
        if (file.exists()) {
            return m5204new(new Request.Builder().url(m5237while()).put(RequestBody.create(str2 == null ? null : MediaType.parse(str2), file)));
        }
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    public List<nf2> m5228public() throws IOException {
        return m5229return(new ArrayList<>());
    }

    /* renamed from: return, reason: not valid java name */
    public List<nf2> m5229return(ArrayList<String> arrayList) throws IOException {
        Response responseM5203default = m5203default(arrayList);
        try {
            if (responseM5203default.isSuccessful()) {
                return m5205switch(responseM5203default.body().string());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ArrayList();
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m5230static() throws IOException {
        return m5204new(new Request.Builder().url(m5237while()).method("MKCOL", null));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m5231strictfp(long j) {
        this.f4211case = j;
    }

    /* renamed from: super, reason: not valid java name */
    public long m5232super() {
        return this.f4211case;
    }

    /* renamed from: this, reason: not valid java name */
    public String m5233this() {
        return this.f4216for;
    }

    /* renamed from: throw, reason: not valid java name */
    public String m5234throw() {
        if (this.f4210break.isEmpty()) {
            this.f4210break = (this.f4220this.isEmpty() ? this.f4214do.getFile() : this.f4214do.toString().replace(this.f4220this, "")).replace(on0.f4694final, "");
        }
        return this.f4210break;
    }

    /* renamed from: try, reason: not valid java name */
    public void m5235try(boolean z) {
        this.f4217goto = z;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m5236volatile(String str) {
        this.f4210break = str;
    }

    /* renamed from: while, reason: not valid java name */
    public String m5237while() {
        if (this.f4218if == null) {
            try {
                this.f4218if = URLEncoder.encode(this.f4214do.toString().replace("davs://", "https://").replace("dav://", "http://"), "UTF-8").replaceAll("\\+", "%20").replaceAll("%3A", ":").replaceAll("%2F", on0.f4694final);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return this.f4218if;
    }
}
