package freemarker.template.utility;

import freemarker.core.d0;
import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;

/* renamed from: freemarker.template.utility.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends PythonInterpreter implements TemplateTransformModel {

    /* renamed from: freemarker.template.utility.goto$do, reason: invalid class name */
    public class Cdo extends Writer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ StringBuilder f25215do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ d0 f25216for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Writer f25217if;

        public Cdo(StringBuilder sb, Writer writer, d0 d0Var) {
            this.f25215do = sb;
            this.f25217if = writer;
            this.f25216for = d0Var;
        }

        /* renamed from: do, reason: not valid java name */
        private void m29269do() {
            synchronized (Cgoto.this) {
                PyObject pyObject = Cgoto.this.systemState.stdout;
                try {
                    Cgoto.this.setOut(this.f25217if);
                    Cgoto.this.set("env", this.f25216for);
                    Cgoto.this.exec(this.f25215do.toString());
                    this.f25215do.setLength(0);
                } finally {
                    Cgoto.this.setOut(pyObject);
                }
            }
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            m29269do();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            m29269do();
            this.f25217if.flush();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            this.f25215do.append(cArr, i, i2);
        }
    }

    @Override // freemarker.template.TemplateTransformModel
    public Writer getWriter(Writer writer, Map map) {
        return new Cdo(new StringBuilder(), writer, d0.w1());
    }
}
