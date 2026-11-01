package android.support.v4;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class mx1 {

    /* renamed from: break, reason: not valid java name */
    private static final int f4075break = 20;

    /* renamed from: catch, reason: not valid java name */
    private static final int f4076catch = 0;

    /* renamed from: class, reason: not valid java name */
    private static final int[] f4077class = new int[3];

    /* renamed from: const, reason: not valid java name */
    private static final float[] f4078const = {0.0f, 0.5f, 1.0f};

    /* renamed from: final, reason: not valid java name */
    private static final int[] f4079final = new int[4];

    /* renamed from: super, reason: not valid java name */
    private static final float[] f4080super = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: this, reason: not valid java name */
    private static final int f4081this = 68;

    /* renamed from: case, reason: not valid java name */
    private int f4082case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Paint f4083do;

    /* renamed from: else, reason: not valid java name */
    private final Path f4084else;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final Paint f4085for;

    /* renamed from: goto, reason: not valid java name */
    private Paint f4086goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final Paint f4087if;

    /* renamed from: new, reason: not valid java name */
    private int f4088new;

    /* renamed from: try, reason: not valid java name */
    private int f4089try;

    public mx1() {
        this(-16777216);
    }

    /* renamed from: do, reason: not valid java name */
    public void m5050do(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i, float f, float f2) {
        boolean z = f2 < 0.0f;
        Path path = this.f4084else;
        if (z) {
            int[] iArr = f4079final;
            iArr[0] = 0;
            iArr[1] = this.f4082case;
            iArr[2] = this.f4089try;
            iArr[3] = this.f4088new;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            int[] iArr2 = f4079final;
            iArr2[0] = 0;
            iArr2[1] = this.f4088new;
            iArr2[2] = this.f4089try;
            iArr2[3] = this.f4082case;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i / fWidth);
        float[] fArr = f4080super;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        this.f4087if.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, f4079final, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f4086goto);
        }
        canvas.drawArc(rectF, f, f2, true, this.f4087if);
        canvas.restore();
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public Paint m5051for() {
        return this.f4083do;
    }

    /* renamed from: if, reason: not valid java name */
    public void m5052if(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int[] iArr = f4077class;
        iArr[0] = this.f4082case;
        iArr[1] = this.f4089try;
        iArr[2] = this.f4088new;
        Paint paint = this.f4085for;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, iArr, f4078const, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f4085for);
        canvas.restore();
    }

    /* renamed from: new, reason: not valid java name */
    public void m5053new(int i) {
        this.f4088new = ColorUtils.setAlphaComponent(i, 68);
        this.f4089try = ColorUtils.setAlphaComponent(i, 20);
        this.f4082case = ColorUtils.setAlphaComponent(i, 0);
        this.f4083do.setColor(this.f4088new);
    }

    public mx1(int i) {
        this.f4084else = new Path();
        this.f4086goto = new Paint();
        this.f4083do = new Paint();
        m5053new(i);
        this.f4086goto.setColor(0);
        Paint paint = new Paint(4);
        this.f4087if = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f4085for = new Paint(paint);
    }
}
