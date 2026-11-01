package com.wsw.cospa.utils;

import android.support.v4.fz;
import android.support.v4.l22;
import android.support.v4.wq;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.HistoryComicBean;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.model.Cthrow;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.Cclass;

/* renamed from: com.wsw.cospa.utils.public, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cpublic {

    /* renamed from: com.wsw.cospa.utils.public$break, reason: invalid class name */
    public class Cbreak extends TypeToken<List<HistoryComicBean>> {
        public Cbreak() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$case, reason: invalid class name */
    public class Ccase extends TypeToken<List<ComicSourceBean>> {
        public Ccase() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$do, reason: invalid class name */
    public class Cdo extends TypeToken<List<HistoryComicBean>> {
        public Cdo() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$else, reason: invalid class name */
    public class Celse extends TypeToken<List<ComicSourceBean>> {
        public Celse() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$for, reason: invalid class name */
    public class Cfor extends TypeToken<List<ComicShelfBean>> {
        public Cfor() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$goto, reason: invalid class name */
    public class Cgoto extends TypeToken<List<Task>> {
        public Cgoto() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$if, reason: invalid class name */
    public class Cif extends TypeToken<List<ComicShelfBean>> {
        public Cif() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$new, reason: invalid class name */
    public class Cnew extends TypeToken<List<ComicShelfGroupBean>> {
        public Cnew() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$this, reason: invalid class name */
    public class Cthis extends TypeToken<List<Task>> {
        public Cthis() {
        }
    }

    /* renamed from: com.wsw.cospa.utils.public$try, reason: invalid class name */
    public class Ctry extends TypeToken<List<ComicShelfGroupBean>> {
        public Ctry() {
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m27028case(String str) throws Exception {
        byte[] bArrM27029do = m27029do(str + "/DownloadTaskByte.json");
        if (bArrM27029do == null || bArrM27029do.length <= 0) {
            return;
        }
        String str2 = new String(bArrM27029do, "UTF-8");
        Cthrow cthrowM26474else = Cthrow.m26474else();
        if (l22.m4571return(str2)) {
            return;
        }
        if (l22.m4579while(str2)) {
            List<Task> list = (List) new GsonBuilder().disableHtmlEscaping().create().fromJson(str2, new Cgoto().getType());
            ArrayList arrayList = new ArrayList();
            for (Task task : list) {
                if (Cclass.E(task.getKey()) && Cclass.E(task.getPath()) && Cclass.E(task.getNoteUrl()) && Cclass.E(task.getName()) && Cclass.E(task.getSource()) && Cclass.E(task.getComicInfoUrl())) {
                    arrayList.add(task);
                }
            }
            cthrowM26474else.m26475break(arrayList);
            return;
        }
        String strM2489do = fz.m2489do(str2);
        if (l22.m4579while(strM2489do)) {
            List<Task> list2 = (List) new GsonBuilder().disableHtmlEscaping().create().fromJson(strM2489do, new Cthis().getType());
            ArrayList arrayList2 = new ArrayList();
            for (Task task2 : list2) {
                if (Cclass.E(task2.getKey()) && Cclass.E(task2.getPath()) && Cclass.E(task2.getNoteUrl()) && Cclass.E(task2.getName()) && Cclass.E(task2.getSource()) && Cclass.E(task2.getComicInfoUrl())) {
                    arrayList2.add(task2);
                }
            }
            cthrowM26474else.m26475break(arrayList2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m27029do(String str) throws IOException {
        byte[] byteArray = null;
        try {
            File file = new File(str);
            if (!file.exists() || !file.isFile() || !file.canRead()) {
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i <= 0) {
                        byteArray = byteArrayOutputStream.toByteArray();
                        fileInputStream.close();
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
            } catch (Exception e) {
                e.printStackTrace();
                return byteArray;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m27030else(String str) throws Exception {
        byte[] bArrM27029do = m27029do(str + "/HistoryComicByte.json");
        if (bArrM27029do == null || bArrM27029do.length <= 0) {
            return;
        }
        String str2 = new String(bArrM27029do, "UTF-8");
        if (l22.m4571return(str2)) {
            return;
        }
        if (l22.m4579while(str2)) {
            DatabaseHelper.m26016switch().b((List) new GsonBuilder().disableHtmlEscaping().create().fromJson(str2, new Cbreak().getType()));
            return;
        }
        String strM2489do = fz.m2489do(str2);
        if (l22.m4579while(strM2489do)) {
            DatabaseHelper.m26016switch().b((List) new GsonBuilder().disableHtmlEscaping().create().fromJson(strM2489do, new Cdo().getType()));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m27031for(String str) throws Exception {
        try {
            String strM27048catch = Cstatic.m27048catch(androidx.documentfile.provider.DocumentFile.fromFile(new File(str + "/ComicShelfByte.json")));
            if (l22.m4571return(strM27048catch)) {
                return;
            }
            if (l22.m4579while(strM27048catch)) {
                for (ComicShelfBean comicShelfBean : (List) new GsonBuilder().disableHtmlEscaping().create().fromJson(strM27048catch, new Cif().getType())) {
                    if (comicShelfBean.getNoteUrl() != null) {
                        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3132case().insertOrReplaceInTx(comicShelfBean);
                    }
                    if (comicShelfBean.getComicInfoBean().getNoteUrl() != null) {
                        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3143try().insertOrReplaceInTx(comicShelfBean.getComicInfoBean());
                    }
                }
                return;
            }
            String strM2489do = fz.m2489do(strM27048catch);
            if (l22.m4579while(strM2489do)) {
                for (ComicShelfBean comicShelfBean2 : (List) new GsonBuilder().disableHtmlEscaping().create().fromJson(strM2489do, new Cfor().getType())) {
                    if (comicShelfBean2.getNoteUrl() != null) {
                        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3132case().insertOrReplaceInTx(comicShelfBean2);
                    }
                    if (comicShelfBean2.getComicInfoBean().getNoteUrl() != null) {
                        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3143try().insertOrReplaceInTx(comicShelfBean2.getComicInfoBean());
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cpublic m27032if() {
        return new Cpublic();
    }

    /* renamed from: new, reason: not valid java name */
    private void m27033new(String str) throws Exception {
        byte[] bArrM27029do = m27029do(str + "/ComicShelfGroupByte.json");
        if (bArrM27029do == null || bArrM27029do.length <= 0) {
            return;
        }
        String str2 = new String(bArrM27029do, "UTF-8");
        if (l22.m4571return(str2)) {
            return;
        }
        if (l22.m4579while(str2)) {
            Iterator it = ((List) new GsonBuilder().disableHtmlEscaping().create().fromJson(str2, new Cnew().getType())).iterator();
            while (it.hasNext()) {
                com.wsw.cospa.dao.Cdo.m26125volatile((ComicShelfGroupBean) it.next());
            }
        } else {
            String strM2489do = fz.m2489do(str2);
            if (l22.m4579while(strM2489do)) {
                Iterator it2 = ((List) new GsonBuilder().disableHtmlEscaping().create().fromJson(strM2489do, new Ctry().getType())).iterator();
                while (it2.hasNext()) {
                    com.wsw.cospa.dao.Cdo.m26125volatile((ComicShelfGroupBean) it2.next());
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m27034try(String str) throws Exception {
        byte[] bArrM27029do = m27029do(str + "/ComicSourceByte.json");
        if (bArrM27029do == null || bArrM27029do.length <= 0) {
            return;
        }
        String str2 = new String(bArrM27029do, "UTF-8");
        if (l22.m4571return(str2)) {
            return;
        }
        if (l22.m4579while(str2)) {
            com.wsw.cospa.model.Cdo.m26361extends((List) new GsonBuilder().disableHtmlEscaping().create().fromJson(str2, new Ccase().getType()));
            return;
        }
        String strM2489do = fz.m2489do(str2);
        if (l22.m4579while(strM2489do)) {
            com.wsw.cospa.model.Cdo.m26361extends((List) new GsonBuilder().disableHtmlEscaping().create().fromJson(strM2489do, new Celse().getType()));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public Boolean m27035goto() throws Exception {
        String str = wq.f7618native + "/Backup";
        m27034try(str);
        m27031for(str);
        m27033new(str);
        m27028case(str);
        m27030else(str);
        return Boolean.TRUE;
    }

    /* renamed from: this, reason: not valid java name */
    public Boolean m27036this(String str) throws Exception {
        m27034try(str);
        m27031for(str);
        m27033new(str);
        m27028case(str);
        m27030else(str);
        return Boolean.TRUE;
    }
}
