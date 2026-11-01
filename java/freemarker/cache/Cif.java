package freemarker.cache;

import freemarker.template.utility.Csuper;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: freemarker.cache.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements TemplateLoader {

    /* renamed from: do, reason: not valid java name */
    private final Map<String, Cdo> f23351do = new HashMap();

    /* renamed from: freemarker.cache.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final String f23352do;

        /* renamed from: for, reason: not valid java name */
        private final long f23353for;

        /* renamed from: if, reason: not valid java name */
        private final byte[] f23354if;

        public Cdo(String str, byte[] bArr, long j) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (bArr == null) {
                throw new IllegalArgumentException("templateContent == null");
            }
            if (j < -1) {
                throw new IllegalArgumentException("lastModified < -1L");
            }
            this.f23352do = str;
            this.f23354if = bArr;
            this.f23353for = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            String str = this.f23352do;
            if (str == null) {
                if (cdo.f23352do != null) {
                    return false;
                }
            } else if (!str.equals(cdo.f23352do)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f23352do;
            return 31 + (str == null ? 0 : str.hashCode());
        }
    }

    @Override // freemarker.cache.TemplateLoader
    public void closeTemplateSource(Object obj) {
    }

    /* renamed from: do, reason: not valid java name */
    public void m27703do(String str, byte[] bArr) {
        m27705if(str, bArr, System.currentTimeMillis());
    }

    @Override // freemarker.cache.TemplateLoader
    public Object findTemplateSource(String str) {
        return this.f23351do.get(str);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m27704for(String str) {
        return this.f23351do.remove(str) != null;
    }

    @Override // freemarker.cache.TemplateLoader
    public long getLastModified(Object obj) {
        return ((Cdo) obj).f23353for;
    }

    @Override // freemarker.cache.TemplateLoader
    public Reader getReader(Object obj, String str) throws UnsupportedEncodingException {
        return new InputStreamReader(new ByteArrayInputStream(((Cdo) obj).f23354if), str);
    }

    /* renamed from: if, reason: not valid java name */
    public void m27705if(String str, byte[] bArr, long j) {
        this.f23351do.put(str, new Cdo(str, bArr, j));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Cpublic.m27756do(this));
        sb.append("(Map { ");
        Iterator<String> it = this.f23351do.keySet().iterator();
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
