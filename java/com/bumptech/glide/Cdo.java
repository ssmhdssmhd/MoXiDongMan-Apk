package com.bumptech.glide;

import android.content.Context;
import android.support.v4.ph0;
import androidx.annotation.NonNull;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.manager.RequestManagerTreeNode;

/* renamed from: com.bumptech.glide.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo implements RequestManagerRetriever.RequestManagerFactory {
    @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
    @NonNull
    public Cgoto build(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
        return new ph0(glide, lifecycle, requestManagerTreeNode, context);
    }
}
