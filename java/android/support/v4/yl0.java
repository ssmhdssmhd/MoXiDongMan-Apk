package android.support.v4;

import android.graphics.PointF;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class yl0 implements Serializable {
    private float centerX;
    private float centerY;
    private int orientation;
    private float scale;

    public yl0(float f, PointF pointF, int i) {
        this.scale = f;
        this.centerX = pointF.x;
        this.centerY = pointF.y;
        this.orientation = i;
    }

    public PointF getCenter() {
        return new PointF(this.centerX, this.centerY);
    }

    public int getOrientation() {
        return this.orientation;
    }

    public float getScale() {
        return this.scale;
    }
}
