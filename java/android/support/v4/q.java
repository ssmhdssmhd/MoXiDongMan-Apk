package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Stack;

/* loaded from: classes2.dex */
public class q {

    /* renamed from: for, reason: not valid java name */
    private static Stack<Activity> f5222for;

    /* renamed from: new, reason: not valid java name */
    private static q f5223new = new q();

    /* renamed from: do, reason: not valid java name */
    private long f5224do = 0;

    /* renamed from: if, reason: not valid java name */
    private Activity f5225if = null;

    private q() {
    }

    /* renamed from: do, reason: not valid java name */
    public static q m6265do() {
        return f5223new;
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m6266for(Context context) {
        Activity activity;
        Activity activity2;
        try {
            activity = (Activity) context;
        } catch (Exception unused) {
            activity = null;
        }
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        boolean z = activity == null || (activity2 = this.f5225if) == null || timeInMillis - this.f5224do >= 150 || activity != activity2;
        this.f5224do = timeInMillis;
        this.f5225if = activity;
        return z;
    }

    /* renamed from: throw, reason: not valid java name */
    private boolean m6267throw(Class<?> cls) {
        Activity activityM6279new = m6279new();
        return activityM6279new != null && activityM6279new.getClass().equals(cls);
    }

    /* renamed from: break, reason: not valid java name */
    public void m6268break(Context context, Class<?> cls, String str, int i) {
        if (m6266for(context)) {
            Intent intent = new Intent(context, cls);
            intent.putExtra(str, i);
            context.startActivity(intent);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m6269case(Class<?> cls) {
        Iterator<Activity> it = f5222for.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (next.getClass().equals(cls)) {
                m6277import(next);
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m6270catch(Context context, Class<?> cls, String str, long j) {
        if (m6266for(context)) {
            Intent intent = new Intent(context, cls);
            intent.putExtra(str, j);
            context.startActivity(intent);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m6271class(Context context, Class<?> cls, String str, String str2) {
        if (m6266for(context)) {
            Intent intent = new Intent(context, cls);
            intent.putExtra(str, str2);
            context.startActivity(intent);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m6272const(Context context, Class<?> cls, String str, boolean z) {
        if (m6266for(context)) {
            Intent intent = new Intent(context, cls);
            intent.putExtra(str, z);
            context.startActivity(intent);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m6273else(Context context, Intent intent) {
        if (m6266for(context)) {
            context.startActivity(intent);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public Stack<Activity> m6274final() {
        return f5222for;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m6275goto(Context context, Class<?> cls) {
        if (m6266for(context)) {
            context.startActivity(new Intent(context, cls));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m6276if(Class<?> cls) {
        while (true) {
            Activity activityM6279new = m6279new();
            if (activityM6279new == null || activityM6279new.getClass().equals(cls)) {
                return;
            } else {
                m6277import(activityM6279new);
            }
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m6277import(Activity activity) {
        if (f5222for == null) {
            f5222for = new Stack<>();
        }
        if (f5222for.isEmpty() || activity == null) {
            return;
        }
        f5222for.remove(activity);
        if (activity.isFinishing()) {
            return;
        }
        activity.finish();
    }

    /* renamed from: native, reason: not valid java name */
    public void m6278native(Class<?> cls) {
        m6288while();
        if (m6267throw(cls)) {
            m6288while();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Activity m6279new() {
        Stack<Activity> stack = f5222for;
        if (stack == null || stack.isEmpty()) {
            return null;
        }
        return f5222for.lastElement();
    }

    /* renamed from: public, reason: not valid java name */
    public void m6280public() {
        while (true) {
            Activity activityM6279new = m6279new();
            if (activityM6279new == null) {
                Process.killProcess(Process.myPid());
                System.exit(0);
                return;
            }
            m6277import(activityM6279new);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m6281return(Class<?> cls) {
        while (true) {
            Activity activityM6279new = m6279new();
            if (activityM6279new == null || activityM6279new.getClass().equals(cls)) {
                return;
            } else {
                m6277import(activityM6279new);
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m6282static() {
        while (true) {
            Activity activityM6279new = m6279new();
            if (activityM6279new == null) {
                return;
            } else {
                m6277import(activityM6279new);
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m6283super(Activity activity) {
        Stack<Activity> stack = f5222for;
        if (stack != null && !stack.isEmpty()) {
            if (f5222for.size() > 1) {
                return true;
            }
            if (f5222for.size() == 1) {
                return !f5222for.contains(activity);
            }
        }
        return false;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m6284switch(Activity activity) {
        if (f5222for == null) {
            f5222for = new Stack<>();
        }
        if (f5222for.contains(activity)) {
            f5222for.remove(activity);
        }
        f5222for.add(activity);
    }

    /* renamed from: this, reason: not valid java name */
    public void m6285this(Context context, Class<?> cls, String str, double d) {
        if (m6266for(context)) {
            Intent intent = new Intent(context, cls);
            intent.putExtra(str, d);
            context.startActivity(intent);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void m6286throws(Activity activity) {
        if (f5222for == null) {
            f5222for = new Stack<>();
        }
        if (f5222for.isEmpty() || activity == null) {
            return;
        }
        f5222for.remove(activity);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m6287try(Activity activity) {
        if (f5222for == null) {
            f5222for = new Stack<>();
        }
        return !f5222for.isEmpty() && f5222for.contains(activity);
    }

    /* renamed from: while, reason: not valid java name */
    public void m6288while() {
        Activity activityPop;
        Stack<Activity> stack = f5222for;
        if (stack == null) {
            f5222for = new Stack<>();
        } else {
            if (stack.isEmpty() || (activityPop = f5222for.pop()) == null || activityPop.isFinishing()) {
                return;
            }
            activityPop.finish();
        }
    }
}
