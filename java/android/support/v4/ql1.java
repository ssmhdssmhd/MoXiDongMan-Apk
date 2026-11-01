package android.support.v4;

import org.antlr.v4.runtime.Cthis;
import org.antlr.v4.runtime.IntStream;
import org.antlr.v4.runtime.Token;

/* loaded from: classes3.dex */
public class ql1 extends RuntimeException {
    private final vo1 ctx;
    private final IntStream input;
    private int offendingState;
    private Token offendingToken;
    private final Cthis<?, ?> recognizer;

    public ql1(Cthis<?, ?> cthis, IntStream intStream, qc1 qc1Var) {
        this.offendingState = -1;
        this.recognizer = cthis;
        this.input = intStream;
        this.ctx = qc1Var;
        if (cthis != null) {
            this.offendingState = cthis.m32074final();
        }
    }

    public vo1 getCtx() {
        return this.ctx;
    }

    public sn0 getExpectedTokens() {
        Cthis<?, ?> cthis = this.recognizer;
        if (cthis != null) {
            return cthis.mo2321for().m7603new(this.offendingState, this.ctx);
        }
        return null;
    }

    public IntStream getInputStream() {
        return this.input;
    }

    public int getOffendingState() {
        return this.offendingState;
    }

    public Token getOffendingToken() {
        return this.offendingToken;
    }

    public Cthis<?, ?> getRecognizer() {
        return this.recognizer;
    }

    public final void setOffendingState(int i) {
        this.offendingState = i;
    }

    public final void setOffendingToken(Token token) {
        this.offendingToken = token;
    }

    public ql1(String str, Cthis<?, ?> cthis, IntStream intStream, qc1 qc1Var) {
        super(str);
        this.offendingState = -1;
        this.recognizer = cthis;
        this.input = intStream;
        this.ctx = qc1Var;
        if (cthis != null) {
            this.offendingState = cthis.m32074final();
        }
    }
}
