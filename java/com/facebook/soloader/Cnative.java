package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import android.support.v4.h41;
import android.support.v4.ii0;
import android.support.v4.l62;
import android.support.v4.t21;
import android.support.v4.u21;
import android.support.v4.w10;
import android.support.v4.y41;
import android.text.TextUtils;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.slf4j.LoggerFactory;

@l62
/* renamed from: com.facebook.soloader.native, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnative {

    /* renamed from: do, reason: not valid java name */
    public static final String f10686do = "SoLoader";

    /* renamed from: final, reason: not valid java name */
    private static final String f10688final = "lib-main";

    /* renamed from: for, reason: not valid java name */
    public static final boolean f10689for;

    /* renamed from: goto, reason: not valid java name */
    @ii0("sSoSourcesLock")
    @y41
    private static Cstatic[] f10690goto = null;

    /* renamed from: if, reason: not valid java name */
    public static final boolean f10691if = false;

    /* renamed from: import, reason: not valid java name */
    public static final int f10692import = 4;

    /* renamed from: native, reason: not valid java name */
    public static final int f10693native = 8;

    /* renamed from: new, reason: not valid java name */
    @y41
    public static SoFileLoader f10694new = null;

    /* renamed from: public, reason: not valid java name */
    public static final int f10695public = 16;

    /* renamed from: return, reason: not valid java name */
    @ii0("sSoSourcesLock")
    private static int f10696return = 0;

    /* renamed from: static, reason: not valid java name */
    private static boolean f10697static = false;

    /* renamed from: super, reason: not valid java name */
    private static final String f10698super = "lib-";

    /* renamed from: this, reason: not valid java name */
    @ii0("sSoSourcesLock")
    @y41
    private static com.facebook.soloader.Cfor f10699this = null;

    /* renamed from: throw, reason: not valid java name */
    public static final int f10700throw = 1;

    /* renamed from: while, reason: not valid java name */
    public static final int f10702while = 2;

    /* renamed from: try, reason: not valid java name */
    private static final ReentrantReadWriteLock f10701try = new ReentrantReadWriteLock();

    /* renamed from: case, reason: not valid java name */
    @ii0("sSoSourcesLock")
    @y41
    private static Cpublic[] f10682case = null;

    /* renamed from: else, reason: not valid java name */
    private static int f10687else = 0;

    /* renamed from: break, reason: not valid java name */
    @ii0("SoLoader.class")
    private static final HashSet<String> f10681break = new HashSet<>();

    /* renamed from: catch, reason: not valid java name */
    @ii0("SoLoader.class")
    private static final Map<String, Object> f10683catch = new HashMap();

    /* renamed from: class, reason: not valid java name */
    private static final Set<String> f10684class = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: const, reason: not valid java name */
    @y41
    private static SystemLoadLibraryWrapper f10685const = null;

    /* renamed from: com.facebook.soloader.native$do, reason: invalid class name */
    public static class Cdo implements SoFileLoader {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f10703do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ String f10704for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f10705if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Runtime f10706new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Method f10707try;

        public Cdo(boolean z, String str, String str2, Runtime runtime, Method method) {
            this.f10703do = z;
            this.f10705if = str;
            this.f10704for = str2;
            this.f10706new = runtime;
            this.f10707try = method;
        }

        /* renamed from: do, reason: not valid java name */
        private String m12203do(String str) throws NoSuchAlgorithmException, IOException {
            try {
                File file = new File(str);
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i <= 0) {
                            String str2 = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                            fileInputStream.close();
                            return str2;
                        }
                        messageDigest.update(bArr, 0, i);
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e) {
                return e.toString();
            } catch (SecurityException e2) {
                return e2.toString();
            } catch (NoSuchAlgorithmException e3) {
                return e3.toString();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        
            if (r1 == null) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        
            r0 = new java.lang.StringBuilder();
            r0.append("Error when loading lib: ");
            r0.append(r1);
            r0.append(" lib hash: ");
            r0.append(m12203do(r9));
            r0.append(" search path is ");
            r0.append(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
        
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0095  */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v2 */
        @Override // com.facebook.soloader.SoFileLoader
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load(String str, int i) throws Throwable {
            Throwable th;
            Throwable e;
            if (!this.f10703do) {
                System.load(str);
                return;
            }
            String str2 = 1;
            String str3 = (i & 4) == 4 ? this.f10705if : this.f10704for;
            try {
                try {
                    try {
                        synchronized (this.f10706new) {
                            try {
                                String str4 = (String) this.f10707try.invoke(this.f10706new, str, Cnative.class.getClassLoader(), str3);
                                if (str4 != null) {
                                    throw new UnsatisfiedLinkError(str4);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    try {
                        throw th;
                    } catch (IllegalAccessException e2) {
                        e = e2;
                        throw new RuntimeException("Error: Cannot load " + str, e);
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        throw new RuntimeException("Error: Cannot load " + str, e);
                    } catch (InvocationTargetException e4) {
                        e = e4;
                        throw new RuntimeException("Error: Cannot load " + str, e);
                    }
                } catch (Throwable th4) {
                    th = th4;
                    if (str2 != 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Error when loading lib: ");
                        sb.append(str2);
                        sb.append(" lib hash: ");
                        sb.append(m12203do(str));
                        sb.append(" search path is ");
                        sb.append(str3);
                    }
                    throw th;
                }
            } catch (IllegalAccessException e5) {
                e = e5;
                e = e;
                throw new RuntimeException("Error: Cannot load " + str, e);
            } catch (IllegalArgumentException e6) {
                e = e6;
                e = e;
                throw new RuntimeException("Error: Cannot load " + str, e);
            } catch (InvocationTargetException e7) {
                e = e7;
                e = e;
                throw new RuntimeException("Error: Cannot load " + str, e);
            } catch (Throwable th5) {
                str2 = 0;
                th = th5;
                if (str2 != 0) {
                }
                throw th;
            }
        }
    }

    /* renamed from: com.facebook.soloader.native$for, reason: invalid class name */
    public static final class Cfor extends UnsatisfiedLinkError {
        public Cfor(Throwable th) {
            super("APK was built for a different platform");
            initCause(th);
        }
    }

    @w10
    @TargetApi(14)
    /* renamed from: com.facebook.soloader.native$if, reason: invalid class name */
    public static class Cif {
        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public static String m12204do() throws NoSuchMethodException, SecurityException {
            ClassLoader classLoader = Cnative.class.getClassLoader();
            if (classLoader instanceof BaseDexClassLoader) {
                try {
                    return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
                } catch (Exception e) {
                    throw new RuntimeException("Cannot call getLdLibraryPath", e);
                }
            }
            throw new IllegalStateException("ClassLoader " + classLoader.getClass().getName() + " should be of type BaseDexClassLoader");
        }
    }

    static {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                z = true;
            }
        } catch (NoClassDefFoundError | UnsatisfiedLinkError unused) {
        }
        f10689for = z;
    }

    /* renamed from: break, reason: not valid java name */
    public static void m12176break(Context context, boolean z) {
        try {
            m12188goto(context, z ? 1 : 0);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @y41
    /* renamed from: case, reason: not valid java name */
    public static String m12177case(String str) throws IOException {
        f10701try.readLock().lock();
        try {
            String strMo12168if = null;
            if (f10682case != null) {
                int i = 0;
                while (strMo12168if == null) {
                    Cpublic[] cpublicArr = f10682case;
                    if (i >= cpublicArr.length) {
                        break;
                    }
                    strMo12168if = cpublicArr[i].mo12168if(str);
                    i++;
                }
            }
            return strMo12168if;
        } finally {
            f10701try.readLock().unlock();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static synchronized void m12178catch(@y41 SoFileLoader soFileLoader) {
        if (soFileLoader != null) {
            f10694new = soFileLoader;
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        Method methodM12183else = m12183else();
        boolean z = methodM12183else != null;
        String strM12204do = z ? Cif.m12204do() : null;
        f10694new = new Cdo(z, strM12204do, m12190import(strM12204do), runtime, methodM12183else);
    }

    /* renamed from: class, reason: not valid java name */
    private static void m12179class(Context context, int i, @y41 SoFileLoader soFileLoader) throws IOException {
        int i2;
        f10701try.writeLock().lock();
        try {
            if (f10682case == null) {
                f10696return = i;
                ArrayList arrayList = new ArrayList();
                String str = System.getenv("LD_LIBRARY_PATH");
                if (str == null) {
                    str = "/vendor/lib:/system/lib";
                }
                String[] strArrSplit = str.split(":");
                for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("adding system library source: ");
                    sb.append(strArrSplit[i3]);
                    arrayList.add(new Cnew(new File(strArrSplit[i3]), 2));
                }
                if (context != null) {
                    if ((i & 1) != 0) {
                        f10690goto = null;
                        arrayList.add(0, new Cconst(context, f10688final));
                    } else {
                        if (f10697static) {
                            i2 = 0;
                        } else {
                            f10699this = new com.facebook.soloader.Cfor(context, Build.VERSION.SDK_INT <= 17 ? 1 : 0);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("adding application source: ");
                            sb2.append(f10699this.toString());
                            arrayList.add(0, f10699this);
                            i2 = 1;
                        }
                        if ((f10696return & 8) != 0) {
                            f10690goto = null;
                        } else {
                            File file = new File(context.getApplicationInfo().sourceDir);
                            ArrayList arrayList2 = new ArrayList();
                            com.facebook.soloader.Cif cif = new com.facebook.soloader.Cif(context, file, f10688final, i2);
                            arrayList2.add(cif);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("adding backup source from : ");
                            sb3.append(cif.toString());
                            if (Build.VERSION.SDK_INT >= 21 && context.getApplicationInfo().splitSourceDirs != null) {
                                String[] strArr = context.getApplicationInfo().splitSourceDirs;
                                int length = strArr.length;
                                int i4 = 0;
                                int i5 = 0;
                                while (i4 < length) {
                                    File file2 = new File(strArr[i4]);
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(f10698super);
                                    int i6 = i5 + 1;
                                    sb4.append(i5);
                                    com.facebook.soloader.Cif cif2 = new com.facebook.soloader.Cif(context, file2, sb4.toString(), i2);
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("adding backup source: ");
                                    sb5.append(cif2.toString());
                                    arrayList2.add(cif2);
                                    i4++;
                                    i5 = i6;
                                }
                            }
                            f10690goto = (Cstatic[]) arrayList2.toArray(new Cstatic[arrayList2.size()]);
                            arrayList.addAll(0, arrayList2);
                        }
                    }
                }
                Cpublic[] cpublicArr = (Cpublic[]) arrayList.toArray(new Cpublic[arrayList.size()]);
                int iM12191native = m12191native();
                int length2 = cpublicArr.length;
                while (true) {
                    int i7 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Preparing SO source: ");
                    sb6.append(cpublicArr[i7]);
                    cpublicArr[i7].mo12169try(iM12191native);
                    length2 = i7;
                }
                f10682case = cpublicArr;
                f10687else++;
                StringBuilder sb7 = new StringBuilder();
                sb7.append("init finish: ");
                sb7.append(f10682case.length);
                sb7.append(" SO sources prepared");
            }
        } finally {
            f10701try.writeLock().unlock();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m12180const(String str) {
        return m12185final(str, 0);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m12181default(SystemLoadLibraryWrapper systemLoadLibraryWrapper) {
        f10685const = systemLoadLibraryWrapper;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        r0 = new java.lang.StringBuilder();
        r0.append("abi not supported: ");
        r0.append(r3[r4]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
    
        r0 = com.facebook.soloader.Cnative.f10701try;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m12182do() {
        ReentrantReadWriteLock reentrantReadWriteLock = f10701try;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f10682case != null) {
                String[] strArrM12214goto = Creturn.m12214goto();
                int i = 0;
                loop0: while (true) {
                    Cpublic[] cpublicArr = f10682case;
                    if (i >= cpublicArr.length) {
                        f10701try.readLock().unlock();
                        return true;
                    }
                    String[] strArrMo12208for = cpublicArr[i].mo12208for();
                    int i2 = 0;
                    while (i2 < strArrMo12208for.length) {
                        boolean zEquals = false;
                        for (int i3 = 0; i3 < strArrM12214goto.length && !zEquals; i3++) {
                            zEquals = strArrMo12208for[i2].equals(strArrM12214goto[i3]);
                        }
                        if (!zEquals) {
                            break loop0;
                        }
                        i2++;
                    }
                    i++;
                }
            }
            reentrantReadWriteLock.readLock().unlock();
            return false;
        } catch (Throwable th) {
            f10701try.readLock().unlock();
            throw th;
        }
    }

    @y41
    /* renamed from: else, reason: not valid java name */
    private static Method m12183else() throws NoSuchMethodException, SecurityException {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23 && i <= 27) {
            try {
                Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class, String.class);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException | SecurityException unused) {
            }
        }
        return null;
    }

    /* renamed from: extends, reason: not valid java name */
    public static File m12184extends(String str) throws UnsatisfiedLinkError {
        m12189if();
        try {
            return m12186finally(System.mapLibraryName(str));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m12185final(String str, int i) throws UnsatisfiedLinkError {
        SystemLoadLibraryWrapper systemLoadLibraryWrapper;
        boolean z;
        ReentrantReadWriteLock reentrantReadWriteLock = f10701try;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f10682case == null) {
                if (!"http://www.android.com/".equals(System.getProperty(LoggerFactory.JAVA_VENDOR_PROPERTY))) {
                    synchronized (Cnative.class) {
                        z = !f10681break.contains(str);
                        if (z) {
                            SystemLoadLibraryWrapper systemLoadLibraryWrapper2 = f10685const;
                            if (systemLoadLibraryWrapper2 != null) {
                                systemLoadLibraryWrapper2.loadLibrary(str);
                            } else {
                                System.loadLibrary(str);
                            }
                        }
                    }
                    reentrantReadWriteLock.readLock().unlock();
                    return z;
                }
                m12189if();
            }
            reentrantReadWriteLock.readLock().unlock();
            if (!f10697static || (systemLoadLibraryWrapper = f10685const) == null) {
                String strM12236if = Cthrow.m12236if(str);
                return m12199throw(System.mapLibraryName(strM12236if != null ? strM12236if : str), str, strM12236if, i | 2, null);
            }
            systemLoadLibraryWrapper.loadLibrary(str);
            return true;
        } catch (Throwable th) {
            f10701try.readLock().unlock();
            throw th;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static File m12186finally(String str) throws IOException {
        f10701try.readLock().lock();
        int i = 0;
        while (true) {
            try {
                Cpublic[] cpublicArr = f10682case;
                if (i >= cpublicArr.length) {
                    f10701try.readLock().unlock();
                    throw new FileNotFoundException(str);
                }
                File fileMo2943case = cpublicArr[i].mo2943case(str);
                if (fileMo2943case != null) {
                    return fileMo2943case;
                }
                i++;
            } finally {
                f10701try.readLock().unlock();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m12187for(Context context) {
        return (context == null || (context.getApplicationInfo().flags & 129) == 0) ? false : true;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m12188goto(Context context, int i) throws IOException {
        m12198this(context, i, null);
    }

    /* renamed from: if, reason: not valid java name */
    private static void m12189if() {
        ReentrantReadWriteLock reentrantReadWriteLock = f10701try;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f10682case == null) {
                throw new RuntimeException("SoLoader.init() not yet called");
            }
            reentrantReadWriteLock.readLock().unlock();
        } catch (Throwable th) {
            f10701try.readLock().unlock();
            throw th;
        }
    }

    @y41
    /* renamed from: import, reason: not valid java name */
    public static String m12190import(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(":");
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        for (String str2 : strArrSplit) {
            if (!str2.contains(org.antlr.v4.runtime.tree.xpath.Cdo.f28590try)) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }

    /* renamed from: native, reason: not valid java name */
    private static int m12191native() {
        ReentrantReadWriteLock reentrantReadWriteLock = f10701try;
        reentrantReadWriteLock.writeLock().lock();
        try {
            int i = (f10696return & 2) != 0 ? 1 : 0;
            reentrantReadWriteLock.writeLock().unlock();
            return i;
        } catch (Throwable th) {
            f10701try.writeLock().unlock();
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m12192new() {
        m12200throws(null);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m12193public(Cpublic cpublic) throws IOException {
        ReentrantReadWriteLock reentrantReadWriteLock = f10701try;
        reentrantReadWriteLock.writeLock().lock();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("Prepending to SO sources: ");
            sb.append(cpublic);
            m12189if();
            cpublic.mo12169try(m12191native());
            Cpublic[] cpublicArr = f10682case;
            Cpublic[] cpublicArr2 = new Cpublic[cpublicArr.length + 1];
            cpublicArr2[0] = cpublic;
            System.arraycopy(cpublicArr, 0, cpublicArr2, 1, cpublicArr.length);
            f10682case = cpublicArr2;
            f10687else++;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Prepended to SO sources: ");
            sb2.append(cpublic);
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            f10701try.writeLock().unlock();
            throw th;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m12194return() {
        synchronized (Cnative.class) {
            f10681break.clear();
            f10683catch.clear();
            f10694new = null;
        }
        m12200throws(null);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m12195static() {
        m12200throws(new Cpublic[]{new h41()});
    }

    /* renamed from: super, reason: not valid java name */
    public static void m12196super(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        m12199throw(str, null, null, i, threadPolicy);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m12197switch(SoFileLoader soFileLoader) {
        f10694new = soFileLoader;
    }

    /* renamed from: this, reason: not valid java name */
    private static void m12198this(Context context, int i, @y41 SoFileLoader soFileLoader) throws IOException {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            f10697static = m12187for(context);
            m12178catch(soFileLoader);
            m12179class(context, i, soFileLoader);
            if (!t21.m7684if()) {
                t21.m7682do(new u21());
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0093 A[Catch: all -> 0x00e5, PHI: r3
      0x0093: PHI (r3v5 boolean) = (r3v2 boolean), (r3v3 boolean), (r3v3 boolean) binds: [B:21:0x003b, B:31:0x004b, B:36:0x006f] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {, blocks: (B:22:0x003d, B:27:0x0047, B:32:0x004d, B:33:0x005d, B:39:0x0072, B:41:0x0074, B:43:0x007a, B:45:0x0082, B:46:0x0087, B:47:0x0088, B:49:0x008a, B:50:0x008f, B:53:0x0092, B:54:0x0093, B:56:0x0097, B:58:0x009d, B:63:0x00aa, B:65:0x00ae, B:68:0x00d4, B:70:0x00d9, B:72:0x00dd, B:73:0x00e0, B:74:0x00e1, B:75:0x00e2, B:34:0x005e, B:35:0x006e, B:23:0x003e, B:26:0x0046, B:30:0x004a, B:66:0x00b5), top: B:86:0x003d, inners: #0, #2, #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0097 A[Catch: all -> 0x00e5, TryCatch #3 {, blocks: (B:22:0x003d, B:27:0x0047, B:32:0x004d, B:33:0x005d, B:39:0x0072, B:41:0x0074, B:43:0x007a, B:45:0x0082, B:46:0x0087, B:47:0x0088, B:49:0x008a, B:50:0x008f, B:53:0x0092, B:54:0x0093, B:56:0x0097, B:58:0x009d, B:63:0x00aa, B:65:0x00ae, B:68:0x00d4, B:70:0x00d9, B:72:0x00dd, B:73:0x00e0, B:74:0x00e1, B:75:0x00e2, B:34:0x005e, B:35:0x006e, B:23:0x003e, B:26:0x0046, B:30:0x004a, B:66:0x00b5), top: B:86:0x003d, inners: #0, #2, #5, #7 }] */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m12199throw(String str, @y41 String str2, @y41 String str3, int i, @y41 StrictMode.ThreadPolicy threadPolicy) {
        boolean z;
        Object obj;
        boolean z2 = false;
        if (!TextUtils.isEmpty(str2) && f10684class.contains(str2)) {
            return false;
        }
        synchronized (Cnative.class) {
            HashSet<String> hashSet = f10681break;
            if (!hashSet.contains(str)) {
                z = false;
            } else {
                if (str3 == null) {
                    return false;
                }
                z = true;
            }
            Map<String, Object> map = f10683catch;
            if (map.containsKey(str)) {
                obj = map.get(str);
            } else {
                Object obj2 = new Object();
                map.put(str, obj2);
                obj = obj2;
            }
            synchronized (obj) {
                if (!z) {
                    synchronized (Cnative.class) {
                        if (hashSet.contains(str)) {
                            if (str3 == null) {
                                return false;
                            }
                            z = true;
                        }
                        if (z) {
                            if ((i & 16) == 0) {
                            }
                            return !z;
                        }
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("About to load: ");
                            sb.append(str);
                            m12201try(str, i, threadPolicy);
                            synchronized (Cnative.class) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Loaded: ");
                                sb2.append(str);
                                hashSet.add(str);
                            }
                            if ((i & 16) == 0) {
                                if (!TextUtils.isEmpty(str2) && f10684class.contains(str2)) {
                                    z2 = true;
                                }
                                if (str3 != null && !z2) {
                                    boolean z3 = f10689for;
                                    if (z3) {
                                        com.facebook.soloader.Cdo.m12159do("MergedSoMapping.invokeJniOnload[", str2, "]");
                                    }
                                    try {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("About to merge: ");
                                        sb3.append(str2);
                                        sb3.append(" / ");
                                        sb3.append(str);
                                        Cthrow.m12235do(str2);
                                        f10684class.add(str2);
                                        if (z3) {
                                            com.facebook.soloader.Cdo.m12160if();
                                        }
                                    } catch (Throwable th) {
                                        if (f10689for) {
                                            com.facebook.soloader.Cdo.m12160if();
                                        }
                                        throw th;
                                    }
                                }
                            }
                            return !z;
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        } catch (UnsatisfiedLinkError e2) {
                            String message = e2.getMessage();
                            if (message == null || !message.contains("unexpected e_machine:")) {
                                throw e2;
                            }
                            throw new Cfor(e2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m12200throws(Cpublic[] cpublicArr) {
        ReentrantReadWriteLock reentrantReadWriteLock = f10701try;
        reentrantReadWriteLock.writeLock().lock();
        try {
            f10682case = cpublicArr;
            f10687else++;
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            f10701try.writeLock().unlock();
            throw th;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static void m12201try(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        boolean z;
        UnsatisfiedLinkError unsatisfiedLinkError;
        boolean z2;
        ReentrantReadWriteLock reentrantReadWriteLock = f10701try;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f10682case == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Could not load: ");
                sb.append(str);
                sb.append(" because no SO source exists");
                throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
            }
            reentrantReadWriteLock.readLock().unlock();
            if (threadPolicy == null) {
                threadPolicy = StrictMode.allowThreadDiskReads();
                z = true;
            } else {
                z = false;
            }
            if (f10689for) {
                com.facebook.soloader.Cdo.m12159do("SoLoader.loadLibrary[", str, "]");
            }
            int iMo2944new = 0;
            do {
                try {
                    f10701try.readLock().lock();
                    int i2 = f10687else;
                    int i3 = 0;
                    while (true) {
                        if (iMo2944new != 0) {
                            break;
                        }
                        try {
                            Cpublic[] cpublicArr = f10682case;
                            if (i3 < cpublicArr.length) {
                                iMo2944new = cpublicArr[i3].mo2944new(str, i, threadPolicy);
                                if (iMo2944new == 3 && f10690goto != null) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Trying backup SoSource for ");
                                    sb2.append(str);
                                    Cstatic[] cstaticArr = f10690goto;
                                    int length = cstaticArr.length;
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= length) {
                                            break;
                                        }
                                        Cstatic cstatic = cstaticArr[i4];
                                        cstatic.m12231while(str);
                                        int iMo2944new2 = cstatic.mo2944new(str, i, threadPolicy);
                                        if (iMo2944new2 == 1) {
                                            iMo2944new = iMo2944new2;
                                            break;
                                        }
                                        i4++;
                                    }
                                } else {
                                    i3++;
                                }
                            } else {
                                break;
                            }
                        } finally {
                        }
                    }
                    ReentrantReadWriteLock reentrantReadWriteLock2 = f10701try;
                    reentrantReadWriteLock2.readLock().unlock();
                    if ((i & 2) == 2 && iMo2944new == 0) {
                        reentrantReadWriteLock2.writeLock().lock();
                        try {
                            com.facebook.soloader.Cfor cfor = f10699this;
                            if (cfor != null && cfor.m12167else()) {
                                f10687else++;
                            }
                            z2 = f10687else != i2;
                            reentrantReadWriteLock2.writeLock().unlock();
                        } catch (Throwable th) {
                            f10701try.writeLock().unlock();
                            throw th;
                        }
                    } else {
                        z2 = false;
                    }
                } finally {
                    if (iMo2944new == 0 || iMo2944new == i) {
                    }
                }
            } while (z2);
            if (f10689for) {
                com.facebook.soloader.Cdo.m12160if();
            }
            if (z) {
                StrictMode.setThreadPolicy(threadPolicy);
            }
            if (iMo2944new == 0 || iMo2944new == 3) {
                throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
            }
        } finally {
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static String m12202while() {
        f10701try.readLock().lock();
        try {
            m12189if();
            ArrayList arrayList = new ArrayList();
            for (Cpublic cpublic : f10682case) {
                cpublic.mo12166do(arrayList);
            }
            String strJoin = TextUtils.join(":", arrayList);
            StringBuilder sb = new StringBuilder();
            sb.append("makeLdLibraryPath final path: ");
            sb.append(strJoin);
            return strJoin;
        } finally {
            f10701try.readLock().unlock();
        }
    }
}
