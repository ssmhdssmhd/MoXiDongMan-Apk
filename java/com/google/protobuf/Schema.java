package com.google.protobuf;

import com.google.protobuf.Cthis;
import java.io.IOException;

/* loaded from: classes2.dex */
interface Schema<T> {
    boolean equals(T t, T t2);

    int getSerializedSize(T t);

    int hashCode(T t);

    boolean isInitialized(T t);

    void makeImmutable(T t);

    void mergeFrom(T t, Reader reader, Cimplements cimplements) throws IOException;

    void mergeFrom(T t, T t2);

    void mergeFrom(T t, byte[] bArr, int i, int i2, Cthis.Cif cif) throws IOException;

    T newInstance();

    void writeTo(T t, Writer writer) throws IOException;
}
