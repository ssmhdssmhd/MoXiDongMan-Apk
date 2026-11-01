package android.support.v4;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes3.dex */
public class o61 extends rk {
    /* renamed from: case, reason: not valid java name */
    private boolean m5493case(char c) {
        return c >= '0' && c <= '7';
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m5494else(char c) {
        return c >= '0' && c <= '3';
    }

    @Override // android.support.v4.rk
    /* renamed from: if */
    public int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException {
        int length = (charSequence.length() - i) - 1;
        StringBuilder sb = new StringBuilder();
        if (charSequence.charAt(i) != '\\' || length <= 0) {
            return 0;
        }
        int i2 = i + 1;
        if (!m5493case(charSequence.charAt(i2))) {
            return 0;
        }
        int i3 = i + 2;
        int i4 = i + 3;
        sb.append(charSequence.charAt(i2));
        if (length > 1 && m5493case(charSequence.charAt(i3))) {
            sb.append(charSequence.charAt(i3));
            if (length > 2 && m5494else(charSequence.charAt(i2)) && m5493case(charSequence.charAt(i4))) {
                sb.append(charSequence.charAt(i4));
            }
        }
        writer.write(Integer.parseInt(sb.toString(), 8));
        return sb.length() + 1;
    }
}
