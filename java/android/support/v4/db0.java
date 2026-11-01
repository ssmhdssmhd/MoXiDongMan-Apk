package android.support.v4;

import android.support.v4.uf1;
import androidx.multidex.MultiDexExtractor;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.PosixFilePermission;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class db0 {
    /* renamed from: break, reason: not valid java name */
    public static List<File> m1192break(rk2 rk2Var) throws rj2 {
        if (rk2Var == null) {
            throw new rj2("cannot get split zip files: zipmodel is null");
        }
        if (rk2Var.m7051try() == null) {
            return null;
        }
        if (!rk2Var.m7027catch().exists()) {
            throw new rj2("zip file does not exist");
        }
        ArrayList arrayList = new ArrayList();
        File fileM7027catch = rk2Var.m7027catch();
        if (!rk2Var.m7029const()) {
            arrayList.add(fileM7027catch);
            return arrayList;
        }
        int iM9068new = rk2Var.m7051try().m9068new();
        if (iM9068new == 0) {
            arrayList.add(fileM7027catch);
            return arrayList;
        }
        int i = 0;
        while (i <= iM9068new) {
            if (i == iM9068new) {
                arrayList.add(rk2Var.m7027catch());
            } else {
                String str = i >= 9 ? ".z" : ".z0";
                arrayList.add(new File((fileM7027catch.getName().contains(".") ? fileM7027catch.getPath().substring(0, fileM7027catch.getPath().lastIndexOf(".")) : fileM7027catch.getPath()) + str + (i + 1)));
            }
            i++;
        }
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m1193case(File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    Path path = file.toPath();
                    String lowerCase = System.getProperty("os.name").toLowerCase();
                    if (m1207super(lowerCase)) {
                        return m1194catch(path);
                    }
                    if (!m1196const(lowerCase) && !m1199final(lowerCase)) {
                        return new byte[4];
                    }
                    return m1201goto(path);
                }
            } catch (NoSuchMethodError unused) {
                return new byte[4];
            }
        }
        return new byte[4];
    }

    /* renamed from: catch, reason: not valid java name */
    private static byte[] m1194catch(Path path) throws IOException {
        byte[] bArr = new byte[4];
        try {
            DosFileAttributes attributes = ((DosFileAttributeView) Files.getFileAttributeView(path, DosFileAttributeView.class, new LinkOption[0])).readAttributes();
            bArr[0] = m1211while(attributes.isArchive(), m1211while(attributes.isSystem(), m1211while(attributes.isHidden(), m1211while(attributes.isReadOnly(), (byte) 0, 0), 1), 2), 5);
        } catch (IOException unused) {
        }
        return bArr;
    }

    /* renamed from: class, reason: not valid java name */
    public static String m1195class(String str) throws rj2 {
        if (!mj2.m4939try(str)) {
            throw new rj2("zip file name is empty or null, cannot determine zip file name");
        }
        if (str.contains(System.getProperty("file.separator"))) {
            str = str.substring(str.lastIndexOf(System.getProperty("file.separator")) + 1);
        }
        return str.endsWith(MultiDexExtractor.EXTRACTED_SUFFIX) ? str.substring(0, str.lastIndexOf(".")) : str;
    }

    /* renamed from: const, reason: not valid java name */
    private static boolean m1196const(String str) {
        return str.contains("mac");
    }

    /* renamed from: do, reason: not valid java name */
    private static void m1197do(byte b, int i, Set<PosixFilePermission> set, PosixFilePermission posixFilePermission) {
        if (b9.m476do(b, i)) {
            set.add(posixFilePermission);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<File> m1198else(File file, boolean z, boolean z2) throws rj2 {
        if (file == null) {
            throw new rj2("input path is null, cannot read files in the directory");
        }
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = file.listFiles();
        if (file.isDirectory() && file.canRead() && fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (!file2.isHidden()) {
                    arrayList.add(file2);
                    if (file2.isDirectory()) {
                        arrayList.addAll(m1198else(file2, z, z2));
                    }
                } else if (file2.isDirectory()) {
                    if (!z2) {
                    }
                } else if (!z) {
                }
            }
        }
        return arrayList;
    }

    /* renamed from: final, reason: not valid java name */
    private static boolean m1199final(String str) {
        return str.contains("nux");
    }

    /* renamed from: for, reason: not valid java name */
    private static void m1200for(Path path, byte[] bArr) throws IOException {
        if (bArr[0] == 0) {
            return;
        }
        DosFileAttributeView dosFileAttributeView = (DosFileAttributeView) Files.getFileAttributeView(path, DosFileAttributeView.class, new LinkOption[0]);
        try {
            dosFileAttributeView.setReadOnly(b9.m476do(bArr[0], 0));
            dosFileAttributeView.setHidden(b9.m476do(bArr[0], 1));
            dosFileAttributeView.setSystem(b9.m476do(bArr[0], 2));
            dosFileAttributeView.setArchive(b9.m476do(bArr[0], 5));
        } catch (IOException unused) {
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static byte[] m1201goto(Path path) {
        byte[] bArr = new byte[4];
        try {
            Set<PosixFilePermission> setPermissions = ((PosixFileAttributeView) Files.getFileAttributeView(path, PosixFileAttributeView.class, new LinkOption[0])).readAttributes().permissions();
            bArr[3] = m1211while(Files.isRegularFile(path, new LinkOption[0]), bArr[3], 7);
            bArr[3] = m1211while(Files.isDirectory(path, new LinkOption[0]), bArr[3], 6);
            bArr[3] = m1211while(setPermissions.contains(PosixFilePermission.OWNER_READ), bArr[3], 0);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.OWNER_WRITE), bArr[2], 7);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.OWNER_EXECUTE), bArr[2], 6);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.GROUP_READ), bArr[2], 5);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.GROUP_WRITE), bArr[2], 4);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.GROUP_EXECUTE), bArr[2], 3);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.OTHERS_READ), bArr[2], 2);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.OTHERS_WRITE), bArr[2], 1);
            bArr[2] = m1211while(setPermissions.contains(PosixFilePermission.OTHERS_EXECUTE), bArr[2], 0);
        } catch (IOException unused) {
        }
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    private static void m1202if(Path path, byte[] bArr) throws IOException {
        if (bArr[2] == 0 && bArr[3] == 0) {
            return;
        }
        try {
            HashSet hashSet = new HashSet();
            m1197do(bArr[3], 0, hashSet, PosixFilePermission.OWNER_READ);
            m1197do(bArr[2], 7, hashSet, PosixFilePermission.OWNER_WRITE);
            m1197do(bArr[2], 6, hashSet, PosixFilePermission.OWNER_EXECUTE);
            m1197do(bArr[2], 5, hashSet, PosixFilePermission.GROUP_READ);
            m1197do(bArr[2], 4, hashSet, PosixFilePermission.GROUP_WRITE);
            m1197do(bArr[2], 3, hashSet, PosixFilePermission.GROUP_EXECUTE);
            m1197do(bArr[2], 2, hashSet, PosixFilePermission.OTHERS_READ);
            m1197do(bArr[2], 1, hashSet, PosixFilePermission.OTHERS_WRITE);
            m1197do(bArr[2], 0, hashSet, PosixFilePermission.OTHERS_EXECUTE);
            Files.setPosixFilePermissions(path, hashSet);
        } catch (IOException unused) {
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m1203import(Path path, byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        String lowerCase = System.getProperty("os.name").toLowerCase();
        if (m1207super(lowerCase)) {
            m1200for(path, bArr);
        } else if (m1196const(lowerCase) || m1199final(lowerCase)) {
            m1202if(path, bArr);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m1204native(Path path, long j) throws IOException {
        if (j <= 0 || !Files.exists(path, new LinkOption[0])) {
            return;
        }
        try {
            Files.setLastModifiedTime(path, FileTime.fromMillis(mj2.m4936for(j)));
        } catch (Exception unused) {
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m1205new(List<File> list) throws rj2 {
        for (File file : list) {
            if (!file.exists()) {
                throw new rj2("File does not exist: " + file);
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m1206public(File file, long j) {
        file.setLastModified(mj2.m4936for(j));
    }

    /* renamed from: super, reason: not valid java name */
    private static boolean m1207super(String str) {
        return str.contains("win");
    }

    /* renamed from: this, reason: not valid java name */
    public static String m1208this(String str, String str2) {
        if (!mj2.m4939try(str2)) {
            File file = new File(str);
            if (!file.isDirectory()) {
                return file.getName();
            }
            return file.getName() + on0.f4694final;
        }
        String path = new File(str2).getPath();
        String str3 = on0.f4691const;
        if (!path.endsWith(str3)) {
            path = path + str3;
        }
        String strSubstring = str.substring(path.length());
        if (strSubstring.startsWith(System.getProperty("file.separator"))) {
            strSubstring = strSubstring.substring(1);
        }
        File file2 = new File(str);
        if (file2.isDirectory()) {
            return strSubstring.replaceAll("\\\\", on0.f4694final) + on0.f4694final;
        }
        return strSubstring.substring(0, strSubstring.lastIndexOf(file2.getName())).replaceAll("\\\\", on0.f4694final) + file2.getName();
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m1209throw(String str) {
        return str.endsWith(on0.f4694final) || str.endsWith("\\");
    }

    /* renamed from: try, reason: not valid java name */
    public static void m1210try(RandomAccessFile randomAccessFile, OutputStream outputStream, long j, long j2, uf1 uf1Var) throws InterruptedException, IOException {
        long j3 = 0;
        if (j < 0 || j2 < 0 || j > j2) {
            throw new rj2("invalid offsets");
        }
        if (j == j2) {
            return;
        }
        try {
            randomAccessFile.seek(j);
            long j4 = j2 - j;
            byte[] bArr = j4 < 4096 ? new byte[(int) j4] : new byte[4096];
            while (true) {
                int i = randomAccessFile.read(bArr);
                if (i == -1) {
                    return;
                }
                outputStream.write(bArr, 0, i);
                long j5 = i;
                uf1Var.m8427throws(j5);
                if (uf1Var.m8410class()) {
                    uf1Var.m8421return(uf1.Cdo.CANCELLED);
                    return;
                }
                j3 += j5;
                if (j3 == j4) {
                    return;
                }
                if (bArr.length + j3 > j4) {
                    bArr = new byte[(int) (j4 - j3)];
                }
            }
        } catch (IOException e) {
            throw new rj2(e);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private static byte m1211while(boolean z, byte b, int i) {
        return z ? b9.m478if(b, i) : b;
    }
}
