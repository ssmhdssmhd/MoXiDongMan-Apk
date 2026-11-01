package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.data.catch, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccatch extends Cif<InputStream> {
    public Ccatch(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.Cif
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo11275do(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.Cif
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public InputStream mo11277if(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
