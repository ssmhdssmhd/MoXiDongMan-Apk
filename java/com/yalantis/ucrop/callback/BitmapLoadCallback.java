package com.yalantis.ucrop.callback;

import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.a90;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public interface BitmapLoadCallback {
    void onBitmapLoaded(@NonNull Bitmap bitmap, @NonNull a90 a90Var, @NonNull Uri uri, @Nullable Uri uri2);

    void onFailure(@NonNull Exception exc);
}
