package com.wsw.cospa.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import org.jsoup.nodes.Attributes;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: do, reason: not valid java name */
    private static final int f22557do = 8192;

    private b() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: break, reason: not valid java name */
    public static List<File> m26687break(File file, File file2) throws IOException {
        return m26690class(file, file2, null);
    }

    /* renamed from: case, reason: not valid java name */
    public static List<String> m26688case(File file) throws IOException {
        if (file == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        while (enumerationEntries.hasMoreElements()) {
            String name = enumerationEntries.nextElement().getName();
            if (name.contains("../")) {
                StringBuilder sb = new StringBuilder();
                sb.append("entryName: ");
                sb.append(name);
                sb.append(" is dangerous!");
                arrayList.add(name);
            } else {
                arrayList.add(name);
            }
        }
        zipFile.close();
        return arrayList;
    }

    /* renamed from: catch, reason: not valid java name */
    public static List<File> m26689catch(String str, String str2) throws IOException {
        return m26691const(str, str2, null);
    }

    /* renamed from: class, reason: not valid java name */
    public static List<File> m26690class(File file, File file2, String str) throws IOException {
        if (file == null || file2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        try {
            if (m26696goto(str)) {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (name.contains("../")) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("entryName: ");
                        sb.append(name);
                        sb.append(" is dangerous!");
                    } else if (!m26705this(file2, arrayList, zipFile, zipEntryNextElement, name)) {
                        return arrayList;
                    }
                }
            } else {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement2 = enumerationEntries.nextElement();
                    String name2 = zipEntryNextElement2.getName();
                    if (name2.contains("../")) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("entryName: ");
                        sb2.append(name2);
                        sb2.append(" is dangerous!");
                    } else if (name2.contains(str) && !m26705this(file2, arrayList, zipFile, zipEntryNextElement2, name2)) {
                        return arrayList;
                    }
                }
            }
            return arrayList;
        } finally {
            zipFile.close();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static List<File> m26691const(String str, String str2, String str3) throws IOException {
        return m26690class(m26707try(str), m26707try(str2), str3);
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m26692do(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    /* renamed from: else, reason: not valid java name */
    public static List<String> m26693else(String str) throws IOException {
        return m26688case(m26707try(str));
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m26694final(File file, File file2) throws IOException {
        return m26704super(file, file2, null);
    }

    /* renamed from: for, reason: not valid java name */
    public static List<String> m26695for(File file) throws IOException {
        if (file == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        while (enumerationEntries.hasMoreElements()) {
            arrayList.add(enumerationEntries.nextElement().getComment());
        }
        zipFile.close();
        return arrayList;
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m26696goto(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m26697if(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!m26692do(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m26698import(String str, String str2, String str3) throws IOException {
        return m26704super(m26707try(str), m26707try(str2), str3);
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m26699native(Collection<File> collection, File file) throws IOException {
        return m26701public(collection, file, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static List<String> m26700new(String str) throws IOException {
        return m26695for(m26707try(str));
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m26701public(Collection<File> collection, File file, String str) throws Throwable {
        if (collection == null || file == null) {
            return false;
        }
        ZipOutputStream zipOutputStream = null;
        try {
            ZipOutputStream zipOutputStream2 = new ZipOutputStream(new FileOutputStream(file));
            try {
                Iterator<File> it = collection.iterator();
                while (it.hasNext()) {
                    if (!m26706throw(it.next(), "", zipOutputStream2, str)) {
                        zipOutputStream2.finish();
                        zipOutputStream2.close();
                        return false;
                    }
                }
                zipOutputStream2.finish();
                zipOutputStream2.close();
                return true;
            } catch (Throwable th) {
                th = th;
                zipOutputStream = zipOutputStream2;
                if (zipOutputStream != null) {
                    zipOutputStream.finish();
                    zipOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m26702return(Collection<String> collection, String str) throws IOException {
        return m26703static(collection, str, null);
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m26703static(Collection<String> collection, String str, String str2) throws Throwable {
        if (collection == null || str == null) {
            return false;
        }
        ZipOutputStream zipOutputStream = null;
        try {
            ZipOutputStream zipOutputStream2 = new ZipOutputStream(new FileOutputStream(str));
            try {
                Iterator<String> it = collection.iterator();
                while (it.hasNext()) {
                    if (!m26706throw(m26707try(it.next()), "", zipOutputStream2, str2)) {
                        zipOutputStream2.finish();
                        zipOutputStream2.close();
                        return false;
                    }
                }
                zipOutputStream2.finish();
                zipOutputStream2.close();
                return true;
            } catch (Throwable th) {
                th = th;
                zipOutputStream = zipOutputStream2;
                if (zipOutputStream != null) {
                    zipOutputStream.finish();
                    zipOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m26704super(File file, File file2, String str) throws IOException {
        if (file == null || file2 == null) {
            return false;
        }
        ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(file2));
        try {
            boolean zM26706throw = m26706throw(file, "", zipOutputStream, str);
            zipOutputStream.close();
            return zM26706throw;
        } catch (Throwable th) {
            try {
                zipOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m26705this(File file, List<File> list, ZipFile zipFile, ZipEntry zipEntry, String str) throws IOException {
        File file2 = new File(file, str);
        list.add(file2);
        if (zipEntry.isDirectory()) {
            return m26692do(file2);
        }
        if (!m26697if(file2)) {
            return false;
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntry));
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i == -1) {
                        bufferedOutputStream.close();
                        bufferedInputStream.close();
                        return true;
                    }
                    bufferedOutputStream.write(bArr, 0, i);
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private static boolean m26706throw(File file, String str, ZipOutputStream zipOutputStream, String str2) throws IOException {
        if (!file.exists()) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(m26696goto(str) ? "" : File.separator);
        sb.append(file.getName());
        String string = sb.toString();
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                ZipEntry zipEntry = new ZipEntry(string + Attributes.InternalPrefix);
                zipEntry.setComment(str2);
                zipOutputStream.putNextEntry(zipEntry);
                zipOutputStream.closeEntry();
            } else {
                for (File file2 : fileArrListFiles) {
                    if (!m26706throw(file2, string, zipOutputStream, str2)) {
                        return false;
                    }
                }
            }
        } else {
            new SecurityManager().checkRead(file.getAbsolutePath());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                ZipEntry zipEntry2 = new ZipEntry(string);
                zipEntry2.setComment(str2);
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = bufferedInputStream.read(bArr, 0, 8192);
                    if (i == -1) {
                        break;
                    }
                    zipOutputStream.write(bArr, 0, i);
                }
                zipOutputStream.closeEntry();
                bufferedInputStream.close();
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    private static File m26707try(String str) {
        if (m26696goto(str)) {
            return null;
        }
        return new File(str);
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m26708while(String str, String str2) throws IOException {
        return m26704super(m26707try(str), m26707try(str2), null);
    }
}
