package android.support.v4;

/* loaded from: classes3.dex */
public class x72 extends fp {
    private final String label;
    private final String tokenName;

    public x72(String str, int i) {
        this(str, i, null);
    }

    public final String getLabel() {
        return this.label;
    }

    @Override // android.support.v4.fp, org.antlr.v4.runtime.Token
    public String getText() {
        if (this.label == null) {
            return "<" + this.tokenName + ">";
        }
        return "<" + this.label + ":" + this.tokenName + ">";
    }

    public final String getTokenName() {
        return this.tokenName;
    }

    @Override // android.support.v4.fp
    public String toString() {
        return this.tokenName + ":" + this.type;
    }

    public x72(String str, int i, String str2) {
        super(i);
        this.tokenName = str;
        this.label = str2;
    }
}
