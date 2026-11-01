package freemarker.ext.jsp;

import freemarker.template.utility.Cconst;
import java.io.IOException;
import java.io.Writer;
import javax.servlet.jsp.JspWriter;

/* renamed from: freemarker.ext.jsp.catch, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccatch extends JspWriter {

    /* renamed from: if, reason: not valid java name */
    public static final char[] f24810if = Cconst.m29258for("line.separator", "\n").toCharArray();

    /* renamed from: do, reason: not valid java name */
    private final Writer f24811do;

    public Ccatch(Writer writer) {
        super(0, true);
        this.f24811do = writer;
    }

    /* renamed from: break, reason: not valid java name */
    public void m28888break(int i) throws IOException {
        this.f24811do.write(Integer.toString(i));
    }

    /* renamed from: case, reason: not valid java name */
    public void m28889case() throws IOException {
        this.f24811do.write(f24810if);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m28890catch(long j) throws IOException {
        this.f24811do.write(Long.toString(j));
    }

    /* renamed from: class, reason: not valid java name */
    public void m28891class(Object obj) throws IOException {
        this.f24811do.write(obj == null ? "null" : obj.toString());
    }

    /* renamed from: const, reason: not valid java name */
    public void m28892const(String str) throws IOException {
        this.f24811do.write(str);
    }

    /* renamed from: default, reason: not valid java name */
    public void m28893default(char[] cArr) throws IOException {
        m28908super(cArr);
        m28889case();
    }

    /* renamed from: do, reason: not valid java name */
    public void m28894do() throws IOException {
        throw new IOException("Can't clear");
    }

    /* renamed from: else, reason: not valid java name */
    public void m28895else(char c) throws IOException {
        this.f24811do.write(c);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m28896extends(int i) throws IOException {
        this.f24811do.write(i);
    }

    /* renamed from: final, reason: not valid java name */
    public void m28897final(boolean z) throws IOException {
        this.f24811do.write((z ? Boolean.TRUE : Boolean.FALSE).toString());
    }

    /* renamed from: finally, reason: not valid java name */
    public void m28898finally(char[] cArr, int i, int i2) throws IOException {
        this.f24811do.write(cArr, i, i2);
    }

    /* renamed from: for, reason: not valid java name */
    public void m28899for() throws IOException {
        throw new IOException("Close not permitted.");
    }

    /* renamed from: goto, reason: not valid java name */
    public void m28900goto(double d) throws IOException {
        this.f24811do.write(Double.toString(d));
    }

    /* renamed from: if, reason: not valid java name */
    public void m28901if() throws IOException {
        throw new IOException("Can't clear");
    }

    /* renamed from: import, reason: not valid java name */
    public void m28902import(double d) throws IOException {
        m28900goto(d);
        m28889case();
    }

    /* renamed from: native, reason: not valid java name */
    public void m28903native(float f) throws IOException {
        m28910this(f);
        m28889case();
    }

    /* renamed from: new, reason: not valid java name */
    public void m28904new() throws IOException {
        this.f24811do.flush();
    }

    /* renamed from: public, reason: not valid java name */
    public void m28905public(int i) throws IOException {
        m28888break(i);
        m28889case();
    }

    /* renamed from: return, reason: not valid java name */
    public void m28906return(long j) throws IOException {
        m28890catch(j);
        m28889case();
    }

    /* renamed from: static, reason: not valid java name */
    public void m28907static(Object obj) throws IOException {
        m28891class(obj);
        m28889case();
    }

    /* renamed from: super, reason: not valid java name */
    public void m28908super(char[] cArr) throws IOException {
        this.f24811do.write(cArr);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m28909switch(String str) throws IOException {
        m28892const(str);
        m28889case();
    }

    /* renamed from: this, reason: not valid java name */
    public void m28910this(float f) throws IOException {
        this.f24811do.write(Float.toString(f));
    }

    /* renamed from: throw, reason: not valid java name */
    public void m28911throw() throws IOException {
        m28889case();
    }

    /* renamed from: throws, reason: not valid java name */
    public void m28912throws(boolean z) throws IOException {
        m28897final(z);
        m28889case();
    }

    public String toString() {
        return "JspWriterAdapter wrapping a " + this.f24811do.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public int m28913try() {
        return 0;
    }

    /* renamed from: while, reason: not valid java name */
    public void m28914while(char c) throws IOException {
        m28895else(c);
        m28889case();
    }
}
