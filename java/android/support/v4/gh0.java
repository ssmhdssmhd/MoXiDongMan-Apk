package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.resource.gif.GifDrawable;

/* loaded from: classes.dex */
public class gh0 extends e30<GifDrawable> implements Initializable {
    public gh0(GifDrawable gifDrawable) {
        super(gifDrawable);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<GifDrawable> getResourceClass() {
        return GifDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return ((GifDrawable) this.f1241do).m11805this();
    }

    @Override // android.support.v4.e30, com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        ((GifDrawable) this.f1241do).m11803new().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
        ((GifDrawable) this.f1241do).stop();
        ((GifDrawable) this.f1241do).m11799class();
    }
}
