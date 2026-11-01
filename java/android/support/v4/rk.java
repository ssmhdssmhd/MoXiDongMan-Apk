package android.support.v4;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class rk {
    /* renamed from: do, reason: not valid java name */
    public static String m7018do(int i) {
        return Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }

    /* renamed from: for, reason: not valid java name */
    public final String m7019for(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(charSequence.length() * 2);
            m7020new(charSequence, stringWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: if */
    public abstract int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException;

    /* renamed from: new, reason: not valid java name */
    public final void m7020new(CharSequence charSequence, Writer writer) throws IOException {
        if (writer == null) {
            throw new IllegalArgumentException("The Writer must not be null");
        }
        if (charSequence == null) {
            return;
        }
        int length = charSequence.length();
        int length2 = 0;
        while (length2 < length) {
            int iMo2056if = mo2056if(charSequence, length2, writer);
            if (iMo2056if == 0) {
                char[] chars = Character.toChars(Character.codePointAt(charSequence, length2));
                writer.write(chars);
                length2 += chars.length;
            } else {
                for (int i = 0; i < iMo2056if; i++) {
                    length2 += Character.charCount(Character.codePointAt(charSequence, length2));
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final rk m7021try(rk... rkVarArr) {
        rk[] rkVarArr2 = new rk[rkVarArr.length + 1];
        rkVarArr2[0] = this;
        System.arraycopy(rkVarArr, 0, rkVarArr2, 1, rkVarArr.length);
        return new y0(rkVarArr2);
    }
}
