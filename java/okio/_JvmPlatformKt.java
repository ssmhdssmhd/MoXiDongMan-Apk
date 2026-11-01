package okio;

import android.support.v4.al;
import android.support.v4.m41;
import android.support.v4.tm0;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0000*\u00020\u0001H\u0000\u001a/\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0080\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\n*\n\u0010\f\"\u00020\u000b2\u00020\u000b*\n\u0010\u000e\"\u00020\r2\u00020\r*\n\u0010\u0010\"\u00020\u000f2\u00020\u000f*\n\u0010\u0012\"\u00020\u00112\u00020\u0011*\n\u0010\u0014\"\u00020\u00132\u00020\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0015"}, d2 = {"", "", "toUtf8String", "asUtf8ToByteArray", "R", "", "lock", "Lkotlin/Function0;", "block", "synchronized", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Ljava/lang/ArrayIndexOutOfBoundsException;", "ArrayIndexOutOfBoundsException", "Ljava/io/Closeable;", "Closeable", "Ljava/io/EOFException;", "EOFException", "Ljava/io/FileNotFoundException;", "FileNotFoundException", "Ljava/io/IOException;", "IOException", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _JvmPlatformKt {
    @m41
    public static final byte[] asUtf8ToByteArray(@m41 String str) {
        Csuper.m30700throw(str, "<this>");
        byte[] bytes = str.getBytes(al.f191do);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static final <R> R m31747synchronized(@m41 Object lock, @m41 Function0<? extends R> block) {
        R rInvoke;
        Csuper.m30700throw(lock, "lock");
        Csuper.m30700throw(block, "block");
        synchronized (lock) {
            try {
                rInvoke = block.invoke();
                tm0.m7996new(1);
            } catch (Throwable th) {
                tm0.m7996new(1);
                tm0.m7994for(1);
                throw th;
            }
        }
        tm0.m7994for(1);
        return rInvoke;
    }

    @m41
    public static final String toUtf8String(@m41 byte[] bArr) {
        Csuper.m30700throw(bArr, "<this>");
        return new String(bArr, al.f191do);
    }
}
