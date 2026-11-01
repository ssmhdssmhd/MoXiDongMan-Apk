package freemarker.cache;

import android.support.v4.on0;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import org.jsoup.nodes.Attributes;

/* renamed from: freemarker.cache.extends, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cextends implements TemplateLoader {

    /* renamed from: do, reason: not valid java name */
    private Boolean f23337do;

    /* renamed from: do, reason: not valid java name */
    public static String m27678do(String str) {
        String strReplace = str.replace('\\', Attributes.InternalPrefix);
        if (strReplace.length() <= 0 || strReplace.endsWith(on0.f4694final)) {
            return strReplace;
        }
        return strReplace + on0.f4694final;
    }

    @Override // freemarker.cache.TemplateLoader
    public void closeTemplateSource(Object obj) throws IOException {
        ((Cfinally) obj).m27686do();
    }

    @Override // freemarker.cache.TemplateLoader
    public Object findTemplateSource(String str) throws IOException {
        URL urlMo27680if = mo27680if(str);
        if (urlMo27680if == null) {
            return null;
        }
        return new Cfinally(urlMo27680if, m27679for());
    }

    /* renamed from: for, reason: not valid java name */
    public Boolean m27679for() {
        return this.f23337do;
    }

    @Override // freemarker.cache.TemplateLoader
    public long getLastModified(Object obj) {
        return ((Cfinally) obj).m27689new();
    }

    @Override // freemarker.cache.TemplateLoader
    public Reader getReader(Object obj, String str) throws IOException {
        return new InputStreamReader(((Cfinally) obj).m27688if(), str);
    }

    /* renamed from: if, reason: not valid java name */
    public abstract URL mo27680if(String str);

    /* renamed from: new, reason: not valid java name */
    public void m27681new(Boolean bool) {
        this.f23337do = bool;
    }
}
