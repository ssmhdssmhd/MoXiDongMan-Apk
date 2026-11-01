package android.support.v4;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenSource;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.WritableToken;

/* loaded from: classes3.dex */
public class kc implements TokenStream {

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ boolean f3352try = false;

    /* renamed from: do, reason: not valid java name */
    public TokenSource f3353do;

    /* renamed from: new, reason: not valid java name */
    public boolean f3356new;

    /* renamed from: if, reason: not valid java name */
    public List<Token> f3355if = new ArrayList(100);

    /* renamed from: for, reason: not valid java name */
    public int f3354for = -1;

    public kc(TokenSource tokenSource) {
        Objects.requireNonNull(tokenSource, "tokenSource cannot be null");
        this.f3353do = tokenSource;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int LA(int i) {
        return LT(i).getType();
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public Token LT(int i) {
        m4363super();
        if (i == 0) {
            return null;
        }
        if (i < 0) {
            return mo3078do(-i);
        }
        int i2 = (this.f3354for + i) - 1;
        m4362return(i2);
        if (i2 < this.f3355if.size()) {
            return this.f3355if.get(i2);
        }
        return this.f3355if.get(r2.size() - 1);
    }

    /* renamed from: break, reason: not valid java name */
    public List<Token> m4349break(int i, int i2) {
        m4363super();
        if (i < 0 || i >= this.f3355if.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            sb.append(" not in 0..");
            sb.append(this.f3355if.size() - 1);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        int i3 = i + 1;
        int iM4365throw = m4365throw(i3, 0);
        if (iM4365throw == -1) {
            iM4365throw = size() - 1;
        }
        return m4366try(i3, iM4365throw, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public List<Token> m4350case(int i, int i2) {
        if (i < 0 || i2 < 0) {
            return null;
        }
        m4363super();
        ArrayList arrayList = new ArrayList();
        if (i2 >= this.f3355if.size()) {
            i2 = this.f3355if.size() - 1;
        }
        while (i <= i2) {
            Token token = this.f3355if.get(i);
            if (token.getType() == -1) {
                break;
            }
            arrayList.add(token);
            i++;
        }
        return arrayList;
    }

    /* renamed from: catch, reason: not valid java name */
    public List<Token> m4351catch() {
        return this.f3355if;
    }

    /* renamed from: class, reason: not valid java name */
    public List<Token> m4352class(int i, int i2) {
        return m4355final(i, i2, null);
    }

    /* renamed from: const, reason: not valid java name */
    public List<Token> m4353const(int i, int i2, int i3) {
        HashSet hashSet = new HashSet(i3);
        hashSet.add(Integer.valueOf(i3));
        return m4355final(i, i2, hashSet);
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void consume() {
        int i = this.f3354for;
        boolean z = false;
        if (i >= 0 && (!this.f3356new ? i < this.f3355if.size() : i < this.f3355if.size() - 1)) {
            z = true;
        }
        if (!z && LA(1) == -1) {
            throw new IllegalStateException("cannot consume EOF");
        }
        if (m4362return(this.f3354for + 1)) {
            this.f3354for = mo3079if(this.f3354for + 1);
        }
    }

    /* renamed from: do */
    public Token mo3078do(int i) {
        int i2 = this.f3354for;
        if (i2 - i < 0) {
            return null;
        }
        return this.f3355if.get(i2 - i);
    }

    /* renamed from: else, reason: not valid java name */
    public List<Token> m4354else(int i) {
        return m4357goto(i, -1);
    }

    /* renamed from: final, reason: not valid java name */
    public List<Token> m4355final(int i, int i2, Set<Integer> set) {
        m4363super();
        if (i < 0 || i2 >= this.f3355if.size() || i2 < 0 || i >= this.f3355if.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append("start ");
            sb.append(i);
            sb.append(" or stop ");
            sb.append(i2);
            sb.append(" not in 0..");
            sb.append(this.f3355if.size() - 1);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i > i2) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (i <= i2) {
            Token token = this.f3355if.get(i);
            if (set == null || set.contains(Integer.valueOf(token.getType()))) {
                arrayList.add(token);
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    /* renamed from: for, reason: not valid java name */
    public int m4356for(int i) {
        if (this.f3356new) {
            return 0;
        }
        for (int i2 = 0; i2 < i; i2++) {
            Token tokenNextToken = this.f3353do.nextToken();
            if (tokenNextToken instanceof WritableToken) {
                ((WritableToken) tokenNextToken).setTokenIndex(this.f3355if.size());
            }
            this.f3355if.add(tokenNextToken);
            if (tokenNextToken.getType() == -1) {
                this.f3356new = true;
                return i2 + 1;
            }
        }
        return i;
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public Token get(int i) {
        if (i >= 0 && i < this.f3355if.size()) {
            return this.f3355if.get(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("token index ");
        sb.append(i);
        sb.append(" out of range 0..");
        sb.append(this.f3355if.size() - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    @Override // org.antlr.v4.runtime.IntStream
    public String getSourceName() {
        return this.f3353do.getSourceName();
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText() {
        return getText(rn0.m7059case(0, size() - 1));
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public TokenSource getTokenSource() {
        return this.f3353do;
    }

    /* renamed from: goto, reason: not valid java name */
    public List<Token> m4357goto(int i, int i2) {
        int i3;
        int iM4367while;
        m4363super();
        if (i >= 0 && i < this.f3355if.size()) {
            if (i == 0 || (iM4367while = m4367while(i - 1, 0)) == i3) {
                return null;
            }
            return m4366try(iM4367while + 1, i3, i2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(" not in 0..");
        sb.append(this.f3355if.size() - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    /* renamed from: if */
    public int mo3079if(int i) {
        return i;
    }

    @Deprecated
    /* renamed from: import, reason: not valid java name */
    public void m4358import() {
        seek(0);
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int index() {
        return this.f3354for;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int mark() {
        return 0;
    }

    /* renamed from: native, reason: not valid java name */
    public void m4359native(TokenSource tokenSource) {
        this.f3353do = tokenSource;
        this.f3355if.clear();
        this.f3354for = -1;
        this.f3356new = false;
    }

    /* renamed from: new, reason: not valid java name */
    public void m4360new() {
        m4363super();
        while (m4356for(1000) >= 1000) {
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m4361public() {
        m4362return(0);
        this.f3354for = mo3079if(0);
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void release(int i) {
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m4362return(int i) {
        int size = (i - this.f3355if.size()) + 1;
        return size <= 0 || m4356for(size) >= size;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void seek(int i) {
        m4363super();
        this.f3354for = mo3079if(i);
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int size() {
        return this.f3355if.size();
    }

    /* renamed from: super, reason: not valid java name */
    public final void m4363super() {
        if (this.f3354for == -1) {
            m4361public();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public List<Token> m4364this(int i) {
        return m4349break(i, -1);
    }

    /* renamed from: throw, reason: not valid java name */
    public int m4365throw(int i, int i2) {
        m4362return(i);
        if (i >= size()) {
            return size() - 1;
        }
        Token token = this.f3355if.get(i);
        while (true) {
            Token token2 = token;
            if (token2.getChannel() == i2 || token2.getType() == -1) {
                return i;
            }
            i++;
            m4362return(i);
            token = this.f3355if.get(i);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public List<Token> m4366try(int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        while (i <= i2) {
            Token token = this.f3355if.get(i);
            if (i3 == -1) {
                if (token.getChannel() != 0) {
                    arrayList.add(token);
                }
            } else if (token.getChannel() == i3) {
                arrayList.add(token);
            }
            i++;
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    /* renamed from: while, reason: not valid java name */
    public int m4367while(int i, int i2) {
        m4362return(i);
        if (i >= size()) {
            return size() - 1;
        }
        while (i >= 0) {
            Token token = this.f3355if.get(i);
            if (token.getType() == -1 || token.getChannel() == i2) {
                break;
            }
            i--;
        }
        return i;
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText(rn0 rn0Var) {
        int i = rn0Var.f5888do;
        int size = rn0Var.f5889if;
        if (i < 0 || size < 0) {
            return "";
        }
        m4360new();
        if (size >= this.f3355if.size()) {
            size = this.f3355if.size() - 1;
        }
        StringBuilder sb = new StringBuilder();
        while (i <= size) {
            Token token = this.f3355if.get(i);
            if (token.getType() == -1) {
                break;
            }
            sb.append(token.getText());
            i++;
        }
        return sb.toString();
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText(vo1 vo1Var) {
        return getText(vo1Var.getSourceInterval());
    }

    @Override // org.antlr.v4.runtime.TokenStream
    public String getText(Token token, Token token2) {
        return (token == null || token2 == null) ? "" : getText(rn0.m7059case(token.getTokenIndex(), token2.getTokenIndex()));
    }
}
