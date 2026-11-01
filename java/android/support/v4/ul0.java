package android.support.v4;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class ul0 extends Property<ImageView, Matrix> {

    /* renamed from: do, reason: not valid java name */
    private final Matrix f6924do;

    public ul0() {
        super(Matrix.class, "imageMatrixProperty");
        this.f6924do = new Matrix();
    }

    @Override // android.util.Property
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Matrix get(@NonNull ImageView imageView) {
        this.f6924do.set(imageView.getImageMatrix());
        return this.f6924do;
    }

    @Override // android.util.Property
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
