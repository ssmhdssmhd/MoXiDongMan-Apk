package android.support.v4;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.util.Cdo;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ud implements Encoder<ByteBuffer> {

    /* renamed from: do, reason: not valid java name */
    private static final String f6832do = "ByteBufferEncoder";

    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean encode(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull f81 f81Var) throws Throwable {
        try {
            Cdo.m12067try(byteBuffer, file);
            return true;
        } catch (IOException unused) {
            Log.isLoggable(f6832do, 3);
            return false;
        }
    }
}
