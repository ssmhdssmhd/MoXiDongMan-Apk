package freemarker.template.utility;

import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

/* renamed from: freemarker.template.utility.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse implements TemplateTransformModel {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f25180do = "&lt;".toCharArray();

    /* renamed from: if, reason: not valid java name */
    private static final char[] f25182if = "&gt;".toCharArray();

    /* renamed from: for, reason: not valid java name */
    private static final char[] f25181for = "&amp;".toCharArray();

    /* renamed from: new, reason: not valid java name */
    private static final char[] f25183new = "&quot;".toCharArray();

    @Override // freemarker.template.TemplateTransformModel
    public Writer getWriter(Writer writer, Map map) {
        return new Cdo(writer);
    }

    /* renamed from: freemarker.template.utility.else$do, reason: invalid class name */
    public class Cdo extends Writer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Writer f25184do;

        public Cdo(Writer writer) {
            this.f25184do = writer;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.f25184do.flush();
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            if (i == 34) {
                this.f25184do.write(Celse.f25183new, 0, 6);
                return;
            }
            if (i == 38) {
                this.f25184do.write(Celse.f25181for, 0, 5);
                return;
            }
            if (i == 60) {
                this.f25184do.write(Celse.f25180do, 0, 4);
            } else if (i != 62) {
                this.f25184do.write(i);
            } else {
                this.f25184do.write(Celse.f25182if, 0, 4);
            }
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            int i3 = i2 + i;
            int i4 = i;
            while (i < i3) {
                char c = cArr[i];
                if (c == '\"') {
                    this.f25184do.write(cArr, i4, i - i4);
                    this.f25184do.write(Celse.f25183new, 0, 6);
                } else if (c == '&') {
                    this.f25184do.write(cArr, i4, i - i4);
                    this.f25184do.write(Celse.f25181for, 0, 5);
                } else if (c == '<') {
                    this.f25184do.write(cArr, i4, i - i4);
                    this.f25184do.write(Celse.f25180do, 0, 4);
                } else if (c != '>') {
                    i++;
                } else {
                    this.f25184do.write(cArr, i4, i - i4);
                    this.f25184do.write(Celse.f25182if, 0, 4);
                }
                i4 = i + 1;
                i++;
            }
            int i5 = i3 - i4;
            if (i5 > 0) {
                this.f25184do.write(cArr, i4, i5);
            }
        }
    }
}
