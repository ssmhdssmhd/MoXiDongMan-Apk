package freemarker.cache;

import android.support.v4.on0;
import android.support.v4.vm;
import android.support.v4.w41;
import freemarker.log.Cif;
import freemarker.template.utility.Csuper;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.MalformedURLException;
import java.net.URL;
import javax.servlet.ServletContext;
import org.jsoup.nodes.Attributes;

/* renamed from: freemarker.cache.package, reason: invalid class name */
/* loaded from: classes.dex */
public class Cpackage implements TemplateLoader {

    /* renamed from: try, reason: not valid java name */
    private static final Cif f23385try = Cif.m29193break("freemarker.cache");

    /* renamed from: do, reason: not valid java name */
    private final ServletContext f23386do;

    /* renamed from: for, reason: not valid java name */
    private Boolean f23387for;

    /* renamed from: if, reason: not valid java name */
    private final String f23388if;

    /* renamed from: new, reason: not valid java name */
    private boolean f23389new;

    public Cpackage(ServletContext servletContext) {
        this(servletContext, on0.f4694final);
    }

    /* renamed from: if, reason: not valid java name */
    private String m27748if() {
        try {
            return (String) this.f23386do.getClass().getMethod("getContextPath", vm.f7296if).invoke(this.f23386do, vm.f7294do);
        } catch (Throwable unused) {
            return "[can't query before Serlvet 2.5]";
        }
    }

    @Override // freemarker.cache.TemplateLoader
    public void closeTemplateSource(Object obj) throws IOException {
        if (obj instanceof File) {
            return;
        }
        ((Cfinally) obj).m27686do();
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m27749do() {
        return this.f23389new;
    }

    @Override // freemarker.cache.TemplateLoader
    public Object findTemplateSource(String str) throws IOException {
        String str2 = this.f23388if + str;
        if (this.f23389new) {
            try {
                String realPath = this.f23386do.getRealPath(str2);
                if (realPath != null) {
                    File file = new File(realPath);
                    if (file.canRead()) {
                        if (file.isFile()) {
                            return file;
                        }
                    }
                }
            } catch (SecurityException unused) {
            }
        }
        try {
            URL resource = this.f23386do.getResource(str2);
            if (resource == null) {
                return null;
            }
            return new Cfinally(resource, m27750for());
        } catch (MalformedURLException e) {
            f23385try.mo29188private("Could not retrieve resource " + Csuper.b(str2), e);
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public Boolean m27750for() {
        return this.f23387for;
    }

    @Override // freemarker.cache.TemplateLoader
    public long getLastModified(Object obj) {
        return obj instanceof File ? ((File) obj).lastModified() : ((Cfinally) obj).m27689new();
    }

    @Override // freemarker.cache.TemplateLoader
    public Reader getReader(Object obj, String str) throws IOException {
        return obj instanceof File ? new InputStreamReader(new FileInputStream((File) obj), str) : new InputStreamReader(((Cfinally) obj).m27688if(), str);
    }

    /* renamed from: new, reason: not valid java name */
    public void m27751new(boolean z) {
        this.f23389new = z;
    }

    public String toString() {
        return Cpublic.m27756do(this) + "(subdirPath=" + Csuper.m29330synchronized(this.f23388if) + ", servletContext={contextPath=" + Csuper.m29330synchronized(m27748if()) + ", displayName=" + Csuper.m29330synchronized(this.f23386do.getServletContextName()) + "})";
    }

    /* renamed from: try, reason: not valid java name */
    public void m27752try(Boolean bool) {
        this.f23387for = bool;
    }

    public Cpackage(ServletContext servletContext, String str) {
        this.f23389new = true;
        w41.check("servletContext", servletContext);
        w41.check("subdirPath", str);
        String strReplace = str.replace('\\', Attributes.InternalPrefix);
        if (!strReplace.endsWith(on0.f4694final)) {
            strReplace = strReplace + on0.f4694final;
        }
        if (!strReplace.startsWith(on0.f4694final)) {
            strReplace = on0.f4694final + strReplace;
        }
        this.f23388if = strReplace;
        this.f23386do = servletContext;
    }
}
