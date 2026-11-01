package com.google.common.hash;

import android.support.v4.fm0;
import android.support.v4.o8;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@fm0
@o8
/* loaded from: classes2.dex */
public interface HashFunction {
    int bits();

    Cclass hashBytes(ByteBuffer byteBuffer);

    Cclass hashBytes(byte[] bArr);

    Cclass hashBytes(byte[] bArr, int i, int i2);

    Cclass hashInt(int i);

    Cclass hashLong(long j);

    <T> Cclass hashObject(T t, Funnel<? super T> funnel);

    Cclass hashString(CharSequence charSequence, Charset charset);

    Cclass hashUnencodedChars(CharSequence charSequence);

    Hasher newHasher();

    Hasher newHasher(int i);
}
