package android.support.v4;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes3.dex */
public class g51 extends tm {

    /* renamed from: do, reason: not valid java name */
    private final int f2056do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f2057for;

    /* renamed from: if, reason: not valid java name */
    private final int f2058if;

    private g51(int i, int i2, boolean z) {
        this.f2056do = i;
        this.f2058if = i2;
        this.f2057for = z;
    }

    /* renamed from: break, reason: not valid java name */
    public static g51 m2581break(int i, int i2) {
        return new g51(i, i2, false);
    }

    /* renamed from: else, reason: not valid java name */
    public static g51 m2582else(int i) {
        return m2581break(0, i);
    }

    /* renamed from: goto, reason: not valid java name */
    public static g51 m2583goto(int i) {
        return m2581break(i, Integer.MAX_VALUE);
    }

    /* renamed from: this, reason: not valid java name */
    public static g51 m2584this(int i, int i2) {
        return new g51(i, i2, true);
    }

    @Override // android.support.v4.tm
    /* renamed from: case, reason: not valid java name */
    public boolean mo2585case(int i, Writer writer) throws IOException {
        if (this.f2057for) {
            if (i < this.f2056do || i > this.f2058if) {
                return false;
            }
        } else if (i >= this.f2056do && i <= this.f2058if) {
            return false;
        }
        writer.write("&#");
        writer.write(Integer.toString(i, 10));
        writer.write(59);
        return true;
    }

    public g51() {
        this(0, Integer.MAX_VALUE, true);
    }
}
