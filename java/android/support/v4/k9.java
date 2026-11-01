package android.support.v4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.callback.BitmapLoadCallback;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Objects;

/* loaded from: classes2.dex */
public class k9 extends AsyncTask<Void, Void, Cdo> {

    /* renamed from: else, reason: not valid java name */
    private static final String f3330else = "BitmapWorkerTask";

    /* renamed from: case, reason: not valid java name */
    private final BitmapLoadCallback f3331case;

    /* renamed from: do, reason: not valid java name */
    private final Context f3332do;

    /* renamed from: for, reason: not valid java name */
    private Uri f3333for;

    /* renamed from: if, reason: not valid java name */
    private Uri f3334if;

    /* renamed from: new, reason: not valid java name */
    private final int f3335new;

    /* renamed from: try, reason: not valid java name */
    private final int f3336try;

    public k9(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i, int i2, BitmapLoadCallback bitmapLoadCallback) {
        this.f3332do = context;
        this.f3334if = uri;
        this.f3333for = uri2;
        this.f3335new = i;
        this.f3336try = i2;
        this.f3331case = bitmapLoadCallback;
    }

    /* renamed from: case, reason: not valid java name */
    private void m4288case() throws IOException, NullPointerException {
        String string = this.f3334if.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Uri scheme: ");
        sb.append(string);
        if (string.startsWith("http") || string.startsWith("https")) {
            try {
                m4290for(this.f3334if, this.f3333for);
            } catch (IOException | NullPointerException e) {
                throw e;
            }
        } else {
            if (Build.VERSION.SDK_INT >= 29) {
                try {
                    v9.m8800if(v9.m8799do(this.f3332do, this.f3334if), this.f3333for.getPath());
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            String strM4291new = m4291new();
            if (!TextUtils.isEmpty(strM4291new) && new File(strM4291new).exists()) {
                this.f3334if = Uri.fromFile(new File(strM4291new));
                return;
            }
            try {
                m4289do(this.f3334if, this.f3333for);
            } catch (IOException | NullPointerException e3) {
                throw e3;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m4289do(@NonNull Uri uri, @Nullable Uri uri2) throws Throwable {
        InputStream inputStreamOpenInputStream;
        FileOutputStream fileOutputStream;
        Objects.requireNonNull(uri2, "Output Uri is null - cannot copy image");
        FileOutputStream fileOutputStream2 = null;
        try {
            inputStreamOpenInputStream = this.f3332do.getContentResolver().openInputStream(uri);
            try {
                fileOutputStream = new FileOutputStream(new File(uri2.getPath()));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenInputStream = null;
        }
        try {
            if (inputStreamOpenInputStream == null) {
                throw new NullPointerException("InputStream for given input Uri is null");
            }
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpenInputStream.read(bArr);
                if (i <= 0) {
                    l9.m4614for(fileOutputStream);
                    l9.m4614for(inputStreamOpenInputStream);
                    this.f3334if = this.f3333for;
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            l9.m4614for(fileOutputStream2);
            l9.m4614for(inputStreamOpenInputStream);
            this.f3334if = this.f3333for;
            throw th;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m4290for(@NonNull Uri uri, @Nullable Uri uri2) throws IOException, NullPointerException {
        Objects.requireNonNull(uri2, "Output Uri is null - cannot download image");
        try {
            URL url = new URL(uri.toString());
            byte[] bArr = new byte[1024];
            BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
            OutputStream outputStreamOpenOutputStream = this.f3332do.getContentResolver().openOutputStream(uri2);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStreamOpenOutputStream);
            while (true) {
                int i = bufferedInputStream.read(bArr);
                if (i <= -1) {
                    break;
                } else {
                    bufferedOutputStream.write(bArr, 0, i);
                }
            }
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            bufferedInputStream.close();
            outputStreamOpenOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f3334if = this.f3333for;
    }

    /* renamed from: new, reason: not valid java name */
    private String m4291new() {
        if (ContextCompat.checkSelfPermission(this.f3332do, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return com.yalantis.ucrop.util.Cdo.m27503try(this.f3332do, this.f3334if);
        }
        return null;
    }

    @Override // android.os.AsyncTask
    @NonNull
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cdo doInBackground(Void... voidArr) throws IOException {
        if (this.f3334if == null) {
            return new Cdo(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            m4288case();
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.f3332do.getContentResolver().openFileDescriptor(this.f3334if, "r");
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    return new Cdo(new NullPointerException("ParcelFileDescriptor was null for given Uri: [" + this.f3334if + "]"));
                }
                FileDescriptor fileDescriptor = parcelFileDescriptorOpenFileDescriptor.getFileDescriptor();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                if (options.outWidth == -1 || options.outHeight == -1) {
                    return new Cdo(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.f3334if + "]"));
                }
                options.inSampleSize = l9.m4612do(options, this.f3335new, this.f3336try);
                boolean z = false;
                options.inJustDecodeBounds = false;
                Bitmap bitmapDecodeFileDescriptor = null;
                while (!z) {
                    try {
                        bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                        z = true;
                    } catch (OutOfMemoryError unused) {
                        options.inSampleSize *= 2;
                    }
                }
                if (bitmapDecodeFileDescriptor == null) {
                    return new Cdo(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.f3334if + "]"));
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    l9.m4614for(parcelFileDescriptorOpenFileDescriptor);
                }
                int iM4613else = l9.m4613else(this.f3332do, this.f3334if);
                int iM4618try = l9.m4618try(iM4613else);
                int iM4611case = l9.m4611case(iM4613else);
                a90 a90Var = new a90(iM4613else, iM4618try, iM4611case);
                Matrix matrix = new Matrix();
                if (iM4618try != 0) {
                    matrix.preRotate(iM4618try);
                }
                if (iM4611case != 1) {
                    matrix.postScale(iM4611case, 1.0f);
                }
                return !matrix.isIdentity() ? new Cdo(l9.m4615goto(bitmapDecodeFileDescriptor, matrix), a90Var) : new Cdo(bitmapDecodeFileDescriptor, a90Var);
            } catch (FileNotFoundException e) {
                return new Cdo(e);
            }
        } catch (IOException | NullPointerException e2) {
            return new Cdo(e2);
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onPostExecute(@NonNull Cdo cdo) {
        Exception exc = cdo.f3338for;
        if (exc != null) {
            this.f3331case.onFailure(exc);
            return;
        }
        BitmapLoadCallback bitmapLoadCallback = this.f3331case;
        Bitmap bitmap = cdo.f3337do;
        a90 a90Var = cdo.f3339if;
        Uri uri = this.f3334if;
        Uri uri2 = this.f3333for;
        if (uri2 == null) {
            uri2 = null;
        }
        bitmapLoadCallback.onBitmapLoaded(bitmap, a90Var, uri, uri2);
    }

    /* renamed from: android.support.v4.k9$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public Bitmap f3337do;

        /* renamed from: for, reason: not valid java name */
        public Exception f3338for;

        /* renamed from: if, reason: not valid java name */
        public a90 f3339if;

        public Cdo(@NonNull Bitmap bitmap, @NonNull a90 a90Var) {
            this.f3337do = bitmap;
            this.f3339if = a90Var;
        }

        public Cdo(@NonNull Exception exc) {
            this.f3338for = exc;
        }
    }
}
