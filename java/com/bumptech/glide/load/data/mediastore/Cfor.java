package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* renamed from: com.bumptech.glide.load.data.mediastore.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor {

    /* renamed from: case, reason: not valid java name */
    private static final String f9518case = "ThumbStreamOpener";

    /* renamed from: else, reason: not valid java name */
    private static final Cdo f9519else = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final Cdo f9520do;

    /* renamed from: for, reason: not valid java name */
    private final ArrayPool f9521for;

    /* renamed from: if, reason: not valid java name */
    private final ThumbnailQuery f9522if;

    /* renamed from: new, reason: not valid java name */
    private final ContentResolver f9523new;

    /* renamed from: try, reason: not valid java name */
    private final List<ImageHeaderParser> f9524try;

    public Cfor(List<ImageHeaderParser> list, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this(list, f9519else, thumbnailQuery, arrayPool, contentResolver);
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m11300for(File file) {
        return this.f9520do.m11297do(file) && 0 < this.f9520do.m11298for(file);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0041  */
    @Nullable
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String m11301if(@NonNull Uri uri) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = this.f9522if.query(uri);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(0);
                            cursorQuery.close();
                            return string;
                        }
                    } catch (SecurityException unused) {
                        if (Log.isLoggable(f9518case, 3)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Failed to query for thumbnail for Uri: ");
                            sb.append(uri);
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (SecurityException unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m11302do(Uri uri) throws IOException {
        InputStream inputStreamOpenInputStream = null;
        try {
            try {
                inputStreamOpenInputStream = this.f9523new.openInputStream(uri);
                int iM11256if = ImageHeaderParserUtils.m11256if(this.f9524try, inputStreamOpenInputStream, this.f9521for);
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return iM11256if;
            } catch (IOException | NullPointerException unused2) {
                if (Log.isLoggable(f9518case, 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to open uri: ");
                    sb.append(uri);
                }
                if (inputStreamOpenInputStream == null) {
                    return -1;
                }
                try {
                    inputStreamOpenInputStream.close();
                    return -1;
                } catch (IOException unused3) {
                    return -1;
                }
            }
        } catch (Throwable th) {
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public InputStream m11303new(Uri uri) throws Throwable {
        String strM11301if = m11301if(uri);
        if (TextUtils.isEmpty(strM11301if)) {
            return null;
        }
        File fileM11299if = this.f9520do.m11299if(strM11301if);
        if (!m11300for(fileM11299if)) {
            return null;
        }
        Uri uriFromFile = Uri.fromFile(fileM11299if);
        try {
            return this.f9523new.openInputStream(uriFromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e));
        }
    }

    public Cfor(List<ImageHeaderParser> list, Cdo cdo, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this.f9520do = cdo;
        this.f9522if = thumbnailQuery;
        this.f9521for = arrayPool;
        this.f9523new = contentResolver;
        this.f9524try = list;
    }
}
