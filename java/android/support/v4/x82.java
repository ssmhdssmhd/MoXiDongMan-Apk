package android.support.v4;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.animation.LinearInterpolator;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class x82 extends Cimport {
    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat("rotationX", 0.0f, 180.0f, 180.0f, 0.0f, 0.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(m22851try(), PropertyValuesHolder.ofFloat("rotationY", 0.0f, 0.0f, 180.0f, 180.0f, 0.0f), propertyValuesHolderOfFloat);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(new LinearInterpolator());
        objectAnimatorOfPropertyValuesHolder.setRepeatCount(-1);
        objectAnimatorOfPropertyValuesHolder.setDuration(2500L);
        objectAnimatorOfPropertyValuesHolder.start();
        arrayList.add(objectAnimatorOfPropertyValuesHolder);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        Path path = new Path();
        path.moveTo(m22845case() / 5, (m22850new() * 4) / 5);
        path.lineTo((m22845case() * 4) / 5, (m22850new() * 4) / 5);
        path.lineTo(m22845case() / 2, m22850new() / 5);
        path.close();
        canvas.drawPath(path, paint);
    }
}
