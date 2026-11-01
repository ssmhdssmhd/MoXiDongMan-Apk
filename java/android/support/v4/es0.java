package android.support.v4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

/* loaded from: classes.dex */
public final class es0 implements Resource<BitmapDrawable>, Initializable {

    /* renamed from: do, reason: not valid java name */
    private final Resources f1574do;

    /* renamed from: if, reason: not valid java name */
    private final Resource<Bitmap> f1575if;

    private es0(@NonNull Resources resources, @NonNull Resource<Bitmap> resource) {
        this.f1574do = (Resources) cf1.m900new(resources);
        this.f1575if = (Resource) cf1.m900new(resource);
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public static es0 m2000for(Resources resources, BitmapPool bitmapPool, Bitmap bitmap) {
        return (es0) m2002new(resources, n9.m5129if(bitmap, bitmapPool));
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static es0 m2001if(Context context, Bitmap bitmap) {
        return (es0) m2002new(context.getResources(), n9.m5129if(bitmap, Glide.m11040new(context).m11053else()));
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public static Resource<BitmapDrawable> m2002new(@NonNull Resources resources, @Nullable Resource<Bitmap> resource) {
        if (resource == null) {
            return null;
        }
        return new es0(resources, resource);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f1574do, this.f1575if.get());
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<BitmapDrawable> getResourceClass() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f1575if.getSize();
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        Resource<Bitmap> resource = this.f1575if;
        if (resource instanceof Initializable) {
            ((Initializable) resource).initialize();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
        this.f1575if.recycle();
    }
}
