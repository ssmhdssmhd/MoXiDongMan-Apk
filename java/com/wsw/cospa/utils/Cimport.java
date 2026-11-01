package com.wsw.cospa.utils;

import android.app.Activity;
import android.content.Context;
import android.support.v4.ed1;
import android.support.v4.fz;
import android.support.v4.jz1;
import android.support.v4.k0;
import android.support.v4.nf2;
import android.support.v4.of2;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.support.v4.xh1;
import android.util.Base64;
import androidx.multidex.MultiDexExtractor;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.model.Cthrow;
import com.wsw.cospa.utils.Cimport;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.disposables.Disposable;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.functions.Action1;

/* renamed from: com.wsw.cospa.utils.import, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cimport {

    /* renamed from: do, reason: not valid java name */
    private xh1 f22662do;

    /* renamed from: com.wsw.cospa.utils.import$do, reason: invalid class name */
    public class Cdo implements SingleObserver<Boolean> {
        public Cdo() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(Boolean bool) {
            if (bool.booleanValue()) {
                vv0.m8965if("DataBackup", "自动备份成功");
                v02.m8711if(CartoonApplication.m24690do()).m8712case(wq.d0, true);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* renamed from: com.wsw.cospa.utils.import$if, reason: invalid class name */
    public class Cif implements SingleObserver<Boolean> {
        public Cif() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(Boolean bool) {
            Cimport.this.f22662do.dismiss();
            if (bool.booleanValue()) {
                v72.m8769if("备份成功");
            } else {
                v72.m8769if("备份失败");
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            th.printStackTrace();
            Cimport.this.f22662do.dismiss();
            v72.m8769if("备份失败");
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* renamed from: break, reason: not valid java name */
    private void m26922break(String str) throws Throwable {
        try {
            List<ComicInfoBean> listM26032interface = DatabaseHelper.m26016switch().m26032interface();
            Cthrow cthrowM26474else = Cthrow.m26474else();
            if (listM26032interface == null || listM26032interface.size() <= 0) {
                return;
            }
            Gson gsonCreate = new GsonBuilder().disableHtmlEscaping().create();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < listM26032interface.size(); i++) {
                ComicInfoBean comicInfoBean = listM26032interface.get(i);
                arrayList.addAll(cthrowM26474else.m26480final(comicInfoBean.getNoteUrl()));
                arrayList2.addAll(comicInfoBean.getChapterList());
            }
            if (arrayList.size() > 0) {
                m26933public(str + "/DownloadTaskByte.json", fz.m2490if(gsonCreate.toJson(arrayList)).getBytes("UTF-8"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m26923class(String str) throws IOException {
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

    /* renamed from: const, reason: not valid java name */
    public static Cimport m26924const() {
        return new Cimport();
    }

    /* renamed from: else, reason: not valid java name */
    private void m26926else(String str) throws Throwable {
        try {
            List<ComicSourceBean> listM26366package = com.wsw.cospa.model.Cdo.m26366package();
            if (listM26366package == null || listM26366package.size() <= 0) {
                return;
            }
            m26933public(str + "/ComicSourceByte.json", fz.m2490if(new GsonBuilder().disableHtmlEscaping().create().toJson(listM26366package)).getBytes(StandardCharsets.UTF_8));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public /* synthetic */ void m26927final(Activity activity, SingleEmitter singleEmitter) throws Exception {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (ed1.m1798do(activity)) {
            StringBuilder sb = new StringBuilder();
            sb.append(wq.f7618native);
            String str = File.separator;
            sb.append(str);
            sb.append("Backup");
            sb.append(str);
            sb.append("autoSave");
            sb.append(str);
            sb.append("ComicShelfByte.json");
            File file = new File(sb.toString());
            if (file.exists() && jCurrentTimeMillis - file.lastModified() < TimeUnit.DAYS.toMillis(1L)) {
                singleEmitter.onSuccess(Boolean.FALSE);
                return;
            }
            Cstatic.m27051do(wq.f7618native, "Backup");
            String str2 = wq.f7618native + "/Backup";
            Cstatic.m27051do(str2, "autoSave");
            String str3 = str2 + "/autoSave";
            m26929goto(str3);
            m26937this(str3);
            m26926else(str3);
            m26922break(str3);
            m26942catch(str3);
            m26936switch(str3);
            singleEmitter.onSuccess(Boolean.TRUE);
        }
        singleEmitter.onSuccess(Boolean.FALSE);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m26929goto(String str) throws Throwable {
        try {
            List<ComicShelfBean> listM26115static = com.wsw.cospa.dao.Cdo.m26115static();
            if (listM26115static == null || listM26115static.size() <= 0) {
                return;
            }
            m26933public(str + "/ComicShelfByte.json", fz.m2490if(new GsonBuilder().disableHtmlEscaping().create().toJson(listM26115static)).getBytes("UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m26931import(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0 || str2.length() <= 3072) {
            return;
        }
        while (str2.length() > 3072) {
            str2 = str2.replace(str2.substring(0, 3072), "");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0056 A[Catch: IOException -> 0x0071, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x0071, blocks: (B:41:0x0056, B:53:0x006d), top: B:72:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x006d A[Catch: IOException -> 0x0071, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x0071, blocks: (B:41:0x0056, B:53:0x006d), top: B:72:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* renamed from: public, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m26933public(String str, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        IOException e;
        FileNotFoundException e2;
        ?? file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream((File) file);
                } catch (IOException e3) {
                    e3.printStackTrace();
                    return false;
                }
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        bufferedOutputStream.write(bArr);
                        bufferedOutputStream.flush();
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        try {
                            fileOutputStream.close();
                            return true;
                        } catch (IOException e5) {
                            e5.printStackTrace();
                            return true;
                        }
                    } catch (FileNotFoundException e6) {
                        e2 = e6;
                        e2.printStackTrace();
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        return false;
                    } catch (IOException e8) {
                        e = e8;
                        e.printStackTrace();
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        return false;
                    }
                } catch (FileNotFoundException e10) {
                    e = e10;
                    bufferedOutputStream = null;
                    e2 = e;
                    e2.printStackTrace();
                    if (bufferedOutputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    return false;
                } catch (IOException e11) {
                    e = e11;
                    bufferedOutputStream = null;
                    e = e;
                    e.printStackTrace();
                    if (bufferedOutputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    file = 0;
                    th = th;
                    if (file != 0) {
                        try {
                            file.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    if (fileOutputStream == null) {
                        throw th;
                    }
                    try {
                        fileOutputStream.close();
                        throw th;
                    } catch (IOException e13) {
                        e13.printStackTrace();
                        throw th;
                    }
                }
            } catch (FileNotFoundException e14) {
                e = e14;
                bufferedOutputStream = null;
                fileOutputStream = null;
            } catch (IOException e15) {
                e = e15;
                bufferedOutputStream = null;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                file = 0;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m26934return(String str, byte[] bArr) throws IOException {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Base64.decode(bArr, 8));
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i = byteArrayInputStream.read(bArr2);
                if (i == -1) {
                    byteArrayInputStream.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr2, 0, i);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ void m26935super(String str, List list) throws Throwable {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    m26933public(str + "/HistoryComicByte.json", fz.m2490if(new GsonBuilder().disableHtmlEscaping().create().toJson(list)).getBytes("UTF-8"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private void m26936switch(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = File.separator;
        sb.append(str2);
        sb.append("ComicShelfByte.json");
        arrayList.add(sb.toString());
        arrayList.add(str + str2 + "ComicSourceByte.json");
        arrayList.add(str + str2 + "ComicShelfGroupByte.json");
        arrayList.add(str + str2 + "DownloadTaskByte.json");
        arrayList.add(str + str2 + "HistoryComicByte.json");
        String str3 = Cdefault.m26762goto() + str2 + "backupB.zip";
        try {
            Cdefault.m26777try(str3);
            if (b.m26702return(arrayList, str3) && of2.m5626if()) {
                new nf2(of2.m5625do() + wq.f7608extends).m5230static();
                if (new nf2(of2.m5625do() + wq.f7608extends + "/backupB" + new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(System.currentTimeMillis())) + MultiDexExtractor.EXTRACTED_SUFFIX).m5223interface(str3)) {
                    vv0.m8965if("DataBackup", "上传坚果云成功");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            wi0.m9165try(new Runnable() { // from class: android.support.v4.lw
                @Override // java.lang.Runnable
                public final void run() {
                    Cimport.m26940while(e);
                }
            });
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m26937this(String str) throws Throwable {
        try {
            List<ComicShelfGroupBean> listH = com.wsw.cospa.dao.Cdo.h();
            if (listH == null || listH.size() <= 0) {
                return;
            }
            m26933public(str + "/ComicShelfGroupByte.json", fz.m2490if(new GsonBuilder().disableHtmlEscaping().create().toJson(listH)).getBytes("UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public /* synthetic */ void m26938throw(SingleEmitter singleEmitter) throws Exception {
        Cstatic.m27051do(wq.f7618native, "Backup");
        String str = wq.f7618native + "/Backup";
        m26929goto(str);
        m26937this(str);
        m26926else(str);
        m26922break(str);
        m26942catch(str);
        m26936switch(str);
        singleEmitter.onSuccess(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public static /* synthetic */ void m26940while(Exception exc) {
        v72.m8769if(exc.getLocalizedMessage());
    }

    /* renamed from: case, reason: not valid java name */
    public void m26941case(final Activity activity) {
        jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.kw
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f3489do.m26927final(activity, singleEmitter);
            }
        }).m4151goto(k0.f3244do).subscribe(new Cdo());
    }

    /* renamed from: catch, reason: not valid java name */
    public void m26942catch(final String str) {
        DatabaseHelper.m26016switch().m26039static().b4(new Action1() { // from class: android.support.v4.mw
            @Override // rx.functions.Action1
            public final void call(Object obj) throws Throwable {
                Cimport.m26935super(str, (List) obj);
            }
        });
    }

    /* renamed from: native, reason: not valid java name */
    public void m26943native(Context context) {
        if (this.f22662do == null) {
            this.f22662do = new xh1.Cdo(context).m9514for(1).m9513do();
        }
        this.f22662do.show();
        jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.jw
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f3230do.m26938throw(singleEmitter);
            }
        }).m4151goto(k0.f3244do).subscribe(new Cif());
    }

    /* renamed from: static, reason: not valid java name */
    public void m26944static(String str, String str2) throws IOException {
        File file = new File(str2);
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            fileOutputStream.write(str.getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
