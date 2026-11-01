package android.support.v4;

import freemarker.core._Java6;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

/* loaded from: classes.dex */
public final class kl2 implements _Java6 {

    /* renamed from: do, reason: not valid java name */
    public static final _Java6 f3418do = new kl2();

    private kl2() {
    }

    @Override // freemarker.core._Java6
    public void setExponentSeparator(DecimalFormatSymbols decimalFormatSymbols, String str) {
        decimalFormatSymbols.setExponentSeparator(str);
    }

    @Override // freemarker.core._Java6
    public void setRoundingMode(DecimalFormat decimalFormat, RoundingMode roundingMode) {
        decimalFormat.setRoundingMode(roundingMode);
    }
}
