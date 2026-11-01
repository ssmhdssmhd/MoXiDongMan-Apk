package android.support.v4;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class f82 extends o12 {
    public f82(@NonNull ColorStateList colorStateList) {
        super(colorStateList);
    }

    @Override // android.support.v4.o12
    /* renamed from: do */
    public void mo1690do(Canvas canvas, Paint paint) {
        canvas.drawRect(getBounds(), paint);
    }
}
