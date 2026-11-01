package freemarker.core;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

/* loaded from: classes.dex */
public interface _Java6 {
    void setExponentSeparator(DecimalFormatSymbols decimalFormatSymbols, String str);

    void setRoundingMode(DecimalFormat decimalFormat, RoundingMode roundingMode);
}
