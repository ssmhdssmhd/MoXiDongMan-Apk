package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.data.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.data.mediastore.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements DataFetcher<InputStream> {

    /* renamed from: new, reason: not valid java name */
    private static final String f9525new = "MediaStoreThumbFetcher";

    /* renamed from: do, reason: not valid java name */
    private final Uri f9526do;

    /* renamed from: for, reason: not valid java name */
    private InputStream f9527for;

    /* renamed from: if, reason: not valid java name */
    private final Cfor f9528if;

    /* renamed from: com.bumptech.glide.load.data.mediastore.if$do, reason: invalid class name */
    public static class Cdo implements ThumbnailQuery {

        /* renamed from: for, reason: not valid java name */
        private static final String f9529for = "kind = 1 AND image_id = ?";

        /* renamed from: if, reason: not valid java name */
        private static final String[] f9530if = {"_data"};

        /* renamed from: do, reason: not valid java name */
        private final ContentResolver f9531do;

        public Cdo(ContentResolver contentResolver) {
            this.f9531do = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public Cursor query(Uri uri) {
            return this.f9531do.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f9530if, f9529for, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* renamed from: com.bumptech.glide.load.data.mediastore.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0024if implements ThumbnailQuery {

        /* renamed from: for, reason: not valid java name */
        private static final String f9532for = "kind = 1 AND video_id = ?";

        /* renamed from: if, reason: not valid java name */
        private static final String[] f9533if = {"_data"};

        /* renamed from: do, reason: not valid java name */
        private final ContentResolver f9534do;

        public C0024if(ContentResolver contentResolver) {
            this.f9534do = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public Cursor query(Uri uri) {
            return this.f9534do.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f9533if, f9532for, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public Cif(Uri uri, Cfor cfor) {
        this.f9526do = uri;
        this.f9528if = cfor;
    }

    /* renamed from: do, reason: not valid java name */
    private static Cif m11304do(Context context, Uri uri, ThumbnailQuery thumbnailQuery) {
        return new Cif(uri, new Cfor(Glide.m11040new(context).m11052const().m11078else(), thumbnailQuery, Glide.m11040new(context).m11051case(), context.getContentResolver()));
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m11305for(Context context, Uri uri) {
        return m11304do(context, uri, new C0024if(context.getContentResolver()));
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m11306if(Context context, Uri uri) {
        return m11304do(context, uri, new Cdo(context.getContentResolver()));
    }

    /* renamed from: new, reason: not valid java name */
    private InputStream m11307new() throws Throwable {
        InputStream inputStreamM11303new = this.f9528if.m11303new(this.f9526do);
        int iM11302do = inputStreamM11303new != null ? this.f9528if.m11302do(this.f9526do) : -1;
        return iM11302do != -1 ? new Ctry(inputStreamM11303new, iM11302do) : inputStreamM11303new;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() throws IOException {
        InputStream inputStream = this.f9527for;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public com.bumptech.glide.load.Cdo getDataSource() {
        return com.bumptech.glide.load.Cdo.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull com.bumptech.glide.Ctry ctry, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) throws Throwable {
        try {
            InputStream inputStreamM11307new = m11307new();
            this.f9527for = inputStreamM11307new;
            dataCallback.onDataReady(inputStreamM11307new);
        } catch (FileNotFoundException e) {
            Log.isLoggable(f9525new, 3);
            dataCallback.onLoadFailed(e);
        }
    }
}
