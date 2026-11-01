package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0002¨\u0006\r"}, d2 = {"Landroid/support/v4/be;", "Landroid/support/v4/gf1;", "", "", "this", "", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "goto", "break", "size", "<init>", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class be extends gf1<byte[]> {

    /* renamed from: new, reason: not valid java name */
    private final byte[] f418new;

    public be(int i) {
        super(i);
        this.f418new = new byte[i];
    }

    @m41
    /* renamed from: break, reason: not valid java name */
    public final byte[] m521break() {
        return m2660else(this.f418new, new byte[m2658case()]);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m522goto(byte b) {
        byte[] bArr = this.f418new;
        int iM2661if = m2661if();
        m2662try(iM2661if + 1);
        bArr[iM2661if] = b;
    }

    @Override // android.support.v4.gf1
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public int mo507for(@m41 byte[] getSize) {
        Csuper.m30700throw(getSize, "$this$getSize");
        return getSize.length;
    }
}
