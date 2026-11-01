package android.support.v4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class ah0 extends xn1 {

    /* renamed from: case, reason: not valid java name */
    private static final Pattern f176case = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public zg0 mo243catch(wn1 wn1Var) throws NumberFormatException {
        Matcher matcher = f176case.matcher(xn1.m9548for(wn1Var));
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(4);
        try {
            double d = Double.parseDouble(matcher.group(1));
            if (d <= 90.0d && d >= -90.0d) {
                double d2 = Double.parseDouble(matcher.group(2));
                if (d2 <= 180.0d && d2 >= -180.0d) {
                    double d3 = 0.0d;
                    if (matcher.group(3) != null) {
                        double d4 = Double.parseDouble(matcher.group(3));
                        if (d4 < 0.0d) {
                            return null;
                        }
                        d3 = d4;
                    }
                    return new zg0(d, d2, d3, strGroup);
                }
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }
}
