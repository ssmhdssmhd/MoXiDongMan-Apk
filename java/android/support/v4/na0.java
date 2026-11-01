package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.File;

/* loaded from: classes.dex */
public class na0 implements ResourceDecoder<File, File> {
    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<File> decode(@NonNull File file, int i, int i2, @NonNull f81 f81Var) {
        return new ta0(file);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull File file, @NonNull f81 f81Var) {
        return true;
    }
}
