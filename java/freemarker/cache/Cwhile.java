package freemarker.cache;

import freemarker.template.utility.Csuper;
import java.io.Reader;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: freemarker.cache.while, reason: invalid class name */
/* loaded from: classes.dex */
public class Cwhile implements TemplateLoader {

    /* renamed from: do, reason: not valid java name */
    private final Map<String, Cdo> f23408do = new HashMap();

    /* renamed from: freemarker.cache.while$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final String f23409do;

        /* renamed from: for, reason: not valid java name */
        private final long f23410for;

        /* renamed from: if, reason: not valid java name */
        private final String f23411if;

        public Cdo(String str, String str2, long j) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (str2 == null) {
                throw new IllegalArgumentException("source == null");
            }
            if (j < -1) {
                throw new IllegalArgumentException("lastModified < -1L");
            }
            this.f23409do = str;
            this.f23411if = str2;
            this.f23410for = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            String str = this.f23409do;
            if (str == null) {
                if (cdo.f23409do != null) {
                    return false;
                }
            } else if (!str.equals(cdo.f23409do)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f23409do;
            return 31 + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return this.f23409do;
        }
    }

    @Override // freemarker.cache.TemplateLoader
    public void closeTemplateSource(Object obj) {
    }

    /* renamed from: do, reason: not valid java name */
    public void m27786do(String str, String str2) {
        m27788if(str, str2, System.currentTimeMillis());
    }

    @Override // freemarker.cache.TemplateLoader
    public Object findTemplateSource(String str) {
        return this.f23408do.get(str);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m27787for(String str) {
        return this.f23408do.remove(str) != null;
    }

    @Override // freemarker.cache.TemplateLoader
    public long getLastModified(Object obj) {
        return ((Cdo) obj).f23410for;
    }

    @Override // freemarker.cache.TemplateLoader
    public Reader getReader(Object obj, String str) {
        return new StringReader(((Cdo) obj).f23411if);
    }

    /* renamed from: if, reason: not valid java name */
    public void m27788if(String str, String str2, long j) {
        this.f23408do.put(str, new Cdo(str, str2, j));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Cpublic.m27756do(this));
        sb.append("(Map { ");
        Iterator<String> it = this.f23408do.keySet().iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            i++;
            if (i != 1) {
                sb.append(", ");
            }
            if (i > 10) {
                sb.append("...");
                break;
            }
            sb.append(Csuper.m29330synchronized(next));
            sb.append("=...");
        }
        if (i != 0) {
            sb.append(' ');
        }
        sb.append("})");
        return sb.toString();
    }
}
