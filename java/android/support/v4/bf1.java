package android.support.v4;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class bf1 {
    private bf1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m528do(ByteBuffer byteBuffer) {
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("byteBuffer must be a direct ByteBuffer.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m529if(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            throw new IllegalArgumentException("ByteBuffer is already full.");
        }
    }
}
