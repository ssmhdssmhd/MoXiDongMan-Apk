package android.support.v4;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.Cfor;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Ccase;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class i9 implements ResourceEncoder<Bitmap> {

    /* renamed from: new, reason: not valid java name */
    private static final String f2650new = "BitmapEncoder";

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private final ArrayPool f2651do;

    /* renamed from: if, reason: not valid java name */
    public static final Option<Integer> f2649if = Option.m11261else("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: for, reason: not valid java name */
    public static final Option<Bitmap.CompressFormat> f2648for = Option.m11259case("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    public i9(@NonNull ArrayPool arrayPool) {
        this.f2651do = arrayPool;
    }

    /* renamed from: if, reason: not valid java name */
    private Bitmap.CompressFormat m3307if(Bitmap bitmap, f81 f81Var) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) f81Var.m2196do(f2648for);
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:0|2|40|3|4|41|5|(5:48|6|(2:8|9)(1:10)|11|12)|46|13|24|25|(1:27)|28|29|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0067 A[Catch: all -> 0x00b0, TRY_LEAVE, TryCatch #0 {all -> 0x00b0, blocks: (B:3:0x0021, B:13:0x004d, B:25:0x0061, B:27:0x0067, B:31:0x00ac, B:32:0x00af), top: B:40:0x0021 }] */
    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean encode(@NonNull Resource<Bitmap> resource, @NonNull File file, @NonNull f81 f81Var) {
        FileOutputStream fileOutputStream;
        Bitmap bitmap = resource.get();
        Bitmap.CompressFormat compressFormatM3307if = m3307if(bitmap, f81Var);
        qh0.m6593new("encode: [%dx%d] %s", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), compressFormatM3307if);
        try {
            long jM7613if = sv0.m7613if();
            int iIntValue = ((Integer) f81Var.m2196do(f2649if)).intValue();
            boolean z = false;
            OutputStream cfor = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                cfor = this.f2651do != null ? new Cfor(fileOutputStream, this.f2651do) : fileOutputStream;
                bitmap.compress(compressFormatM3307if, iIntValue, cfor);
                cfor.close();
                z = true;
            } catch (IOException unused2) {
                cfor = fileOutputStream;
                Log.isLoggable(f2650new, 3);
                if (cfor != null) {
                    cfor.close();
                }
                if (Log.isLoggable(f2650new, 2)) {
                }
                return z;
            } catch (Throwable th2) {
                th = th2;
                cfor = fileOutputStream;
                if (cfor != null) {
                    try {
                        cfor.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
            cfor.close();
            if (Log.isLoggable(f2650new, 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Compressed with type: ");
                sb.append(compressFormatM3307if);
                sb.append(" of size ");
                sb.append(Ccase.m12047goto(bitmap));
                sb.append(" in ");
                sb.append(sv0.m7612do(jM7613if));
                sb.append(", options format: ");
                sb.append(f81Var.m2196do(f2648for));
                sb.append(", hasAlpha: ");
                sb.append(bitmap.hasAlpha());
            }
            return z;
        } finally {
            qh0.m6594try();
        }
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public com.bumptech.glide.load.Cfor getEncodeStrategy(@NonNull f81 f81Var) {
        return com.bumptech.glide.load.Cfor.TRANSFORMED;
    }

    @Deprecated
    public i9() {
        this.f2651do = null;
    }
}
