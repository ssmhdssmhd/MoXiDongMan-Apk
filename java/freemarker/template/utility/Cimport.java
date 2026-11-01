package freemarker.template.utility;

import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

/* renamed from: freemarker.template.utility.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport implements TemplateTransformModel {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f25219do = "&lt;".toCharArray();

    /* renamed from: if, reason: not valid java name */
    private static final char[] f25221if = "&gt;".toCharArray();

    /* renamed from: for, reason: not valid java name */
    private static final char[] f25220for = "&amp;".toCharArray();

    /* renamed from: new, reason: not valid java name */
    private static final char[] f25222new = "&quot;".toCharArray();

    /* renamed from: try, reason: not valid java name */
    private static final char[] f25223try = "&apos;".toCharArray();

    @Override // freemarker.template.TemplateTransformModel
    public Writer getWriter(Writer writer, Map map) {
        return new Cdo(writer);
    }

    /* renamed from: freemarker.template.utility.import$do, reason: invalid class name */
    public class Cdo extends Writer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Writer f25224do;

        public Cdo(Writer writer) {
            this.f25224do = writer;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.f25224do.flush();
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            if (i == 34) {
                this.f25224do.write(Cimport.f25222new, 0, 6);
                return;
            }
            if (i == 60) {
                this.f25224do.write(Cimport.f25219do, 0, 4);
                return;
            }
            if (i == 62) {
                this.f25224do.write(Cimport.f25221if, 0, 4);
                return;
            }
            if (i == 38) {
                this.f25224do.write(Cimport.f25220for, 0, 5);
            } else if (i != 39) {
                this.f25224do.write(i);
            } else {
                this.f25224do.write(Cimport.f25223try, 0, 6);
            }
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            int i3 = i2 + i;
            int i4 = i;
            while (i < i3) {
                char c = cArr[i];
                if (c == '\"') {
                    this.f25224do.write(cArr, i4, i - i4);
                    this.f25224do.write(Cimport.f25222new, 0, 6);
                } else if (c == '<') {
                    this.f25224do.write(cArr, i4, i - i4);
                    this.f25224do.write(Cimport.f25219do, 0, 4);
                } else if (c == '>') {
                    this.f25224do.write(cArr, i4, i - i4);
                    this.f25224do.write(Cimport.f25221if, 0, 4);
                } else if (c == '&') {
                    this.f25224do.write(cArr, i4, i - i4);
                    this.f25224do.write(Cimport.f25220for, 0, 5);
                } else if (c != '\'') {
                    i++;
                } else {
                    this.f25224do.write(cArr, i4, i - i4);
                    this.f25224do.write(Cimport.f25223try, 0, 6);
                }
                i4 = i + 1;
                i++;
            }
            int i5 = i3 - i4;
            if (i5 > 0) {
                this.f25224do.write(cArr, i4, i5);
            }
        }
    }
}
