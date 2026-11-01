package android.support.v4;

import java.util.List;
import java.util.Objects;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenFactory;
import org.antlr.v4.runtime.TokenSource;

/* loaded from: classes3.dex */
public class jt0 implements TokenSource {

    /* renamed from: do, reason: not valid java name */
    public final List<? extends Token> f3216do;

    /* renamed from: for, reason: not valid java name */
    public int f3217for;

    /* renamed from: if, reason: not valid java name */
    private final String f3218if;

    /* renamed from: new, reason: not valid java name */
    public Token f3219new;

    /* renamed from: try, reason: not valid java name */
    private TokenFactory<?> f3220try;

    public jt0(List<? extends Token> list) {
        this(list, null);
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public int getCharPositionInLine() {
        int iLastIndexOf;
        if (this.f3217for < this.f3216do.size()) {
            return this.f3216do.get(this.f3217for).getCharPositionInLine();
        }
        Token token = this.f3219new;
        if (token != null) {
            return token.getCharPositionInLine();
        }
        if (this.f3216do.size() <= 0) {
            return 0;
        }
        Token token2 = this.f3216do.get(r0.size() - 1);
        String text = token2.getText();
        return (text == null || (iLastIndexOf = text.lastIndexOf(10)) < 0) ? ((token2.getCharPositionInLine() + token2.getStopIndex()) - token2.getStartIndex()) + 1 : (text.length() - iLastIndexOf) - 1;
    }

    @Override // org.antlr.v4.runtime.TokenSource
    /* renamed from: getInputStream */
    public CharStream mo3558goto() {
        if (this.f3217for < this.f3216do.size()) {
            return this.f3216do.get(this.f3217for).getInputStream();
        }
        Token token = this.f3219new;
        if (token != null) {
            return token.getInputStream();
        }
        if (this.f3216do.size() <= 0) {
            return null;
        }
        return this.f3216do.get(r0.size() - 1).getInputStream();
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public int getLine() {
        if (this.f3217for < this.f3216do.size()) {
            return this.f3216do.get(this.f3217for).getLine();
        }
        Token token = this.f3219new;
        if (token != null) {
            return token.getLine();
        }
        int line = 1;
        if (this.f3216do.size() > 0) {
            List<? extends Token> list = this.f3216do;
            Token token2 = list.get(list.size() - 1);
            line = token2.getLine();
            String text = token2.getText();
            if (text != null) {
                for (int i = 0; i < text.length(); i++) {
                    if (text.charAt(i) == '\n') {
                        line++;
                    }
                }
            }
        }
        return line;
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public String getSourceName() {
        String str = this.f3218if;
        if (str != null) {
            return str;
        }
        CharStream charStreamMo3558goto = mo3558goto();
        return charStreamMo3558goto != null ? charStreamMo3558goto.getSourceName() : "List";
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public TokenFactory<?> getTokenFactory() {
        return this.f3220try;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    @Override // org.antlr.v4.runtime.TokenSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Token nextToken() {
        if (this.f3217for < this.f3216do.size()) {
            Token token = this.f3216do.get(this.f3217for);
            if (this.f3217for == this.f3216do.size() - 1 && token.getType() == -1) {
                this.f3219new = token;
            }
            this.f3217for++;
            return token;
        }
        if (this.f3219new == null) {
            if (this.f3216do.size() > 0) {
                int stopIndex = this.f3216do.get(r0.size() - 1).getStopIndex();
                int i = stopIndex != -1 ? stopIndex + 1 : -1;
                this.f3219new = this.f3220try.create(new ob1<>(this, mo3558goto()), -1, "EOF", 0, i, Math.max(-1, i - 1), getLine(), getCharPositionInLine());
            }
        }
        return this.f3219new;
    }

    @Override // org.antlr.v4.runtime.TokenSource
    public void setTokenFactory(TokenFactory<?> tokenFactory) {
        this.f3220try = tokenFactory;
    }

    public jt0(List<? extends Token> list, String str) {
        this.f3220try = gp.f2187if;
        Objects.requireNonNull(list, "tokens cannot be null");
        this.f3216do = list;
        this.f3218if = str;
    }
}
