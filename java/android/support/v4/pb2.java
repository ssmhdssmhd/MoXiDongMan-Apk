package android.support.v4;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes3.dex */
public class pb2 extends tm {

    /* renamed from: do, reason: not valid java name */
    private final int f4889do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f4890for;

    /* renamed from: if, reason: not valid java name */
    private final int f4891if;

    public pb2() {
        this(0, Integer.MAX_VALUE, true);
    }

    /* renamed from: break, reason: not valid java name */
    public static pb2 m5935break(int i, int i2) {
        return new pb2(i, i2, false);
    }

    /* renamed from: else, reason: not valid java name */
    public static pb2 m5936else(int i) {
        return m5935break(0, i);
    }

    /* renamed from: goto, reason: not valid java name */
    public static pb2 m5937goto(int i) {
        return m5935break(i, Integer.MAX_VALUE);
    }

    /* renamed from: this, reason: not valid java name */
    public static pb2 m5938this(int i, int i2) {
        return new pb2(i, i2, true);
    }

    @Override // android.support.v4.tm
    /* renamed from: case */
    public boolean mo2585case(int i, Writer writer) throws IOException {
        if (this.f4890for) {
            if (i < this.f4889do || i > this.f4891if) {
                return false;
            }
        } else if (i >= this.f4889do && i <= this.f4891if) {
            return false;
        }
        if (i > 65535) {
            writer.write(mo3535catch(i));
            return true;
        }
        if (i > 4095) {
            writer.write("\\u" + rk.m7018do(i));
            return true;
        }
        if (i > 255) {
            writer.write("\\u0" + rk.m7018do(i));
            return true;
        }
        if (i > 15) {
            writer.write("\\u00" + rk.m7018do(i));
            return true;
        }
        writer.write("\\u000" + rk.m7018do(i));
        return true;
    }

    /* renamed from: catch */
    public String mo3535catch(int i) {
        return "\\u" + rk.m7018do(i);
    }

    public pb2(int i, int i2, boolean z) {
        this.f4889do = i;
        this.f4891if = i2;
        this.f4890for = z;
    }
}
