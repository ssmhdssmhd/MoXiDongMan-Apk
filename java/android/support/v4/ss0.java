package android.support.v4;

import java.util.Locale;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.misc.Cfor;

/* loaded from: classes3.dex */
public class ss0 extends ql1 {
    private final Cthrows deadEndConfigs;
    private final int startIndex;

    public ss0(is0 is0Var, CharStream charStream, int i, Cthrows cthrows) {
        super(is0Var, charStream, null);
        this.startIndex = i;
        this.deadEndConfigs = cthrows;
    }

    public Cthrows getDeadEndConfigs() {
        return this.deadEndConfigs;
    }

    public int getStartIndex() {
        return this.startIndex;
    }

    @Override // java.lang.Throwable
    public String toString() {
        String strM32042if;
        int i = this.startIndex;
        if (i < 0 || i >= getInputStream().size()) {
            strM32042if = "";
        } else {
            CharStream inputStream = getInputStream();
            int i2 = this.startIndex;
            strM32042if = Cfor.m32042if(inputStream.getText(rn0.m7059case(i2, i2)), false);
        }
        return String.format(Locale.getDefault(), "%s('%s')", ss0.class.getSimpleName(), strM32042if);
    }

    @Override // android.support.v4.ql1
    public CharStream getInputStream() {
        return (CharStream) super.getInputStream();
    }
}
