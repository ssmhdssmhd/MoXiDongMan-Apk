package freemarker.template.utility;

import android.support.v4.k52;
import android.support.v4.wk;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

/* renamed from: freemarker.template.utility.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal implements TemplateTransformModel {

    /* renamed from: for, reason: not valid java name */
    private static final String f25186for = "single_line";

    /* renamed from: if, reason: not valid java name */
    private static final String f25187if = "buffer_size";

    /* renamed from: new, reason: not valid java name */
    public static final Cfinal f25188new = new Cfinal();

    /* renamed from: do, reason: not valid java name */
    private int f25189do;

    /* renamed from: freemarker.template.utility.final$do, reason: invalid class name */
    public static class Cdo extends Writer {

        /* renamed from: break, reason: not valid java name */
        private static final int f25190break = 2;

        /* renamed from: catch, reason: not valid java name */
        private static final int f25191catch = 3;

        /* renamed from: class, reason: not valid java name */
        private static final int f25192class = 4;

        /* renamed from: const, reason: not valid java name */
        private static final int f25193const = 5;

        /* renamed from: else, reason: not valid java name */
        private static final int f25194else = 2;

        /* renamed from: final, reason: not valid java name */
        private static final int f25195final = 6;

        /* renamed from: goto, reason: not valid java name */
        private static final int f25196goto = 0;

        /* renamed from: this, reason: not valid java name */
        private static final int f25197this = 1;

        /* renamed from: do, reason: not valid java name */
        private final Writer f25199do;

        /* renamed from: for, reason: not valid java name */
        private final boolean f25200for;

        /* renamed from: if, reason: not valid java name */
        private final char[] f25201if;

        /* renamed from: new, reason: not valid java name */
        private int f25202new = 0;

        /* renamed from: try, reason: not valid java name */
        private boolean f25203try = true;

        /* renamed from: case, reason: not valid java name */
        private int f25198case = 0;

        public Cdo(Writer writer, int i, boolean z) {
            this.f25199do = writer;
            this.f25200for = z;
            this.f25201if = new char[i];
        }

        /* renamed from: do, reason: not valid java name */
        private void m29264do() throws IOException {
            this.f25199do.write(this.f25201if, 0, this.f25202new);
            this.f25202new = 0;
        }

        /* renamed from: for, reason: not valid java name */
        private void m29265for(char[] cArr, int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                char c = cArr[i];
                if (Character.isWhitespace(c)) {
                    this.f25203try = true;
                    m29266if(c);
                } else if (this.f25203try) {
                    this.f25203try = false;
                    m29267new();
                    char[] cArr2 = this.f25201if;
                    int i4 = this.f25202new;
                    this.f25202new = i4 + 1;
                    cArr2[i4] = c;
                } else {
                    char[] cArr3 = this.f25201if;
                    int i5 = this.f25202new;
                    this.f25202new = i5 + 1;
                    cArr3[i5] = c;
                }
                i++;
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m29266if(char c) {
            int i = this.f25198case;
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                if (c == '\n') {
                    this.f25198case = 5;
                    return;
                } else {
                    this.f25198case = 4;
                    return;
                }
            }
            if (c == '\r') {
                this.f25198case = 3;
            } else if (c == '\n') {
                this.f25198case = 6;
            }
        }

        /* renamed from: new, reason: not valid java name */
        private void m29267new() {
            switch (this.f25198case) {
                case 1:
                case 2:
                    char[] cArr = this.f25201if;
                    int i = this.f25202new;
                    this.f25202new = i + 1;
                    cArr[i] = ' ';
                    break;
                case 3:
                case 4:
                    char[] cArr2 = this.f25201if;
                    int i2 = this.f25202new;
                    this.f25202new = i2 + 1;
                    cArr2[i2] = wk.f7547for;
                    break;
                case 5:
                    char[] cArr3 = this.f25201if;
                    int i3 = this.f25202new;
                    this.f25202new = i3 + 1;
                    cArr3[i3] = wk.f7547for;
                case 6:
                    char[] cArr4 = this.f25201if;
                    int i4 = this.f25202new;
                    this.f25202new = i4 + 1;
                    cArr4[i4] = '\n';
                    break;
            }
            this.f25198case = this.f25200for ? 1 : 2;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            m29264do();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            m29264do();
            this.f25199do.flush();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            while (true) {
                int length = (this.f25201if.length - this.f25202new) - 2;
                if (length >= i2) {
                    m29265for(cArr, i, i2);
                    return;
                } else if (length <= 0) {
                    m29264do();
                } else {
                    m29265for(cArr, i, length);
                    m29264do();
                    i += length;
                    i2 -= length;
                }
            }
        }
    }

    public Cfinal() {
        this(2048);
    }

    @Override // freemarker.template.TemplateTransformModel
    public Writer getWriter(Writer writer, Map map) throws k52 {
        int iIntValue = this.f25189do;
        boolean asBoolean = false;
        if (map != null) {
            try {
                TemplateNumberModel templateNumberModel = (TemplateNumberModel) map.get(f25187if);
                if (templateNumberModel != null) {
                    iIntValue = templateNumberModel.getAsNumber().intValue();
                }
                try {
                    TemplateBooleanModel templateBooleanModel = (TemplateBooleanModel) map.get(f25186for);
                    if (templateBooleanModel != null) {
                        asBoolean = templateBooleanModel.getAsBoolean();
                    }
                } catch (ClassCastException unused) {
                    throw new k52("Expecting boolean argument to single_line");
                }
            } catch (ClassCastException unused2) {
                throw new k52("Expecting numerical argument to buffer_size");
            }
        }
        return new Cdo(writer, iIntValue, asBoolean);
    }

    public Cfinal(int i) {
        this.f25189do = i;
    }
}
