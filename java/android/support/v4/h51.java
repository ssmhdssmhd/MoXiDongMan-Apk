package android.support.v4;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;

/* loaded from: classes3.dex */
public class h51 extends rk {

    /* renamed from: do, reason: not valid java name */
    private final EnumSet<Cdo> f2314do;

    /* renamed from: android.support.v4.h51$do, reason: invalid class name */
    public enum Cdo {
        semiColonRequired,
        semiColonOptional,
        errorIfNoSemiColon
    }

    public h51(Cdo... cdoArr) {
        if (cdoArr.length > 0) {
            this.f2314do = EnumSet.copyOf((Collection) Arrays.asList(cdoArr));
        } else {
            this.f2314do = EnumSet.copyOf((Collection) Arrays.asList(Cdo.semiColonRequired));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m2949case(Cdo cdo) {
        EnumSet<Cdo> enumSet = this.f2314do;
        if (enumSet == null) {
            return false;
        }
        return enumSet.contains(cdo);
    }

    @Override // android.support.v4.rk
    /* renamed from: if */
    public int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException {
        int i2;
        int length = charSequence.length();
        if (charSequence.charAt(i) == '&' && i < length - 2 && charSequence.charAt(i + 1) == '#') {
            int i3 = i + 2;
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt == 'x' || cCharAt == 'X') {
                i3++;
                if (i3 == length) {
                    return 0;
                }
                i2 = 1;
            } else {
                i2 = 0;
            }
            int i4 = i3;
            while (i4 < length && ((charSequence.charAt(i4) >= '0' && charSequence.charAt(i4) <= '9') || ((charSequence.charAt(i4) >= 'a' && charSequence.charAt(i4) <= 'f') || (charSequence.charAt(i4) >= 'A' && charSequence.charAt(i4) <= 'F')))) {
                i4++;
            }
            int i5 = (i4 == length || charSequence.charAt(i4) != ';') ? 0 : 1;
            if (i5 == 0) {
                if (m2949case(Cdo.semiColonRequired)) {
                    return 0;
                }
                if (m2949case(Cdo.errorIfNoSemiColon)) {
                    throw new IllegalArgumentException("Semi-colon required at end of numeric entity");
                }
            }
            try {
                int i6 = i2 != 0 ? Integer.parseInt(charSequence.subSequence(i3, i4).toString(), 16) : Integer.parseInt(charSequence.subSequence(i3, i4).toString(), 10);
                if (i6 > 65535) {
                    char[] chars = Character.toChars(i6);
                    writer.write(chars[0]);
                    writer.write(chars[1]);
                } else {
                    writer.write(i6);
                }
                return ((i4 + 2) - i3) + i2 + i5;
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }
}
