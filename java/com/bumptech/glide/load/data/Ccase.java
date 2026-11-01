package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.data.case, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccase extends Cif<ParcelFileDescriptor> {
    public Ccase(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.Cif
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo11275do(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<ParcelFileDescriptor> getDataClass() {
        return ParcelFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.data.Cif
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public ParcelFileDescriptor mo11277if(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }
}
