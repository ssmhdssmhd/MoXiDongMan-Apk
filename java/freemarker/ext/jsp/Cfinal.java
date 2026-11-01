package freemarker.ext.jsp;

import android.support.v4.k52;
import freemarker.template.TemplateTransformModel;
import freemarker.template.TransformControl;
import java.beans.IntrospectionException;
import java.io.CharArrayReader;
import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.Map;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTag;
import javax.servlet.jsp.tagext.IterationTag;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TryCatchFinally;

/* renamed from: freemarker.ext.jsp.final, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfinal extends Cbreak implements TemplateTransformModel {

    /* renamed from: goto, reason: not valid java name */
    private static final freemarker.log.Cif f24839goto = freemarker.log.Cif.m29193break("freemarker.jsp");

    /* renamed from: case, reason: not valid java name */
    private final boolean f24840case;

    /* renamed from: else, reason: not valid java name */
    private final boolean f24841else;

    /* renamed from: try, reason: not valid java name */
    private final boolean f24842try;

    /* renamed from: freemarker.ext.jsp.final$do, reason: invalid class name */
    public static class Cdo extends BodyContent {

        /* renamed from: do, reason: not valid java name */
        private CharArrayWriter f24843do;

        public Cdo(JspWriter jspWriter, boolean z) {
            super(jspWriter);
            if (z) {
                m28978goto();
            }
        }

        /* renamed from: abstract, reason: not valid java name */
        public void m28964abstract(char[] cArr, int i, int i2) throws IOException {
            CharArrayWriter charArrayWriter = this.f24843do;
            if (charArrayWriter != null) {
                charArrayWriter.write(cArr, i, i2);
            } else {
                getEnclosingWriter().write(cArr, i, i2);
            }
        }

        /* renamed from: break, reason: not valid java name */
        public void m28965break(char c) throws IOException {
            m28984private(c);
        }

        /* renamed from: case, reason: not valid java name */
        public int m28966case() {
            return Integer.MAX_VALUE;
        }

        /* renamed from: catch, reason: not valid java name */
        public void m28967catch(double d) throws IOException {
            write(Double.toString(d));
        }

        /* renamed from: class, reason: not valid java name */
        public void m28968class(float f) throws IOException {
            write(Float.toString(f));
        }

        /* renamed from: const, reason: not valid java name */
        public void m28969const(int i) throws IOException {
            write(Integer.toString(i));
        }

        /* renamed from: continue, reason: not valid java name */
        public void m28970continue(Writer writer) throws IOException {
            this.f24843do.writeTo(writer);
        }

        /* renamed from: default, reason: not valid java name */
        public void m28971default(Object obj) throws IOException {
            m28988super(obj);
            m28990this();
        }

        /* renamed from: do, reason: not valid java name */
        public void m28972do() throws IOException {
            if (this.f24843do == null) {
                throw new IOException("Can't clear");
            }
            this.f24843do = new CharArrayWriter();
        }

        /* renamed from: else, reason: not valid java name */
        public String m28973else() {
            return this.f24843do.toString();
        }

        /* renamed from: extends, reason: not valid java name */
        public void m28974extends(String str) throws IOException {
            m28991throw(str);
            m28990this();
        }

        /* renamed from: final, reason: not valid java name */
        public void m28975final(long j) throws IOException {
            write(Long.toString(j));
        }

        /* renamed from: finally, reason: not valid java name */
        public void m28976finally(boolean z) throws IOException {
            m28994while(z);
            m28990this();
        }

        /* renamed from: for, reason: not valid java name */
        public void mo28977for() throws IOException {
        }

        /* renamed from: goto, reason: not valid java name */
        public void m28978goto() {
            this.f24843do = new CharArrayWriter();
        }

        /* renamed from: if, reason: not valid java name */
        public void m28979if() throws IOException {
            if (this.f24843do == null) {
                throw new IOException("Can't clear");
            }
            this.f24843do = new CharArrayWriter();
        }

        /* renamed from: import, reason: not valid java name */
        public void m28980import(char[] cArr) throws IOException {
            write(cArr);
        }

        /* renamed from: native, reason: not valid java name */
        public void m28981native() throws IOException {
            m28990this();
        }

        /* renamed from: new, reason: not valid java name */
        public void m28982new() throws IOException {
            if (this.f24843do == null) {
                getEnclosingWriter().flush();
            }
        }

        /* renamed from: package, reason: not valid java name */
        public void m28983package(char[] cArr) throws IOException {
            m28980import(cArr);
            m28990this();
        }

        /* renamed from: private, reason: not valid java name */
        public void m28984private(int i) throws IOException {
            CharArrayWriter charArrayWriter = this.f24843do;
            if (charArrayWriter != null) {
                charArrayWriter.write(i);
            } else {
                getEnclosingWriter().write(i);
            }
        }

        /* renamed from: public, reason: not valid java name */
        public void m28985public(char c) throws IOException {
            m28965break(c);
            m28990this();
        }

        /* renamed from: return, reason: not valid java name */
        public void m28986return(double d) throws IOException {
            m28967catch(d);
            m28990this();
        }

        /* renamed from: static, reason: not valid java name */
        public void m28987static(float f) throws IOException {
            m28968class(f);
            m28990this();
        }

        /* renamed from: super, reason: not valid java name */
        public void m28988super(Object obj) throws IOException {
            write(obj == null ? "null" : obj.toString());
        }

        /* renamed from: switch, reason: not valid java name */
        public void m28989switch(int i) throws IOException {
            m28969const(i);
            m28990this();
        }

        /* renamed from: this, reason: not valid java name */
        public void m28990this() throws IOException {
            write(Ccatch.f24810if);
        }

        /* renamed from: throw, reason: not valid java name */
        public void m28991throw(String str) throws IOException {
            write(str);
        }

        /* renamed from: throws, reason: not valid java name */
        public void m28992throws(long j) throws IOException {
            m28975final(j);
            m28990this();
        }

        /* renamed from: try, reason: not valid java name */
        public Reader m28993try() {
            return new CharArrayReader(this.f24843do.toCharArray());
        }

        /* renamed from: while, reason: not valid java name */
        public void m28994while(boolean z) throws IOException {
            write((z ? Boolean.TRUE : Boolean.FALSE).toString());
        }
    }

    /* renamed from: freemarker.ext.jsp.final$if, reason: invalid class name */
    public class Cif extends Cdo implements TransformControl {

        /* renamed from: case, reason: not valid java name */
        private boolean f24844case;

        /* renamed from: for, reason: not valid java name */
        private final Celse f24846for;

        /* renamed from: if, reason: not valid java name */
        private final Tag f24847if;

        /* renamed from: new, reason: not valid java name */
        private boolean f24848new;

        /* renamed from: try, reason: not valid java name */
        private final boolean f24849try;

        public Cif(Writer writer, Tag tag, Celse celse, boolean z) {
            super((JspWriter) writer, false);
            this.f24848new = true;
            this.f24844case = false;
            this.f24849try = z;
            this.f24847if = tag;
            this.f24846for = celse;
        }

        /* renamed from: strictfp, reason: not valid java name */
        private void m28995strictfp() throws JspException {
            if (this.f24848new) {
                this.f24846for.m28932default();
                this.f24848new = false;
            }
            if (this.f24847if.doEndTag() == 5) {
                Cfinal.f24839goto.mo29187package("Tag.SKIP_PAGE was ignored from a " + this.f24847if.getClass().getName() + " tag.");
            }
        }

        @Override // freemarker.template.TransformControl
        public int afterBody() throws k52, JspException {
            try {
                if (!Cfinal.this.f24840case) {
                    m28995strictfp();
                    return 1;
                }
                int iDoAfterBody = this.f24847if.doAfterBody();
                if (iDoAfterBody == 0) {
                    m28995strictfp();
                    return 1;
                }
                if (iDoAfterBody == 2) {
                    return 0;
                }
                throw new k52("Unexpected return value " + iDoAfterBody + "from " + this.f24847if.getClass().getName() + ".doAfterBody()");
            } catch (Exception e) {
                throw Cfinal.this.m28886new(e);
            }
        }

        @Override // freemarker.ext.jsp.Cfinal.Cdo
        /* renamed from: for */
        public void mo28977for() {
            if (this.f24844case) {
                return;
            }
            this.f24844case = true;
            if (this.f24848new) {
                this.f24846for.m28932default();
            }
            this.f24846for.m28954throws();
            try {
                if (Cfinal.this.f24841else) {
                    this.f24847if.doFinally();
                }
                this.f24847if.release();
            } finally {
                if (this.f24849try) {
                    this.f24846for.m28932default();
                }
            }
        }

        /* renamed from: interface, reason: not valid java name */
        public Tag m28996interface() {
            return this.f24847if;
        }

        @Override // freemarker.template.TransformControl
        public void onError(Throwable th) throws Throwable {
            if (!Cfinal.this.f24841else) {
                throw th;
            }
            this.f24847if.doCatch(th);
        }

        @Override // freemarker.template.TransformControl
        public int onStart() throws k52, JspException {
            try {
                int iDoStartTag = this.f24847if.doStartTag();
                if (iDoStartTag != 0) {
                    if (iDoStartTag != 1) {
                        if (iDoStartTag != 2) {
                            if (iDoStartTag != 6) {
                                throw new RuntimeException("Illegal return value " + iDoStartTag + " from " + this.f24847if.getClass().getName() + ".doStartTag()");
                            }
                        } else {
                            if (!Cfinal.this.f24842try) {
                                throw new k52("Can't buffer body since " + this.f24847if.getClass().getName() + " does not implement BodyTag.");
                            }
                            m28978goto();
                            BodyTag bodyTag = this.f24847if;
                            bodyTag.setBodyContent(this);
                            bodyTag.doInitBody();
                        }
                    }
                    return 1;
                }
                m28995strictfp();
                return 0;
            } catch (Exception e) {
                throw Cfinal.this.m28886new(e);
            }
        }

        public String toString() {
            return "TagWriter for " + this.f24847if.getClass().getName() + " wrapping a " + getEnclosingWriter().toString();
        }

        /* renamed from: volatile, reason: not valid java name */
        public Celse m28997volatile() {
            return this.f24846for;
        }
    }

    public Cfinal(String str, Class cls) throws IntrospectionException {
        super(str, cls);
        boolean zIsAssignableFrom = IterationTag.class.isAssignableFrom(cls);
        this.f24840case = zIsAssignableFrom;
        this.f24842try = zIsAssignableFrom && BodyTag.class.isAssignableFrom(cls);
        this.f24841else = TryCatchFinally.class.isAssignableFrom(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [freemarker.ext.jsp.catch] */
    /* JADX WARN: Type inference failed for: r8v0, types: [freemarker.ext.jsp.break, freemarker.ext.jsp.final] */
    @Override // freemarker.template.TemplateTransformModel
    public Writer getWriter(Writer writer, Map map) throws k52 {
        Writer writer2;
        boolean z;
        try {
            Tag tag = (Tag) m28884do();
            Celse celseM28915do = Cclass.m28915do();
            tag.setParent((Tag) celseM28915do.m28949static(Tag.class));
            tag.setPageContext(celseM28915do);
            m28885for(tag, map, celseM28915do.m28939goto());
            if (!(writer instanceof JspWriter)) {
                ?? ccatch = new Ccatch(writer);
                celseM28915do.m28946private((JspWriter) ccatch);
                writer2 = ccatch;
                z = true;
            } else {
                if (writer != celseM28915do.mo28953this()) {
                    throw new k52("out != pageContext.getOut(). Out is " + writer + " pageContext.getOut() is " + celseM28915do.mo28953this());
                }
                writer2 = writer;
                z = false;
            }
            JspWriter cif = new Cif(writer2, tag, celseM28915do, z);
            celseM28915do.m28945package(tag);
            celseM28915do.m28946private(cif);
            return cif;
        } catch (Exception e) {
            throw m28886new(e);
        }
    }
}
