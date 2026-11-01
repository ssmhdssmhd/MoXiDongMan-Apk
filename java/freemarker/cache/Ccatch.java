package freemarker.cache;

import android.support.v4.w41;
import java.io.IOException;
import java.io.Reader;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: freemarker.cache.catch, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccatch implements StatefulTemplateLoader {

    /* renamed from: do, reason: not valid java name */
    private final TemplateLoader[] f23309do;

    /* renamed from: if, reason: not valid java name */
    private final Map<String, TemplateLoader> f23311if = new ConcurrentHashMap();

    /* renamed from: for, reason: not valid java name */
    private boolean f23310for = true;

    /* renamed from: freemarker.cache.catch$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Object f23312do;

        /* renamed from: if, reason: not valid java name */
        private final TemplateLoader f23313if;

        public Cdo(Object obj, TemplateLoader templateLoader) {
            this.f23312do = obj;
            this.f23313if = templateLoader;
        }

        /* renamed from: do, reason: not valid java name */
        public void m27661do() throws IOException {
            this.f23313if.closeTemplateSource(this.f23312do);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return cdo.f23313if.equals(this.f23313if) && cdo.f23312do.equals(this.f23312do);
        }

        /* renamed from: for, reason: not valid java name */
        public Reader m27662for(String str) throws IOException {
            return this.f23313if.getReader(this.f23312do, str);
        }

        public int hashCode() {
            return this.f23313if.hashCode() + (this.f23312do.hashCode() * 31);
        }

        /* renamed from: if, reason: not valid java name */
        public long m27663if() {
            return this.f23313if.getLastModified(this.f23312do);
        }

        /* renamed from: new, reason: not valid java name */
        public Object m27664new() {
            return this.f23312do;
        }

        public String toString() {
            return this.f23312do.toString();
        }
    }

    public Ccatch(TemplateLoader[] templateLoaderArr) {
        w41.check("templateLoaders", templateLoaderArr);
        this.f23309do = (TemplateLoader[]) templateLoaderArr.clone();
    }

    @Override // freemarker.cache.TemplateLoader
    public void closeTemplateSource(Object obj) throws IOException {
        ((Cdo) obj).m27661do();
    }

    /* renamed from: do, reason: not valid java name */
    public TemplateLoader m27657do(int i) {
        return this.f23309do[i];
    }

    @Override // freemarker.cache.TemplateLoader
    public Object findTemplateSource(String str) throws IOException {
        TemplateLoader templateLoader;
        Object objFindTemplateSource;
        Object objFindTemplateSource2;
        if (this.f23310for) {
            templateLoader = this.f23311if.get(str);
            if (templateLoader != null && (objFindTemplateSource2 = templateLoader.findTemplateSource(str)) != null) {
                return new Cdo(objFindTemplateSource2, templateLoader);
            }
        } else {
            templateLoader = null;
        }
        for (TemplateLoader templateLoader2 : this.f23309do) {
            if (templateLoader != templateLoader2 && (objFindTemplateSource = templateLoader2.findTemplateSource(str)) != null) {
                if (this.f23310for) {
                    this.f23311if.put(str, templateLoader2);
                }
                return new Cdo(objFindTemplateSource, templateLoader2);
            }
        }
        if (this.f23310for) {
            this.f23311if.remove(str);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m27658for() {
        return this.f23310for;
    }

    @Override // freemarker.cache.TemplateLoader
    public long getLastModified(Object obj) {
        return ((Cdo) obj).m27663if();
    }

    @Override // freemarker.cache.TemplateLoader
    public Reader getReader(Object obj, String str) throws IOException {
        return ((Cdo) obj).m27662for(str);
    }

    /* renamed from: if, reason: not valid java name */
    public int m27659if() {
        return this.f23309do.length;
    }

    /* renamed from: new, reason: not valid java name */
    public void m27660new(boolean z) {
        this.f23310for = z;
    }

    @Override // freemarker.cache.StatefulTemplateLoader
    public void resetState() {
        this.f23311if.clear();
        for (TemplateLoader templateLoader : this.f23309do) {
            if (templateLoader instanceof StatefulTemplateLoader) {
                ((StatefulTemplateLoader) templateLoader).resetState();
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MultiTemplateLoader(");
        int i = 0;
        while (i < this.f23309do.length) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append("loader");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" = ");
            sb.append(this.f23309do[i]);
            i = i2;
        }
        sb.append(")");
        return sb.toString();
    }
}
