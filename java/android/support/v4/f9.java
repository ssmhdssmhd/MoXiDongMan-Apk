package android.support.v4;

import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Ccase;

/* loaded from: classes.dex */
public class f9 extends e30<BitmapDrawable> implements Initializable {

    /* renamed from: if, reason: not valid java name */
    private final BitmapPool f1714if;

    public f9(BitmapDrawable bitmapDrawable, BitmapPool bitmapPool) {
        super(bitmapDrawable);
        this.f1714if = bitmapPool;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<BitmapDrawable> getResourceClass() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return Ccase.m12047goto(((BitmapDrawable) this.f1241do).getBitmap());
    }

    @Override // android.support.v4.e30, com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        ((BitmapDrawable) this.f1241do).getBitmap().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
        this.f1714if.put(((BitmapDrawable) this.f1241do).getBitmap());
    }
}
