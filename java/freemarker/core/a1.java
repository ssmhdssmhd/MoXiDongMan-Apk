package freemarker.core;

import android.support.v4.dl2;
import android.support.v4.e91;
import android.support.v4.k52;
import android.support.v4.nl2;
import android.support.v4.ql2;
import android.support.v4.ul2;
import android.support.v4.vl2;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.StringReader;
import java.io.Writer;
import java.util.Map;

/* loaded from: classes.dex */
class a1 extends e3 {

    /* renamed from: freemarker.core.a1$do, reason: invalid class name */
    public class Cdo implements TemplateTransformModel {

        /* renamed from: do, reason: not valid java name */
        private final Cstatic f23475do;

        /* renamed from: freemarker.core.a1$do$do, reason: invalid class name and collision with other inner class name */
        public class C0240do extends Writer {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Writer f23477do;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0240do(Object obj, Writer writer) {
                super(obj);
                this.f23477do = writer;
            }

            @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.Writer, java.io.Flushable
            public void flush() throws IOException {
                this.f23477do.flush();
            }

            @Override // java.io.Writer
            public void write(char[] cArr, int i, int i2) throws IOException {
                this.f23477do.write(cArr, i, i2);
            }
        }

        public Cdo(Cstatic cstatic) {
            this.f23475do = cstatic;
        }

        @Override // freemarker.template.TemplateTransformModel
        public Writer getWriter(Writer writer, Map map) throws k52, IOException {
            try {
                d0 d0VarW1 = d0.w1();
                boolean zO3 = d0VarW1.o3(false);
                try {
                    d0VarW1.K2(this.f23475do);
                    return new C0240do(writer, writer);
                } finally {
                    d0VarW1.o3(zO3);
                }
            } catch (Exception e) {
                throw new vl2(e, "Template created with \"?", a1.this.f24115this, "\" has stopped with this error:\n\n", b5.f23525try, new dl2(e), b5.f23520case);
            }
        }
    }

    @Override // freemarker.core.e3
    public TemplateModel s(d0 d0Var) throws TemplateException {
        h0 h0Var;
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        String strMo28045default = "anonymous_interpreted";
        if (templateModelM28055throws instanceof TemplateSequenceModel) {
            h0Var = (h0) new b0(this.f24114goto, new z2(0)).m28069if(this.f24114goto);
            if (((TemplateSequenceModel) templateModelM28055throws).size() > 1) {
                strMo28045default = ((h0) new b0(this.f24114goto, new z2(1)).m28069if(this.f24114goto)).mo28045default(d0Var);
            }
        } else {
            if (!(templateModelM28055throws instanceof TemplateScalarModel)) {
                throw new r4(this.f24114goto, templateModelM28055throws, "sequence or string", new Class[]{TemplateSequenceModel.class, TemplateScalarModel.class}, d0Var);
            }
            h0Var = this.f24114goto;
        }
        String strMo28045default2 = h0Var.mo28045default(d0Var);
        Cstatic cstaticA1 = d0Var.u1().getIncompatibleImprovements().intValue() >= ul2.f6938this ? d0Var.A1() : d0Var.e2();
        try {
            ParserConfiguration parserConfigurationJ1 = cstaticA1.j1();
            e91 outputFormat = parserConfigurationJ1.getOutputFormat();
            e91 e91Var = this.f23683final;
            ParserConfiguration ql2Var = outputFormat != e91Var ? new ql2(parserConfigurationJ1, e91Var, Integer.valueOf(this.f23684super)) : parserConfigurationJ1;
            StringBuilder sb = new StringBuilder();
            sb.append(cstaticA1.h1() != null ? cstaticA1.h1() : "nameless_template");
            sb.append("->");
            sb.append(strMo28045default);
            Cstatic cstatic = new Cstatic(sb.toString(), null, new StringReader(strMo28045default2), cstaticA1.b1(), ql2Var, null);
            cstatic.t0(d0Var.m28268strictfp());
            return new Cdo(cstatic);
        } catch (IOException e) {
            throw new nl2(this, e, d0Var, "Template parsing with \"?", this.f24115this, "\" has failed with this error:\n\n", b5.f23525try, new dl2(e), b5.f23520case, "\n\nThe failed expression:");
        }
    }
}
