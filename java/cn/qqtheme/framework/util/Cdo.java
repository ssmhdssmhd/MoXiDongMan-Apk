package cn.qqtheme.framework.util;

import android.content.res.AssetFileDescriptor;
import android.support.v4.bx;
import android.support.v4.ur;
import android.support.v4.uv0;
import android.webkit.MimeTypeMap;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.regex.Pattern;

/* renamed from: cn.qqtheme.framework.util.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: case, reason: not valid java name */
    public static final int f9208case = 5;

    /* renamed from: do, reason: not valid java name */
    public static final int f9209do = 0;

    /* renamed from: else, reason: not valid java name */
    public static final int f9210else = 6;

    /* renamed from: for, reason: not valid java name */
    public static final int f9211for = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f9212goto = 7;

    /* renamed from: if, reason: not valid java name */
    public static final int f9213if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f9214new = 3;

    /* renamed from: try, reason: not valid java name */
    public static final int f9215try = 4;

    /* renamed from: cn.qqtheme.framework.util.do$case, reason: invalid class name */
    public static class Ccase implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            if (file == null || file2 == null) {
                return file == null ? -1 : 1;
            }
            if (file.isDirectory() && file2.isFile()) {
                return -1;
            }
            return (!(file.isFile() && file2.isDirectory()) && file.length() < file2.length()) ? -1 : 1;
        }
    }

    /* renamed from: cn.qqtheme.framework.util.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0021do implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file != null && file.isDirectory();
        }
    }

    /* renamed from: cn.qqtheme.framework.util.do$else, reason: invalid class name */
    public static class Celse implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            if (file == null || file2 == null) {
                return file == null ? -1 : 1;
            }
            if (file.isDirectory() && file2.isFile()) {
                return -1;
            }
            return (!(file.isFile() && file2.isDirectory()) && file.lastModified() > file2.lastModified()) ? -1 : 1;
        }
    }

    /* renamed from: cn.qqtheme.framework.util.do$for, reason: invalid class name */
    public static class Cfor implements FilenameFilter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String[] f9216do;

        public Cfor(String[] strArr) {
            this.f9216do = strArr;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return ur.a(this.f9216do).contains(Cdo.m10983super(str));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: cn.qqtheme.framework.util.do$goto, reason: invalid class name */
    public @interface Cgoto {
    }

    /* renamed from: cn.qqtheme.framework.util.do$if, reason: invalid class name */
    public static class Cif implements FileFilter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Pattern f9217do;

        public Cif(Pattern pattern) {
            this.f9217do = pattern;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            if (file == null || file.isDirectory()) {
                return false;
            }
            Pattern pattern = this.f9217do;
            if (pattern == null) {
                return true;
            }
            return pattern.matcher(file.getName()).find();
        }
    }

    /* renamed from: cn.qqtheme.framework.util.do$new, reason: invalid class name */
    public static class Cnew implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            if (file == null || file2 == null) {
                return file == null ? -1 : 1;
            }
            if (file.isDirectory() && file2.isFile()) {
                return -1;
            }
            if (file.isFile() && file2.isDirectory()) {
                return 1;
            }
            return file.getName().compareToIgnoreCase(file2.getName());
        }
    }

    public static String a(String str) {
        String str2 = File.separator;
        String strReplace = str.replace("\\", str2);
        if (strReplace.endsWith(str2)) {
            return strReplace;
        }
        return strReplace + str2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static File[] m10954abstract(String str, String[] strArr) {
        uv0.m8680public(String.format("list file %s", str));
        return new File(str).listFiles(new Cfor(strArr));
    }

    public static boolean b(String str, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream;
        uv0.m8680public(String.format("write %s", str));
        File file = new File(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                if (!file.exists()) {
                    file.getParentFile().mkdirs();
                    file.createNewFile();
                }
                fileOutputStream = new FileOutputStream(str);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(bArr);
            m10969if(fileOutputStream);
            return true;
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            uv0.m8672extends(e);
            m10969if(fileOutputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            m10969if(fileOutputStream2);
            throw th;
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m10955break(File file) {
        File file2 = new File(file.getAbsolutePath() + System.currentTimeMillis());
        file.renameTo(file2);
        return file2.delete();
    }

    public static boolean c(String str, String str2) {
        return d(str, str2, "utf-8");
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m10956case(File file) {
        return m10963else(file, false);
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m10957catch(String str) {
        return new File(str).exists();
    }

    /* renamed from: class, reason: not valid java name */
    public static String m10958class(File file, String str) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(file.lastModified());
        return bx.m684while(calendar.getTime(), str);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m10959const(String str) {
        return m10965final(str, "yyyy年MM月dd日HH:mm");
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m10960continue(File file) {
        return file.mkdirs();
    }

    public static boolean d(String str, String str2, String str3) throws Throwable {
        try {
            b(str, str2.getBytes(str3));
            return true;
        } catch (UnsupportedEncodingException e) {
            uv0.m8672extends(e);
            return false;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static File[] m10961default(String str, String[] strArr) {
        File[] fileArrM10980return = m10980return(str);
        File[] fileArrM10964extends = strArr == null ? m10964extends(str) : m10954abstract(str, strArr);
        if (fileArrM10980return == null || fileArrM10964extends == null) {
            return null;
        }
        File[] fileArr = new File[fileArrM10980return.length + fileArrM10964extends.length];
        System.arraycopy(fileArrM10980return, 0, fileArr, 0, fileArrM10980return.length);
        System.arraycopy(fileArrM10964extends, 0, fileArr, fileArrM10980return.length, fileArrM10964extends.length);
        return fileArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m10962do(String str, String str2) throws Throwable {
        FileWriter fileWriter;
        uv0.m8680public(String.format("append %s", str));
        File file = new File(str);
        FileWriter fileWriter2 = null;
        try {
            try {
                if (!file.exists()) {
                    file.createNewFile();
                }
                fileWriter = new FileWriter(file, true);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            fileWriter.write(str2);
            m10969if(fileWriter);
            return true;
        } catch (IOException e2) {
            e = e2;
            fileWriter2 = fileWriter;
            uv0.m8672extends(e);
            m10969if(fileWriter2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            m10969if(fileWriter2);
            throw th;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m10963else(File file, boolean z) {
        boolean z2 = true;
        uv0.m8680public(String.format("delete file %s", file.getAbsolutePath()));
        if (file.isFile()) {
            return m10955break(file);
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        if (fileArrListFiles.length != 0) {
            boolean zM10955break = false;
            for (File file2 : fileArrListFiles) {
                m10963else(file2, z);
                zM10955break = m10955break(file2);
            }
            z2 = zM10955break;
        } else if (!z || !m10955break(file)) {
            z2 = false;
        }
        return z ? m10955break(file) : z2;
    }

    /* renamed from: extends, reason: not valid java name */
    public static File[] m10964extends(String str) {
        return m10977private(str, null, 0);
    }

    /* renamed from: final, reason: not valid java name */
    public static String m10965final(String str, String str2) {
        return m10958class(new File(str), str2);
    }

    /* renamed from: finally, reason: not valid java name */
    public static File[] m10966finally(String str, String str2) {
        return m10954abstract(str, new String[]{str2});
    }

    /* renamed from: for, reason: not valid java name */
    public static int m10967for(String str, String str2) {
        long jLastModified = new File(str).lastModified();
        long jLastModified2 = new File(str2).lastModified();
        if (jLastModified > jLastModified2) {
            return 1;
        }
        return jLastModified < jLastModified2 ? -1 : 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m10968goto(String str) {
        return m10986this(str, false);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m10969if(Closeable closeable) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            uv0.m8672extends(e);
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public static String m10970implements(String str, String str2) throws Throwable {
        uv0.m8680public(String.format("read %s use %s", str, str2));
        try {
            byte[] bArrM10978protected = m10978protected(str);
            return bArrM10978protected != null ? new String(bArrM10978protected, str2).trim() : "";
        } catch (UnsupportedEncodingException e) {
            uv0.m8672extends(e);
            return "";
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static String m10971import(String str) {
        if (str == null) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            return str.substring(iLastIndexOf + 1);
        }
        return String.valueOf(System.currentTimeMillis()) + "." + m10983super(str);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m10972instanceof(File file, File file2) {
        uv0.m8680public(String.format("rename %s to %s", file.getAbsolutePath(), file2.getAbsolutePath()));
        return file.renameTo(file2);
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m10973interface(String str, String str2) {
        return m10991volatile(new File(str), new File(str2));
    }

    /* renamed from: native, reason: not valid java name */
    public static String m10974native(String str) {
        try {
            String name = new File(str).getName();
            int iLastIndexOf = name.lastIndexOf(".");
            return iLastIndexOf != -1 ? name.substring(0, iLastIndexOf) : name;
        } catch (Exception e) {
            uv0.m8672extends(e);
            return "";
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m10975new(File file, File file2) throws IOException {
        try {
            uv0.m8680public(String.format("copy %s to %s", file.getAbsolutePath(), file2.getAbsolutePath()));
            if (file.isFile()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, i);
                }
                bufferedInputStream.close();
                bufferedOutputStream.close();
            } else if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                file2.mkdirs();
                for (File file3 : fileArrListFiles) {
                    m10975new(file3.getAbsoluteFile(), new File(file2.getAbsoluteFile(), file3.getName()));
                }
            }
            return true;
        } catch (Exception e) {
            uv0.m8664break(e);
            return false;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static File[] m10976package(String str, Pattern pattern) {
        return m10977private(str, pattern, 0);
    }

    /* renamed from: private, reason: not valid java name */
    public static File[] m10977private(String str, Pattern pattern, int i) {
        uv0.m8680public(String.format("list file %s", str));
        ArrayList arrayList = new ArrayList();
        File file = new File(str);
        if (!file.isDirectory()) {
            return new File[0];
        }
        File[] fileArrListFiles = file.listFiles(new Cif(pattern));
        if (fileArrListFiles == null) {
            return new File[0];
        }
        for (File file2 : fileArrListFiles) {
            arrayList.add(file2.getAbsoluteFile());
        }
        if (i == 0) {
            Collections.sort(arrayList, new Ctry());
        } else if (i == 1) {
            Collections.sort(arrayList, new Ctry());
            Collections.reverse(arrayList);
        } else if (i == 2) {
            Collections.sort(arrayList, new Celse());
        } else if (i == 3) {
            Collections.sort(arrayList, new Celse());
            Collections.reverse(arrayList);
        } else if (i == 4) {
            Collections.sort(arrayList, new Ccase());
        } else if (i == 5) {
            Collections.sort(arrayList, new Ccase());
            Collections.reverse(arrayList);
        } else if (i == 6) {
            Collections.sort(arrayList, new Cnew());
        } else if (i == 7) {
            Collections.sort(arrayList, new Cnew());
            Collections.reverse(arrayList);
        }
        return (File[]) arrayList.toArray(new File[arrayList.size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: protected, reason: not valid java name */
    public static byte[] m10978protected(String str) throws Throwable {
        FileInputStream fileInputStream;
        uv0.m8680public(String.format("read %s", str));
        AssetFileDescriptor.AutoCloseInputStream autoCloseInputStream = 0;
        try {
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = fileInputStream.read(bArr, 0, 1024);
                        if (i == -1) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            m10969if(fileInputStream);
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                } catch (IOException e) {
                    e = e;
                    uv0.m8672extends(e);
                    m10969if(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                autoCloseInputStream = "read %s";
                m10969if(autoCloseInputStream);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            m10969if(autoCloseInputStream);
            throw th;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static String m10979public(String str) {
        return ur.m8624switch(m10987throw(str));
    }

    /* renamed from: return, reason: not valid java name */
    public static File[] m10980return(String str) {
        return m10984switch(str, null, 0);
    }

    /* renamed from: static, reason: not valid java name */
    public static File[] m10981static(String str, String[] strArr) {
        return m10984switch(str, strArr, 0);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m10982strictfp(String str) {
        return m10960continue(new File(str));
    }

    /* renamed from: super, reason: not valid java name */
    public static String m10983super(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf >= 0 ? str.substring(iLastIndexOf + 1) : "ext";
    }

    /* renamed from: switch, reason: not valid java name */
    public static File[] m10984switch(String str, String[] strArr, int i) {
        uv0.m8680public(String.format("list dir %s", str));
        ArrayList arrayList = new ArrayList();
        File file = new File(str);
        if (!file.isDirectory()) {
            return new File[0];
        }
        File[] fileArrListFiles = file.listFiles(new C0021do());
        if (fileArrListFiles == null) {
            return new File[0];
        }
        if (strArr == null) {
            strArr = new String[0];
        }
        for (File file2 : fileArrListFiles) {
            File absoluteFile = file2.getAbsoluteFile();
            if (!ur.a(strArr).contains(absoluteFile.getName())) {
                arrayList.add(absoluteFile);
            }
        }
        if (i == 0) {
            Collections.sort(arrayList, new Ctry());
        } else if (i == 1) {
            Collections.sort(arrayList, new Ctry());
            Collections.reverse(arrayList);
        } else if (i == 2) {
            Collections.sort(arrayList, new Celse());
        } else if (i == 3) {
            Collections.sort(arrayList, new Celse());
            Collections.reverse(arrayList);
        } else if (i == 4) {
            Collections.sort(arrayList, new Ccase());
        } else if (i == 5) {
            Collections.sort(arrayList, new Ccase());
            Collections.reverse(arrayList);
        } else if (i == 6) {
            Collections.sort(arrayList, new Cnew());
        } else if (i == 7) {
            Collections.sort(arrayList, new Cnew());
            Collections.reverse(arrayList);
        }
        return (File[]) arrayList.toArray(new File[arrayList.size()]);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean m10985synchronized(String str, String str2) {
        return m10972instanceof(new File(str), new File(str2));
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m10986this(String str, boolean z) {
        File file = new File(str);
        if (file.exists()) {
            return m10963else(file, z);
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public static long m10987throw(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            return file.length();
        }
        return 0L;
    }

    /* renamed from: throws, reason: not valid java name */
    public static File[] m10988throws(String str) {
        return m10961default(str, null);
    }

    /* renamed from: transient, reason: not valid java name */
    public static String m10989transient(String str) {
        return m10970implements(str, "utf-8");
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m10990try(String str, String str2) {
        File file = new File(str);
        return file.exists() && m10975new(file, new File(str2));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static boolean m10991volatile(File file, File file2) {
        return m10972instanceof(file, file2);
    }

    /* renamed from: while, reason: not valid java name */
    public static String m10992while(String str) {
        String strM10983super = m10983super(str);
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String mimeTypeFromExtension = singleton.hasExtension(strM10983super) ? singleton.getMimeTypeFromExtension(strM10983super) : "*/*";
        uv0.m8680public(str + ": " + mimeTypeFromExtension);
        return mimeTypeFromExtension;
    }

    /* renamed from: cn.qqtheme.framework.util.do$try, reason: invalid class name */
    public static class Ctry implements Comparator<File> {

        /* renamed from: do, reason: not valid java name */
        private boolean f9218do;

        public Ctry(boolean z) {
            this.f9218do = z;
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            if (file == null || file2 == null) {
                return file == null ? -1 : 1;
            }
            if (file.isDirectory() && file2.isFile()) {
                return -1;
            }
            if (file.isFile() && file2.isDirectory()) {
                return 1;
            }
            String name = file.getName();
            String name2 = file2.getName();
            return this.f9218do ? name.compareTo(name2) : name.compareToIgnoreCase(name2);
        }

        public Ctry() {
            this.f9218do = false;
        }
    }
}
