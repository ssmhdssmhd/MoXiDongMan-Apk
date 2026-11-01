package android.support.v4;

import java.io.IOException;
import java.io.Writer;

/* loaded from: classes3.dex */
public abstract class tm extends rk {
    /* renamed from: case */
    public abstract boolean mo2585case(int i, Writer writer) throws IOException;

    @Override // android.support.v4.rk
    /* renamed from: if */
    public final int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException {
        return mo2585case(Character.codePointAt(charSequence, i), writer) ? 1 : 0;
    }
}
