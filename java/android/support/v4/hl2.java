package android.support.v4;

/* loaded from: classes.dex */
public class hl2 extends al2 {
    public hl2(Object obj) {
        super(obj);
    }

    @Override // android.support.v4.al2
    /* renamed from: do */
    public String mo273do(Object obj) {
        if (!(obj instanceof Number)) {
            return "" + obj;
        }
        long jLongValue = ((Number) obj).longValue();
        long j = jLongValue % 10;
        if (j == 1 && jLongValue % 100 != 11) {
            return jLongValue + "st";
        }
        if (j == 2 && jLongValue % 100 != 12) {
            return jLongValue + "nd";
        }
        if (j != 3 || jLongValue % 100 == 13) {
            return jLongValue + "th";
        }
        return jLongValue + "rd";
    }
}
