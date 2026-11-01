package android.support.v4;

import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;

/* loaded from: classes3.dex */
public class v31 extends ql1 {
    private final Cthrows deadEndConfigs;
    private final Token startToken;

    public v31(Cgoto cgoto) {
        this(cgoto, cgoto.mo3558goto(), cgoto.d(), cgoto.d(), null, cgoto.f28546break);
    }

    public Cthrows getDeadEndConfigs() {
        return this.deadEndConfigs;
    }

    public Token getStartToken() {
        return this.startToken;
    }

    public v31(Cgoto cgoto, TokenStream tokenStream, Token token, Token token2, Cthrows cthrows, qc1 qc1Var) {
        super(cgoto, tokenStream, qc1Var);
        this.deadEndConfigs = cthrows;
        this.startToken = token;
        setOffendingToken(token2);
    }
}
