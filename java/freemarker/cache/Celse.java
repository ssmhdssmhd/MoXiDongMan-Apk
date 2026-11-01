package freemarker.cache;

import freemarker.core.b2;
import freemarker.template.utility.Cconst;
import freemarker.template.utility.Csuper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import org.jsoup.nodes.Attributes;

/* renamed from: freemarker.cache.else, reason: invalid class name */
/* loaded from: classes.dex */
public class Celse implements TemplateLoader {

    /* renamed from: break, reason: not valid java name */
    private static final freemarker.log.Cif f23317break;

    /* renamed from: case, reason: not valid java name */
    private static final boolean f23318case;

    /* renamed from: else, reason: not valid java name */
    private static final int f23319else = 50;

    /* renamed from: goto, reason: not valid java name */
    private static final int f23320goto = 1000;

    /* renamed from: this, reason: not valid java name */
    private static final boolean f23321this;

    /* renamed from: try, reason: not valid java name */
    public static String f23322try = "org.freemarker.emulateCaseSensitiveFileSystem";

    /* renamed from: do, reason: not valid java name */
    public final File f23323do;

    /* renamed from: for, reason: not valid java name */
    private boolean f23324for;

    /* renamed from: if, reason: not valid java name */
    private final String f23325if;

    /* renamed from: new, reason: not valid java name */
    private Cbreak f23326new;

    /* renamed from: freemarker.cache.else$do, reason: invalid class name */
    public class Cdo implements PrivilegedExceptionAction<Object[]> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ File f23327do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f23329if;

        public Cdo(File file, boolean z) {
            this.f23327do = file;
            this.f23329if = z;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Object[] run() throws IOException {
            if (!this.f23327do.exists()) {
                throw new FileNotFoundException(this.f23327do + " does not exist.");
            }
            if (!this.f23327do.isDirectory()) {
                throw new IOException(this.f23327do + " is not a directory.");
            }
            Object[] objArr = new Object[2];
            if (this.f23329if) {
                objArr[0] = this.f23327do;
                objArr[1] = null;
            } else {
                objArr[0] = this.f23327do.getCanonicalFile();
                String path = ((File) objArr[0]).getPath();
                if (!path.endsWith(File.separator)) {
                    path = path + File.separatorChar;
                }
                objArr[1] = path;
            }
            return objArr;
        }
    }

    /* renamed from: freemarker.cache.else$for, reason: invalid class name */
    public class Cfor implements PrivilegedAction<Long> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f23330do;

        public Cfor(Object obj) {
            this.f23330do = obj;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Long run() {
            return Long.valueOf(((File) this.f23330do).lastModified());
        }
    }

    /* renamed from: freemarker.cache.else$if, reason: invalid class name */
    public class Cif implements PrivilegedExceptionAction<File> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f23332do;

        public Cif(String str) {
            this.f23332do = str;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public File run() throws IOException {
            File file = new File(Celse.this.f23323do, Celse.f23321this ? this.f23332do : this.f23332do.replace(Attributes.InternalPrefix, File.separatorChar));
            if (!file.isFile()) {
                return null;
            }
            if (Celse.this.f23325if != null) {
                String canonicalPath = file.getCanonicalPath();
                if (!canonicalPath.startsWith(Celse.this.f23325if)) {
                    throw new SecurityException(file.getAbsolutePath() + " resolves to " + canonicalPath + " which  doesn't start with " + Celse.this.f23325if);
                }
            }
            if (!Celse.this.f23324for || Celse.this.m27667goto(file)) {
                return file;
            }
            return null;
        }
    }

    /* renamed from: freemarker.cache.else$new, reason: invalid class name */
    public class Cnew implements PrivilegedExceptionAction<Reader> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f23334do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f23336if;

        public Cnew(Object obj, String str) {
            this.f23334do = obj;
            this.f23336if = str;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Reader run() throws IOException {
            if (this.f23334do instanceof File) {
                return new InputStreamReader(new FileInputStream((File) this.f23334do), this.f23336if);
            }
            throw new IllegalArgumentException("templateSource wasn't a File, but a: " + this.f23334do.getClass().getName());
        }
    }

    static {
        boolean zM29321package;
        try {
            zM29321package = Csuper.m29321package(Cconst.m29258for("org.freemarker.emulateCaseSensitiveFileSystem", b2.f23510do));
        } catch (Exception unused) {
            zM29321package = false;
        }
        f23318case = zM29321package;
        f23321this = File.separatorChar == '/';
        f23317break = freemarker.log.Cif.m29193break("freemarker.cache");
    }

    @Deprecated
    public Celse() throws IOException {
        this(new File(Cconst.m29259if("user.dir")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public boolean m27667goto(File file) throws IOException {
        String path = file.getPath();
        synchronized (this.f23326new) {
            if (this.f23326new.get(path) != null) {
                return true;
            }
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                if (!this.f23323do.equals(parentFile) && !m27667goto(parentFile)) {
                    return false;
                }
                String[] list = parentFile.list();
                if (list != null) {
                    String name = file.getName();
                    boolean z = false;
                    for (int i = 0; !z && i < list.length; i++) {
                        if (name.equals(list[i])) {
                            z = true;
                        }
                    }
                    if (!z) {
                        for (String str : list) {
                            if (name.equalsIgnoreCase(str)) {
                                freemarker.log.Cif cif = f23317break;
                                if (cif.mo29190throw()) {
                                    cif.mo29183for("Emulating file-not-found because of letter case differences to the real file, for: " + path);
                                }
                                return false;
                            }
                        }
                    }
                }
            }
            synchronized (this.f23326new) {
                this.f23326new.put(path, Boolean.TRUE);
            }
            return true;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m27670case() {
        return this.f23324for;
    }

    @Override // freemarker.cache.TemplateLoader
    public void closeTemplateSource(Object obj) {
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m27671else() {
        return f23318case;
    }

    @Override // freemarker.cache.TemplateLoader
    public Object findTemplateSource(String str) throws IOException {
        try {
            return AccessController.doPrivileged(new Cif(str));
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }

    @Override // freemarker.cache.TemplateLoader
    public long getLastModified(Object obj) {
        return ((Long) AccessController.doPrivileged(new Cfor(obj))).longValue();
    }

    @Override // freemarker.cache.TemplateLoader
    public Reader getReader(Object obj, String str) throws IOException {
        try {
            return (Reader) AccessController.doPrivileged(new Cnew(obj, str));
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m27672this(boolean z) {
        if (!z) {
            this.f23326new = null;
        } else if (this.f23326new == null) {
            this.f23326new = new Cbreak(50, 1000);
        }
        this.f23324for = z;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Cpublic.m27756do(this));
        sb.append("(baseDir=\"");
        sb.append(this.f23323do);
        sb.append("\"");
        if (this.f23325if != null) {
            str = ", canonicalBasePath=\"" + this.f23325if + "\"";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(this.f23324for ? ", emulateCaseSensitiveFileSystem=true" : "");
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public File m27673try() {
        return this.f23323do;
    }

    public Celse(File file) throws IOException {
        this(file, false);
    }

    public Celse(File file, boolean z) throws IOException {
        try {
            Object[] objArr = (Object[]) AccessController.doPrivileged(new Cdo(file, z));
            this.f23323do = (File) objArr[0];
            this.f23325if = (String) objArr[1];
            m27672this(m27671else());
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }
}
