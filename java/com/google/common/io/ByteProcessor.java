package com.google.common.io;

import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import java.io.IOException;

@v10("Implement it normally")
@li0
@o8
/* loaded from: classes2.dex */
public interface ByteProcessor<T> {
    T getResult();

    @lf
    boolean processBytes(byte[] bArr, int i, int i2) throws IOException;
}
