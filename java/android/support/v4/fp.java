package android.support.v4;

import java.io.Serializable;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Cthis;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenSource;
import org.antlr.v4.runtime.WritableToken;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
public class fp implements WritableToken, Serializable {
    public static final ob1<TokenSource, CharStream> EMPTY_SOURCE = new ob1<>(null, null);
    public int channel;
    public int charPositionInLine;
    public int index;
    public int line;
    public ob1<TokenSource, CharStream> source;
    public int start;
    public int stop;
    public String text;
    public int type;

    public fp(int i) {
        this.charPositionInLine = -1;
        this.channel = 0;
        this.index = -1;
        this.type = i;
        this.source = EMPTY_SOURCE;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getChannel() {
        return this.channel;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getCharPositionInLine() {
        return this.charPositionInLine;
    }

    @Override // org.antlr.v4.runtime.Token
    public CharStream getInputStream() {
        return this.source.b;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getLine() {
        return this.line;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getStartIndex() {
        return this.start;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getStopIndex() {
        return this.stop;
    }

    @Override // org.antlr.v4.runtime.Token
    public String getText() {
        int i;
        String str = this.text;
        if (str != null) {
            return str;
        }
        CharStream inputStream = getInputStream();
        if (inputStream == null) {
            return null;
        }
        int size = inputStream.size();
        int i2 = this.start;
        return (i2 >= size || (i = this.stop) >= size) ? "<EOF>" : inputStream.getText(rn0.m7059case(i2, i));
    }

    @Override // org.antlr.v4.runtime.Token
    public int getTokenIndex() {
        return this.index;
    }

    @Override // org.antlr.v4.runtime.Token
    public TokenSource getTokenSource() {
        return this.source.a;
    }

    @Override // org.antlr.v4.runtime.Token
    public int getType() {
        return this.type;
    }

    @Override // org.antlr.v4.runtime.WritableToken
    public void setChannel(int i) {
        this.channel = i;
    }

    @Override // org.antlr.v4.runtime.WritableToken
    public void setCharPositionInLine(int i) {
        this.charPositionInLine = i;
    }

    @Override // org.antlr.v4.runtime.WritableToken
    public void setLine(int i) {
        this.line = i;
    }

    public void setStartIndex(int i) {
        this.start = i;
    }

    public void setStopIndex(int i) {
        this.stop = i;
    }

    @Override // org.antlr.v4.runtime.WritableToken
    public void setText(String str) {
        this.text = str;
    }

    @Override // org.antlr.v4.runtime.WritableToken
    public void setTokenIndex(int i) {
        this.index = i;
    }

    @Override // org.antlr.v4.runtime.WritableToken
    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return toString(null);
    }

    public String toString(Cthis cthis) {
        String str;
        if (this.channel > 0) {
            str = ",channel=" + this.channel;
        } else {
            str = "";
        }
        String text = getText();
        String strReplace = text != null ? text.replace("\n", "\\n").replace(Cclass.f28656new, "\\r").replace("\t", "\\t") : "<no text>";
        String strValueOf = String.valueOf(this.type);
        if (cthis != null) {
            strValueOf = cthis.mo2323native().getDisplayName(this.type);
        }
        return "[@" + getTokenIndex() + "," + this.start + ":" + this.stop + "='" + strReplace + "',<" + strValueOf + ">" + str + "," + this.line + ":" + getCharPositionInLine() + "]";
    }

    public fp(ob1<TokenSource, CharStream> ob1Var, int i, int i2, int i3, int i4) {
        this.charPositionInLine = -1;
        this.channel = 0;
        this.index = -1;
        this.source = ob1Var;
        this.type = i;
        this.channel = i2;
        this.start = i3;
        this.stop = i4;
        TokenSource tokenSource = ob1Var.a;
        if (tokenSource != null) {
            this.line = tokenSource.getLine();
            this.charPositionInLine = ob1Var.a.getCharPositionInLine();
        }
    }

    public fp(int i, String str) {
        this.charPositionInLine = -1;
        this.channel = 0;
        this.index = -1;
        this.type = i;
        this.channel = 0;
        this.text = str;
        this.source = EMPTY_SOURCE;
    }

    public fp(Token token) {
        this.charPositionInLine = -1;
        this.channel = 0;
        this.index = -1;
        this.type = token.getType();
        this.line = token.getLine();
        this.index = token.getTokenIndex();
        this.charPositionInLine = token.getCharPositionInLine();
        this.channel = token.getChannel();
        this.start = token.getStartIndex();
        this.stop = token.getStopIndex();
        if (token instanceof fp) {
            fp fpVar = (fp) token;
            this.text = fpVar.text;
            this.source = fpVar.source;
        } else {
            this.text = token.getText();
            this.source = new ob1<>(token.getTokenSource(), token.getInputStream());
        }
    }
}
