package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Vocabulary;
import org.antlr.v4.runtime.dfa.Cdo;

/* loaded from: classes3.dex */
public class ps0 extends is0 {

    /* renamed from: abstract, reason: not valid java name */
    public final String[] f5181abstract;

    /* renamed from: continue, reason: not valid java name */
    public final String[] f5182continue;

    /* renamed from: finally, reason: not valid java name */
    public final String f5183finally;

    /* renamed from: interface, reason: not valid java name */
    public final Cdo[] f5184interface;

    /* renamed from: package, reason: not valid java name */
    public final Cstatic f5185package;

    /* renamed from: private, reason: not valid java name */
    @Deprecated
    public final String[] f5186private;

    /* renamed from: protected, reason: not valid java name */
    public final ef1 f5187protected;

    /* renamed from: strictfp, reason: not valid java name */
    public final String[] f5188strictfp;

    /* renamed from: volatile, reason: not valid java name */
    private final Vocabulary f5189volatile;

    @Deprecated
    public ps0(String str, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, Cstatic cstatic, CharStream charStream) {
        this(str, cf2.m902do((String[]) collection.toArray(new String[collection.size()])), collection2, new ArrayList(), collection3, cstatic, charStream);
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: class */
    public String[] mo2318class() {
        return this.f5181abstract;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: else */
    public String mo2320else() {
        return this.f5183finally;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: for */
    public Cstatic mo2321for() {
        return this.f5185package;
    }

    @Override // android.support.v4.is0
    /* renamed from: implements */
    public String[] mo2322implements() {
        return this.f5188strictfp;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: native */
    public Vocabulary mo2323native() {
        Vocabulary vocabulary = this.f5189volatile;
        return vocabulary != null ? vocabulary : super.mo2323native();
    }

    @Override // android.support.v4.is0
    /* renamed from: strictfp */
    public String[] mo2324strictfp() {
        return this.f5182continue;
    }

    @Override // android.support.v4.is0, org.antlr.v4.runtime.Cthis
    @Deprecated
    /* renamed from: throw */
    public String[] mo2325throw() {
        return this.f5186private;
    }

    @Deprecated
    public ps0(String str, Vocabulary vocabulary, Collection<String> collection, Collection<String> collection2, Cstatic cstatic, CharStream charStream) {
        this(str, vocabulary, collection, new ArrayList(), collection2, cstatic, charStream);
    }

    public ps0(String str, Vocabulary vocabulary, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, Cstatic cstatic, CharStream charStream) {
        super(charStream);
        this.f5187protected = new ef1();
        if (cstatic.f6257case == org.antlr.v4.runtime.atn.Cdo.LEXER) {
            this.f5183finally = str;
            this.f5185package = cstatic;
            this.f5186private = new String[cstatic.f6259else];
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = this.f5186private;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = vocabulary.getDisplayName(i2);
                i2++;
            }
            this.f5181abstract = (String[]) collection.toArray(new String[collection.size()]);
            this.f5182continue = (String[]) collection2.toArray(new String[collection2.size()]);
            this.f5188strictfp = (String[]) collection3.toArray(new String[collection3.size()]);
            this.f5189volatile = vocabulary;
            this.f5184interface = new Cdo[cstatic.m7604try()];
            while (true) {
                Cdo[] cdoArr = this.f5184interface;
                if (i < cdoArr.length) {
                    cdoArr[i] = new Cdo(cstatic.m7600for(i), i);
                    i++;
                } else {
                    this.f28580if = new ks0(this, cstatic, this.f5184interface, this.f5187protected);
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("The ATN must be a lexer ATN.");
        }
    }
}
