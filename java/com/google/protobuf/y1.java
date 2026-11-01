package com.google.protobuf;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class y1 {
    private y1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static ByteString m21638do(ByteBuffer byteBuffer) {
        return ByteString.wrap(byteBuffer);
    }

    /* renamed from: for, reason: not valid java name */
    public static ByteString m21639for(byte[] bArr, int i, int i2) {
        return ByteString.wrap(bArr, i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public static ByteString m21640if(byte[] bArr) {
        return ByteString.wrap(bArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m21641new(ByteString byteString, Cthrow cthrow) throws IOException {
        byteString.writeTo(cthrow);
    }
}
