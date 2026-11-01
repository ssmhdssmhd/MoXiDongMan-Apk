package kotlin.jvm.internal;

import android.support.v4.m41;
import android.support.v4.yd;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/jvm/internal/if;", "Landroid/support/v4/yd;", "", "hasNext", "", "nextByte", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "if", "[B", "array", "<init>", "([B)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif extends yd {

    /* renamed from: do, reason: not valid java name */
    private int f27887do;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f27888if;

    public Cif(@m41 byte[] array) {
        Csuper.m30700throw(array, "array");
        this.f27888if = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27887do < this.f27888if.length;
    }

    @Override // android.support.v4.yd
    public byte nextByte() {
        try {
            byte[] bArr = this.f27888if;
            int i = this.f27887do;
            this.f27887do = i + 1;
            return bArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f27887do--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
