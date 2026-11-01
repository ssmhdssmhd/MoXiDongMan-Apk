package android.support.v4;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Cfor;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.Cdo;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class fh0 implements ResourceEncoder<GifDrawable> {

    /* renamed from: do, reason: not valid java name */
    private static final String f1793do = "GifEncoder";

    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean encode(@NonNull Resource<GifDrawable> resource, @NonNull File file, @NonNull f81 f81Var) throws Throwable {
        try {
            Cdo.m12067try(resource.get().m11802if(), file);
            return true;
        } catch (IOException unused) {
            Log.isLoggable(f1793do, 5);
            return false;
        }
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public Cfor getEncodeStrategy(@NonNull f81 f81Var) {
        return Cfor.SOURCE;
    }
}
