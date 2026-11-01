package kotlin.io;

import android.support.v4.g11;
import android.support.v4.z41;
import java.nio.charset.CharsetDecoder;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
/* renamed from: kotlin.io.this, reason: invalid class name */
/* loaded from: classes3.dex */
final /* synthetic */ class Cthis extends g11 {
    public Cthis(Cbreak cbreak) {
        super(cbreak, Cbreak.class, "decoder", "getDecoder()Ljava/nio/charset/CharsetDecoder;", 0);
    }

    @Override // android.support.v4.g11, kotlin.reflect.KProperty0
    @z41
    public Object get() {
        return Cbreak.m30522do((Cbreak) this.receiver);
    }

    @Override // android.support.v4.g11, kotlin.reflect.KMutableProperty0
    public void set(@z41 Object obj) {
        Cbreak.f27832if = (CharsetDecoder) obj;
    }
}
