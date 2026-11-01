package android.support.v4;

/* loaded from: classes3.dex */
public class sc2 extends RuntimeException {
    private final Class fClass;

    public sc2(Class cls) {
        super("Unsupported number class: " + cls.getName());
        this.fClass = cls;
    }

    public Class getUnsupportedClass() {
        return this.fClass;
    }
}
