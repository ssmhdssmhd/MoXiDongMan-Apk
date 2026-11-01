package com.bumptech.glide.load.data;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.data.DataRewinder;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.data.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak implements DataRewinder<ParcelFileDescriptor> {

    /* renamed from: do, reason: not valid java name */
    private final Cif f9499do;

    @RequiresApi(21)
    /* renamed from: com.bumptech.glide.load.data.break$do, reason: invalid class name */
    public static final class Cdo implements DataRewinder.Factory<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public DataRewinder<ParcelFileDescriptor> build(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
            return new Cbreak(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<ParcelFileDescriptor> getDataClass() {
            return ParcelFileDescriptor.class;
        }
    }

    @RequiresApi(21)
    /* renamed from: com.bumptech.glide.load.data.break$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final ParcelFileDescriptor f9500do;

        public Cif(ParcelFileDescriptor parcelFileDescriptor) {
            this.f9500do = parcelFileDescriptor;
        }

        /* renamed from: do, reason: not valid java name */
        public ParcelFileDescriptor m11274do() throws IOException, ErrnoException {
            try {
                Os.lseek(this.f9500do.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return this.f9500do;
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        }
    }

    @RequiresApi(21)
    public Cbreak(ParcelFileDescriptor parcelFileDescriptor) {
        this.f9499do = new Cif(parcelFileDescriptor);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m11271do() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public void cleanup() {
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    @NonNull
    @RequiresApi(21)
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public ParcelFileDescriptor rewindAndGet() throws IOException {
        return this.f9499do.m11274do();
    }
}
