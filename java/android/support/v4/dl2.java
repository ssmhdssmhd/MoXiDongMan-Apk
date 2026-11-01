package android.support.v4;

/* loaded from: classes.dex */
public class dl2 extends al2 {
    public dl2(Throwable th) {
        super(th);
    }

    @Override // android.support.v4.al2
    /* renamed from: do */
    public String mo273do(Object obj) {
        String message = ((Throwable) obj).getMessage();
        return (message == null || message.length() == 0) ? "[No exception message]" : message;
    }
}
