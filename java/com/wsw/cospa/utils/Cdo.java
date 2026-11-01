package com.wsw.cospa.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.Process;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.wsw.cospa.utils.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: case, reason: not valid java name */
    private static Map<String, Cdo> f22596case = new HashMap();

    /* renamed from: for, reason: not valid java name */
    public static final int f22597for = 86400;

    /* renamed from: if, reason: not valid java name */
    public static final int f22598if = 3600;

    /* renamed from: new, reason: not valid java name */
    private static final int f22599new = 50000000;

    /* renamed from: try, reason: not valid java name */
    private static final int f22600try = Integer.MAX_VALUE;

    /* renamed from: do, reason: not valid java name */
    private Cif f22601do;

    /* renamed from: com.wsw.cospa.utils.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        private static final char f22602do = ' ';

        private Cfor() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: const, reason: not valid java name */
        public static Drawable m26817const(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            return new BitmapDrawable(bitmap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: default, reason: not valid java name */
        public static String m26818default(int i, String str) {
            return m26837while(i) + str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: do, reason: not valid java name */
        public static byte[] m26819do(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public static String m26821final(String str) {
            return (str == null || !m26828public(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public static Bitmap m26824if(byte[] bArr) {
            if (bArr.length == 0) {
                return null;
            }
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: import, reason: not valid java name */
        public static Bitmap m26825import(Drawable drawable) {
            if (drawable == null) {
                return null;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        }

        /* renamed from: native, reason: not valid java name */
        private static String[] m26826native(byte[] bArr) {
            if (m26828public(bArr)) {
                return new String[]{new String(m26834throw(bArr, 0, 13)), new String(m26834throw(bArr, 14, m26829return(bArr, f22602do)))};
            }
            return null;
        }

        /* renamed from: public, reason: not valid java name */
        private static boolean m26828public(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && m26829return(bArr, f22602do) > 14;
        }

        /* renamed from: return, reason: not valid java name */
        private static int m26829return(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: static, reason: not valid java name */
        public static boolean m26830static(String str) {
            return m26832switch(str.getBytes());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public static byte[] m26831super(byte[] bArr) {
            return m26828public(bArr) ? m26834throw(bArr, m26829return(bArr, f22602do) + 1, bArr.length) : bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: switch, reason: not valid java name */
        public static boolean m26832switch(byte[] bArr) {
            String[] strArrM26826native = m26826native(bArr);
            if (strArrM26826native != null && strArrM26826native.length == 2) {
                String strSubstring = strArrM26826native[0];
                while (strSubstring.startsWith("0")) {
                    strSubstring = strSubstring.substring(1, strSubstring.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(strSubstring).longValue() + (Long.valueOf(strArrM26826native[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: throw, reason: not valid java name */
        private static byte[] m26834throw(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: throws, reason: not valid java name */
        public static byte[] m26835throws(int i, byte[] bArr) {
            byte[] bytes = m26837while(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* renamed from: while, reason: not valid java name */
        private static String m26837while(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0" + str;
            }
            return str + "-" + i + f22602do;
        }
    }

    /* renamed from: com.wsw.cospa.utils.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: case, reason: not valid java name */
        public File f22603case;

        /* renamed from: do, reason: not valid java name */
        private final AtomicLong f22604do;

        /* renamed from: for, reason: not valid java name */
        private final long f22605for;

        /* renamed from: if, reason: not valid java name */
        private final AtomicInteger f22606if;

        /* renamed from: new, reason: not valid java name */
        private final int f22607new;

        /* renamed from: try, reason: not valid java name */
        private final Map<File, Long> f22608try;

        /* renamed from: com.wsw.cospa.utils.do$if$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0231do implements Runnable {
            public RunnableC0231do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                File[] fileArrListFiles = Cif.this.f22603case.listFiles();
                if (fileArrListFiles != null) {
                    int iM26840catch = 0;
                    int i = 0;
                    for (File file : fileArrListFiles) {
                        iM26840catch = (int) (iM26840catch + Cif.this.m26840catch(file));
                        i++;
                        Cif.this.f22608try.put(file, Long.valueOf(file.lastModified()));
                    }
                    Cif.this.f22604do.set(iM26840catch);
                    Cif.this.f22606if.set(i);
                }
            }
        }

        /* renamed from: break, reason: not valid java name */
        private void m26838break() {
            new Thread(new RunnableC0231do()).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public long m26840catch(File file) {
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public void m26841class() {
            this.f22608try.clear();
            this.f22604do.set(0L);
            File[] fileArrListFiles = this.f22603case.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    file.delete();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: const, reason: not valid java name */
        public File m26842const(String str) {
            File fileM26845final = m26845final(str);
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            fileM26845final.setLastModified(lValueOf.longValue());
            this.f22608try.put(fileM26845final, lValueOf);
            return fileM26845final;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public File m26845final(String str) {
            return new File(this.f22603case, str.hashCode() + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public void m26850super(File file) {
            int iAddAndGet = this.f22606if.get();
            while (iAddAndGet + 1 > this.f22607new) {
                this.f22604do.addAndGet(-m26854while());
                iAddAndGet = this.f22606if.addAndGet(-1);
            }
            this.f22606if.addAndGet(1);
            long jM26840catch = m26840catch(file);
            long jAddAndGet = this.f22604do.get();
            while (jAddAndGet + jM26840catch > this.f22605for) {
                jAddAndGet = this.f22604do.addAndGet(-m26854while());
            }
            this.f22604do.addAndGet(jM26840catch);
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(lValueOf.longValue());
            this.f22608try.put(file, lValueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: throw, reason: not valid java name */
        public boolean m26852throw(String str) {
            return m26842const(str).delete();
        }

        /* renamed from: while, reason: not valid java name */
        private long m26854while() {
            File key;
            if (this.f22608try.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> setEntrySet = this.f22608try.entrySet();
            synchronized (this.f22608try) {
                key = null;
                Long value = null;
                for (Map.Entry<File, Long> entry : setEntrySet) {
                    if (key == null) {
                        key = entry.getKey();
                        value = entry.getValue();
                    } else {
                        Long value2 = entry.getValue();
                        if (value2.longValue() < value.longValue()) {
                            key = entry.getKey();
                            value = value2;
                        }
                    }
                }
            }
            long jM26840catch = m26840catch(key);
            if (key.delete()) {
                this.f22608try.remove(key);
            }
            return jM26840catch;
        }

        private Cif(File file, long j, int i) {
            this.f22608try = Collections.synchronizedMap(new HashMap());
            this.f22603case = file;
            this.f22605for = j;
            this.f22607new = i;
            this.f22604do = new AtomicLong();
            this.f22606if = new AtomicInteger();
            m26838break();
        }
    }

    private Cdo(File file, long j, int i) {
        if (file.exists() || file.mkdirs()) {
            this.f22601do = new Cif(file, j, i);
            return;
        }
        throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
    }

    /* renamed from: case, reason: not valid java name */
    public static Cdo m26781case(File file) {
        return m26782else(file, 50000000L, Integer.MAX_VALUE);
    }

    /* renamed from: else, reason: not valid java name */
    public static Cdo m26782else(File file, long j, int i) {
        Cdo cdo = f22596case.get(file.getAbsoluteFile() + m26785super());
        if (cdo != null) {
            return cdo;
        }
        Cdo cdo2 = new Cdo(file, j, i);
        f22596case.put(file.getAbsolutePath() + m26785super(), cdo2);
        return cdo2;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cdo m26783for(Context context) {
        return m26786try(context, "ACache");
    }

    /* renamed from: new, reason: not valid java name */
    public static Cdo m26784new(Context context, long j, int i) {
        return m26782else(new File(context.getCacheDir(), "ACache"), j, i);
    }

    /* renamed from: super, reason: not valid java name */
    private static String m26785super() {
        return "_" + Process.myPid();
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m26786try(Context context, String str) {
        return m26782else(new File(context.getCacheDir(), str), 50000000L, Integer.MAX_VALUE);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m26787abstract(String str, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream;
        File fileM26845final = this.f22601do.m26845final(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(fileM26845final);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
                this.f22601do.m26850super(fileM26845final);
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    this.f22601do.m26850super(fileM26845final);
                }
            }
            this.f22601do.m26850super(fileM26845final);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            this.f22601do.m26850super(fileM26845final);
            throw th;
        }
        this.f22601do.m26850super(fileM26845final);
    }

    /* renamed from: break, reason: not valid java name */
    public Drawable m26788break(String str) {
        if (m26798goto(str) == null) {
            return null;
        }
        return Cfor.m26817const(Cfor.m26824if(m26798goto(str)));
    }

    /* renamed from: catch, reason: not valid java name */
    public JSONArray m26789catch(String str) {
        try {
            return new JSONArray(m26796final(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public JSONObject m26790class(String str) {
        try {
            return new JSONObject(m26796final(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* renamed from: const, reason: not valid java name */
    public Object m26791const(String str) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ?? M26798goto = m26798goto(str);
        try {
            if (M26798goto == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(M26798goto);
            } catch (Exception e) {
                e = e;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th) {
                byteArrayInputStream = null;
                th = th;
                M26798goto = 0;
            }
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    Object object = objectInputStream.readObject();
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    return object;
                } catch (Exception e4) {
                    e = e4;
                    e.printStackTrace();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Exception e7) {
                e = e7;
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                M26798goto = 0;
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
                if (M26798goto == 0) {
                    throw th;
                }
                try {
                    M26798goto.close();
                    throw th;
                } catch (IOException e9) {
                    e9.printStackTrace();
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public void m26792continue(String str, byte[] bArr, int i) throws Throwable {
        m26787abstract(str, Cfor.m26835throws(i, bArr));
    }

    /* renamed from: default, reason: not valid java name */
    public void m26793default(String str, String str2, int i) throws Throwable {
        m26811throws(str, Cfor.m26818default(i, str2));
    }

    /* renamed from: do, reason: not valid java name */
    public void m26794do() {
        this.f22601do.m26841class();
    }

    /* renamed from: extends, reason: not valid java name */
    public void m26795extends(String str, JSONArray jSONArray) throws Throwable {
        m26811throws(str, jSONArray.toString());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* renamed from: final, reason: not valid java name */
    public String m26796final(String str) throws Throwable {
        BufferedReader bufferedReader;
        File fileM26842const = this.f22601do.m26842const(str);
        ?? Exists = fileM26842const.exists();
        BufferedReader bufferedReader2 = null;
        try {
            if (Exists == 0) {
                return null;
            }
            try {
                bufferedReader = new BufferedReader(new FileReader(fileM26842const));
                String str2 = "";
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        str2 = str2 + line;
                    } catch (IOException e) {
                        e = e;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        return null;
                    }
                }
                if (Cfor.m26830static(str2)) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    m26807strictfp(str);
                    return null;
                }
                String strM26821final = Cfor.m26821final(str2);
                try {
                    bufferedReader.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return strM26821final;
            } catch (IOException e5) {
                e = e5;
                bufferedReader = null;
            } catch (Throwable th) {
                th = th;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = Exists;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public void m26797finally(String str, JSONArray jSONArray, int i) throws Throwable {
        m26793default(str, jSONArray.toString(), i);
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0053: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:35:0x0053 */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] m26798goto(String str) throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        try {
            try {
                File fileM26842const = this.f22601do.m26842const(str);
                if (!fileM26842const.exists()) {
                    return null;
                }
                randomAccessFile = new RandomAccessFile(fileM26842const, "r");
                try {
                    byte[] bArr = new byte[(int) randomAccessFile.length()];
                    randomAccessFile.read(bArr);
                    if (Cfor.m26832switch(bArr)) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        m26807strictfp(str);
                        return null;
                    }
                    byte[] bArrM26831super = Cfor.m26831super(bArr);
                    try {
                        randomAccessFile.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return bArrM26831super;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                randomAccessFile3 = randomAccessFile2;
                if (randomAccessFile3 != null) {
                    try {
                        randomAccessFile3.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            if (randomAccessFile3 != null) {
            }
            throw th;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public File m26799if(String str) {
        File fileM26845final = this.f22601do.m26845final(str);
        if (fileM26845final.exists()) {
            return fileM26845final;
        }
        return null;
    }

    /* renamed from: import, reason: not valid java name */
    public void m26800import(String str, Drawable drawable) throws Throwable {
        m26810throw(str, Cfor.m26825import(drawable));
    }

    /* renamed from: native, reason: not valid java name */
    public void m26801native(String str, Drawable drawable, int i) throws Throwable {
        m26812while(str, Cfor.m26825import(drawable), i);
    }

    /* renamed from: package, reason: not valid java name */
    public void m26802package(String str, JSONObject jSONObject) throws Throwable {
        m26811throws(str, jSONObject.toString());
    }

    /* renamed from: private, reason: not valid java name */
    public void m26803private(String str, JSONObject jSONObject, int i) throws Throwable {
        m26793default(str, jSONObject.toString(), i);
    }

    /* renamed from: public, reason: not valid java name */
    public void m26804public(String str, Parcelable parcelable) throws Throwable {
        m26805return(str, parcelable, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: return, reason: not valid java name */
    public void m26805return(String str, Parcelable parcelable, int i) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ?? r0 = 0;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                objectOutputStream.writeObject(parcelable);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                r0 = -1;
                if (i != -1) {
                    m26792continue(str, byteArray, i);
                } else {
                    m26787abstract(str, byteArray);
                }
                objectOutputStream.close();
            } catch (Exception e2) {
                e = e2;
                objectOutputStream2 = objectOutputStream;
                e.printStackTrace();
                objectOutputStream2.close();
                r0 = objectOutputStream2;
            } catch (Throwable th2) {
                th = th2;
                r0 = objectOutputStream;
                try {
                    r0.close();
                } catch (IOException unused) {
                }
                throw th;
            }
        } catch (IOException unused2) {
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m26806static(String str, Serializable serializable) throws Throwable {
        m26808switch(str, serializable, -1);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public boolean m26807strictfp(String str) {
        return this.f22601do.m26852throw(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: switch, reason: not valid java name */
    public void m26808switch(String str, Serializable serializable, int i) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ?? r0 = 0;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                objectOutputStream.writeObject(serializable);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                r0 = -1;
                if (i != -1) {
                    m26792continue(str, byteArray, i);
                } else {
                    m26787abstract(str, byteArray);
                }
                objectOutputStream.close();
            } catch (Exception e2) {
                e = e2;
                objectOutputStream2 = objectOutputStream;
                e.printStackTrace();
                objectOutputStream2.close();
                r0 = objectOutputStream2;
            } catch (Throwable th2) {
                th = th2;
                r0 = objectOutputStream;
                try {
                    r0.close();
                } catch (IOException unused) {
                }
                throw th;
            }
        } catch (IOException unused2) {
        }
    }

    /* renamed from: this, reason: not valid java name */
    public Bitmap m26809this(String str) {
        if (m26798goto(str) == null) {
            return null;
        }
        return Cfor.m26824if(m26798goto(str));
    }

    /* renamed from: throw, reason: not valid java name */
    public void m26810throw(String str, Bitmap bitmap) throws Throwable {
        m26787abstract(str, Cfor.m26819do(bitmap));
    }

    /* renamed from: throws, reason: not valid java name */
    public void m26811throws(String str, String str2) throws Throwable {
        BufferedWriter bufferedWriter;
        File fileM26845final = this.f22601do.m26845final(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(fileM26845final), 1024);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(str2);
            try {
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
                this.f22601do.m26850super(fileM26845final);
            }
        } catch (IOException e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            e.printStackTrace();
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    this.f22601do.m26850super(fileM26845final);
                }
            }
            this.f22601do.m26850super(fileM26845final);
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            this.f22601do.m26850super(fileM26845final);
            throw th;
        }
        this.f22601do.m26850super(fileM26845final);
    }

    /* renamed from: while, reason: not valid java name */
    public void m26812while(String str, Bitmap bitmap, int i) throws Throwable {
        m26792continue(str, Cfor.m26819do(bitmap), i);
    }
}
