package android.support.v4;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.constraintlayout.motion.widget.Key;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class qw1 extends Cimport {
    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(m22851try(), Key.ROTATION, 0.0f, 180.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(600L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.start();
        arrayList.add(objectAnimatorOfFloat);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        canvas.drawArc(new RectF(0.0f, 0.0f, m22845case(), m22850new()), -60.0f, 120.0f, false, paint);
    }
}
