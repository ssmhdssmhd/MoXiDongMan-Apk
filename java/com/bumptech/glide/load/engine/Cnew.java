package com.bumptech.glide.load.engine;

import android.support.v4.f81;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;

/* renamed from: com.bumptech.glide.load.engine.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew<DataType> implements DiskCache.Writer {

    /* renamed from: do, reason: not valid java name */
    private final Encoder<DataType> f9863do;

    /* renamed from: for, reason: not valid java name */
    private final f81 f9864for;

    /* renamed from: if, reason: not valid java name */
    private final DataType f9865if;

    public Cnew(Encoder<DataType> encoder, DataType datatype, f81 f81Var) {
        this.f9863do = encoder;
        this.f9865if = datatype;
        this.f9864for = f81Var;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Writer
    public boolean write(@NonNull File file) {
        return this.f9863do.encode(this.f9865if, file, this.f9864for);
    }
}
