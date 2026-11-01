package android.support.v4;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class zl1 {
    /* renamed from: case, reason: not valid java name */
    public static boolean m10239case(RecyclerView recyclerView, View view) {
        try {
            int childCount = recyclerView.getChildCount();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            recyclerView.getLocationOnScreen(iArr);
            int height = iArr[1] + (recyclerView.getHeight() / 2);
            if (childCount <= 0) {
                return false;
            }
            view.getLocationOnScreen(iArr2);
            if (iArr2[1] <= height) {
                return iArr2[1] + view.getHeight() >= height;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static View m10240do(RecyclerView recyclerView) {
        try {
            int childCount = recyclerView.getChildCount();
            if (childCount <= 0) {
                return null;
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (m10244try(recyclerView, childAt)) {
                    return childAt;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static View m10241for(RecyclerView recyclerView) {
        try {
            int childCount = recyclerView.getChildCount();
            if (childCount <= 0) {
                return null;
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (m10239case(recyclerView, childAt)) {
                    return childAt;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m10242if(RecyclerView recyclerView) {
        try {
            int childCount = recyclerView.getChildCount();
            if (childCount > 0) {
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    if (m10244try(recyclerView, childAt)) {
                        return recyclerView.getChildAdapterPosition(childAt);
                    }
                }
            }
            return childCount;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int m10243new(RecyclerView recyclerView) {
        try {
            int childCount = recyclerView.getChildCount();
            if (childCount > 0) {
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    if (m10239case(recyclerView, childAt)) {
                        return recyclerView.getChildAdapterPosition(childAt);
                    }
                }
            }
            return childCount;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m10244try(RecyclerView recyclerView, View view) {
        try {
            int childCount = recyclerView.getChildCount();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            recyclerView.getLocationOnScreen(iArr);
            int width = iArr[0] + (recyclerView.getWidth() / 2);
            if (childCount > 0) {
                view.getLocationOnScreen(iArr2);
                if (iArr2[0] <= width) {
                    if (iArr2[0] + view.getWidth() >= width) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
