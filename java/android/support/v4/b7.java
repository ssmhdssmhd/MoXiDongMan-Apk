package android.support.v4;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class b7 extends Cimport {
    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do, reason: not valid java name */
    public List<Animator> mo457do() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(m22851try(), PropertyValuesHolder.ofFloat("rotationX", 0.0f, 360.0f));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(new LinearInterpolator());
        objectAnimatorOfPropertyValuesHolder.setRepeatCount(-1);
        objectAnimatorOfPropertyValuesHolder.setDuration(1500L);
        objectAnimatorOfPropertyValuesHolder.start();
        ArrayList arrayList = new ArrayList();
        arrayList.add(objectAnimatorOfPropertyValuesHolder);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for, reason: not valid java name */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = m22845case() / 10;
        float f = 2.0f * fM22845case;
        canvas.drawCircle(m22845case() / 4, f, fM22845case, paint);
        canvas.drawCircle((m22845case() * 3) / 4, f, fM22845case, paint);
        canvas.drawCircle(fM22845case, m22850new() - f, fM22845case, paint);
        canvas.drawCircle(m22845case() / 2, m22850new() - f, fM22845case, paint);
        canvas.drawCircle(m22845case() - fM22845case, m22850new() - f, fM22845case, paint);
    }
}
