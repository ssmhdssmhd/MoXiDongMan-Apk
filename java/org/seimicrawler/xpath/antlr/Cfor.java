package org.seimicrawler.xpath.antlr;

import android.support.v4.cf2;
import android.support.v4.cp1;
import android.support.v4.ef1;
import android.support.v4.qc1;
import android.support.v4.ql1;
import android.support.v4.v31;
import freemarker.core.k;
import java.util.List;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.Vocabulary;
import org.antlr.v4.runtime.atn.ATNDeserializer;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;
import org.antlr.v4.runtime.tree.TerminalNode;

/* renamed from: org.seimicrawler.xpath.antlr.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends org.antlr.v4.runtime.Cgoto {
    public static final int A = 6;
    public static final int B = 7;
    public static final int C = 8;
    public static final int D = 9;
    public static final int E = 10;
    public static final int F = 11;
    public static final int G = 12;
    public static final int H = 13;
    public static final int I = 14;

    /* renamed from: J, reason: collision with root package name */
    public static final int f36269J = 15;
    public static final int K = 16;
    public static final int L = 17;
    public static final int M = 18;
    public static final int N = 19;
    public static final int O = 20;
    public static final int P = 21;
    public static final int Q = 22;
    public static final int R = 23;
    public static final int S = 24;
    public static final int T = 25;
    public static final int U = 26;
    public static final String[] V;
    private static final String[] W;
    private static final String[] X;
    public static final Vocabulary Y;

    @Deprecated
    public static final String[] Z;
    public static final int a = 22;
    public static final String a0 = "\u0003悋Ꜫ脳맭䅼㯧瞆奤\u0003+å\u0004\u0002\t\u0002\u0004\u0003\t\u0003\u0004\u0004\t\u0004\u0004\u0005\t\u0005\u0004\u0006\t\u0006\u0004\u0007\t\u0007\u0004\b\t\b\u0004\t\t\t\u0004\n\t\n\u0004\u000b\t\u000b\u0004\f\t\f\u0004\r\t\r\u0004\u000e\t\u000e\u0004\u000f\t\u000f\u0004\u0010\t\u0010\u0004\u0011\t\u0011\u0004\u0012\t\u0012\u0004\u0013\t\u0013\u0004\u0014\t\u0014\u0004\u0015\t\u0015\u0004\u0016\t\u0016\u0004\u0017\t\u0017\u0004\u0018\t\u0018\u0004\u0019\t\u0019\u0004\u001a\t\u001a\u0004\u001b\t\u001b\u0004\u001c\t\u001c\u0003\u0002\u0003\u0002\u0003\u0003\u0003\u0003\u0005\u0003=\n\u0003\u0003\u0004\u0003\u0004\u0003\u0004\u0003\u0005\u0003\u0005\u0003\u0005\u0007\u0005E\n\u0005\f\u0005\u000e\u0005H\u000b\u0005\u0003\u0006\u0003\u0006\u0003\u0006\u0007\u0006M\n\u0006\f\u0006\u000e\u0006P\u000b\u0006\u0003\u0006\u0005\u0006S\n\u0006\u0003\u0007\u0003\u0007\u0003\u0007\u0005\u0007X\n\u0007\u0005\u0007Z\n\u0007\u0003\b\u0003\b\u0003\b\u0003\b\u0003\b\u0003\b\u0003\b\u0003\b\u0005\bd\n\b\u0003\t\u0003\t\u0003\t\u0003\t\u0003\n\u0003\n\u0003\u000b\u0003\u000b\u0003\f\u0003\f\u0003\f\u0003\f\u0003\f\u0003\f\u0003\f\u0003\f\u0005\fv\n\f\u0003\r\u0003\r\u0003\r\u0003\r\u0003\r\u0007\r}\n\r\f\r\u000e\r\u0080\u000b\r\u0005\r\u0082\n\r\u0003\r\u0003\r\u0003\u000e\u0003\u000e\u0003\u000e\u0005\u000e\u0089\n\u000e\u0003\u000e\u0003\u000e\u0003\u000e\u0005\u000e\u008e\n\u000e\u0003\u000f\u0003\u000f\u0003\u000f\u0003\u000f\u0005\u000f\u0094\n\u000f\u0005\u000f\u0096\n\u000f\u0003\u0010\u0003\u0010\u0007\u0010\u009a\n\u0010\f\u0010\u000e\u0010\u009d\u000b\u0010\u0003\u0011\u0003\u0011\u0003\u0011\u0007\u0011¢\n\u0011\f\u0011\u000e\u0011¥\u000b\u0011\u0003\u0012\u0003\u0012\u0003\u0012\u0007\u0012ª\n\u0012\f\u0012\u000e\u0012\u00ad\u000b\u0012\u0003\u0013\u0003\u0013\u0003\u0013\u0007\u0013²\n\u0013\f\u0013\u000e\u0013µ\u000b\u0013\u0003\u0014\u0003\u0014\u0003\u0014\u0007\u0014º\n\u0014\f\u0014\u000e\u0014½\u000b\u0014\u0003\u0015\u0003\u0015\u0003\u0015\u0007\u0015Â\n\u0015\f\u0015\u000e\u0015Å\u000b\u0015\u0003\u0016\u0003\u0016\u0003\u0016\u0005\u0016Ê\n\u0016\u0003\u0017\u0005\u0017Í\n\u0017\u0003\u0017\u0003\u0017\u0003\u0018\u0003\u0018\u0003\u0018\u0005\u0018Ô\n\u0018\u0003\u0019\u0003\u0019\u0003\u001a\u0003\u001a\u0003\u001a\u0003\u001b\u0003\u001b\u0003\u001b\u0003\u001b\u0003\u001b\u0003\u001b\u0005\u001bá\n\u001b\u0003\u001c\u0003\u001c\u0003\u001c\u0002\u0002\u001d\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c\u001e \"$&(*,.0246\u0002\t\u0003\u0002\n\u000b\u0004\u0002\u0012\u0012\u0016\u0016\u0003\u0002\u001e\u001f\u0005\u0002\u001a\u001b\u001d\u001d $\u0003\u0002\u0010\u0011\u0003\u0002\u0013\u0015\u0004\u0002\t\t++\u0002æ\u00028\u0003\u0002\u0002\u0002\u0004<\u0003\u0002\u0002\u0002\u0006>\u0003\u0002\u0002\u0002\bA\u0003\u0002\u0002\u0002\nR\u0003\u0002\u0002\u0002\fY\u0003\u0002\u0002\u0002\u000ec\u0003\u0002\u0002\u0002\u0010e\u0003\u0002\u0002\u0002\u0012i\u0003\u0002\u0002\u0002\u0014k\u0003\u0002\u0002\u0002\u0016u\u0003\u0002\u0002\u0002\u0018w\u0003\u0002\u0002\u0002\u001a\u008d\u0003\u0002\u0002\u0002\u001c\u0095\u0003\u0002\u0002\u0002\u001e\u0097\u0003\u0002\u0002\u0002 \u009e\u0003\u0002\u0002\u0002\"¦\u0003\u0002\u0002\u0002$®\u0003\u0002\u0002\u0002&¶\u0003\u0002\u0002\u0002(¾\u0003\u0002\u0002\u0002*Æ\u0003\u0002\u0002\u0002,Ì\u0003\u0002\u0002\u0002.Ð\u0003\u0002\u0002\u00020Õ\u0003\u0002\u0002\u00022×\u0003\u0002\u0002\u00024à\u0003\u0002\u0002\u00026â\u0003\u0002\u0002\u000289\u0005\u0014\u000b\u00029\u0003\u0003\u0002\u0002\u0002:=\u0005\b\u0005\u0002;=\u0005\u0006\u0004\u0002<:\u0003\u0002\u0002\u0002<;\u0003\u0002\u0002\u0002=\u0005\u0003\u0002\u0002\u0002>?\t\u0002\u0002\u0002?@\u0005\b\u0005\u0002@\u0007\u0003\u0002\u0002\u0002AF\u0005\n\u0006\u0002BC\t\u0002\u0002\u0002CE\u0005\n\u0006\u0002DB\u0003\u0002\u0002\u0002EH\u0003\u0002\u0002\u0002FD\u0003\u0002\u0002\u0002FG\u0003\u0002\u0002\u0002G\t\u0003\u0002\u0002\u0002HF\u0003\u0002\u0002\u0002IJ\u0005\f\u0007\u0002JN\u0005\u000e\b\u0002KM\u0005\u0010\t\u0002LK\u0003\u0002\u0002\u0002MP\u0003\u0002\u0002\u0002NL\u0003\u0002\u0002\u0002NO\u0003\u0002\u0002\u0002OS\u0003\u0002\u0002\u0002PN\u0003\u0002\u0002\u0002QS\u0005\u0012\n\u0002RI\u0003\u0002\u0002\u0002RQ\u0003\u0002\u0002\u0002S\u000b\u0003\u0002\u0002\u0002TU\u0007\t\u0002\u0002UZ\u0007&\u0002\u0002VX\u0007\u0017\u0002\u0002WV\u0003\u0002\u0002\u0002WX\u0003\u0002\u0002\u0002XZ\u0003\u0002\u0002\u0002YT\u0003\u0002\u0002\u0002YW\u0003\u0002\u0002\u0002Z\r\u0003\u0002\u0002\u0002[d\u00054\u001b\u0002\\]\u0007\u0007\u0002\u0002]^\u0007\f\u0002\u0002^d\u0007\r\u0002\u0002_`\u0007\u0003\u0002\u0002`a\u0007\f\u0002\u0002ab\u0007)\u0002\u0002bd\u0007\r\u0002\u0002c[\u0003\u0002\u0002\u0002c\\\u0003\u0002\u0002\u0002c_\u0003\u0002\u0002\u0002d\u000f\u0003\u0002\u0002\u0002ef\u0007\u000e\u0002\u0002fg\u0005\u0014\u000b\u0002gh\u0007\u000f\u0002\u0002h\u0011\u0003\u0002\u0002\u0002ij\t\u0003\u0002\u0002j\u0013\u0003\u0002\u0002\u0002kl\u0005 \u0011\u0002l\u0015\u0003\u0002\u0002\u0002mv\u00052\u001a\u0002no\u0007\f\u0002\u0002op\u0005\u0014\u000b\u0002pq\u0007\r\u0002\u0002qv\u0003\u0002\u0002\u0002rv\u0007)\u0002\u0002sv\u0007\b\u0002\u0002tv\u0005\u0018\r\u0002um\u0003\u0002\u0002\u0002un\u0003\u0002\u0002\u0002ur\u0003\u0002\u0002\u0002us\u0003\u0002\u0002\u0002ut\u0003\u0002\u0002\u0002v\u0017\u0003\u0002\u0002\u0002wx\u00050\u0019\u0002x\u0081\u0007\f\u0002\u0002y~\u0005\u0014\u000b\u0002z{\u0007\u0018\u0002\u0002{}\u0005\u0014\u000b\u0002|z\u0003\u0002\u0002\u0002}\u0080\u0003\u0002\u0002\u0002~|\u0003\u0002\u0002\u0002~\u007f\u0003\u0002\u0002\u0002\u007f\u0082\u0003\u0002\u0002\u0002\u0080~\u0003\u0002\u0002\u0002\u0081y\u0003\u0002\u0002\u0002\u0081\u0082\u0003\u0002\u0002\u0002\u0082\u0083\u0003\u0002\u0002\u0002\u0083\u0084\u0007\r\u0002\u0002\u0084\u0019\u0003\u0002\u0002\u0002\u0085\u0088\u0005\u001c\u000f\u0002\u0086\u0087\u0007\u0019\u0002\u0002\u0087\u0089\u0005\u001a\u000e\u0002\u0088\u0086\u0003\u0002\u0002\u0002\u0088\u0089\u0003\u0002\u0002\u0002\u0089\u008e\u0003\u0002\u0002\u0002\u008a\u008b\u0007\n\u0002\u0002\u008b\u008c\u0007\u0019\u0002\u0002\u008c\u008e\u0005\u001a\u000e\u0002\u008d\u0085\u0003\u0002\u0002\u0002\u008d\u008a\u0003\u0002\u0002\u0002\u008e\u001b\u0003\u0002\u0002\u0002\u008f\u0096\u0005\u0004\u0003\u0002\u0090\u0093\u0005\u001e\u0010\u0002\u0091\u0092\t\u0002\u0002\u0002\u0092\u0094\u0005\b\u0005\u0002\u0093\u0091\u0003\u0002\u0002\u0002\u0093\u0094\u0003\u0002\u0002\u0002\u0094\u0096\u0003\u0002\u0002\u0002\u0095\u008f\u0003\u0002\u0002\u0002\u0095\u0090\u0003\u0002\u0002\u0002\u0096\u001d\u0003\u0002\u0002\u0002\u0097\u009b\u0005\u0016\f\u0002\u0098\u009a\u0005\u0010\t\u0002\u0099\u0098\u0003\u0002\u0002\u0002\u009a\u009d\u0003\u0002\u0002\u0002\u009b\u0099\u0003\u0002\u0002\u0002\u009b\u009c\u0003\u0002\u0002\u0002\u009c\u001f\u0003\u0002\u0002\u0002\u009d\u009b\u0003\u0002\u0002\u0002\u009e£\u0005\"\u0012\u0002\u009f \u0007\u0004\u0002\u0002 ¢\u0005\"\u0012\u0002¡\u009f\u0003\u0002\u0002\u0002¢¥\u0003\u0002\u0002\u0002£¡\u0003\u0002\u0002\u0002£¤\u0003\u0002\u0002\u0002¤!\u0003\u0002\u0002\u0002¥£\u0003\u0002\u0002\u0002¦«\u0005$\u0013\u0002§¨\u0007\u0005\u0002\u0002¨ª\u0005$\u0013\u0002©§\u0003\u0002\u0002\u0002ª\u00ad\u0003\u0002\u0002\u0002«©\u0003\u0002\u0002\u0002«¬\u0003\u0002\u0002\u0002¬#\u0003\u0002\u0002\u0002\u00ad«\u0003\u0002\u0002\u0002®³\u0005&\u0014\u0002¯°\t\u0004\u0002\u0002°²\u0005&\u0014\u0002±¯\u0003\u0002\u0002\u0002²µ\u0003\u0002\u0002\u0002³±\u0003\u0002\u0002\u0002³´\u0003\u0002\u0002\u0002´%\u0003\u0002\u0002\u0002µ³\u0003\u0002\u0002\u0002¶»\u0005(\u0015\u0002·¸\t\u0005\u0002\u0002¸º\u0005(\u0015\u0002¹·\u0003\u0002\u0002\u0002º½\u0003\u0002\u0002\u0002»¹\u0003\u0002\u0002\u0002»¼\u0003\u0002\u0002\u0002¼'\u0003\u0002\u0002\u0002½»\u0003\u0002\u0002\u0002¾Ã\u0005*\u0016\u0002¿À\t\u0006\u0002\u0002ÀÂ\u0005*\u0016\u0002Á¿\u0003\u0002\u0002\u0002ÂÅ\u0003\u0002\u0002\u0002ÃÁ\u0003\u0002\u0002\u0002ÃÄ\u0003\u0002\u0002\u0002Ä)\u0003\u0002\u0002\u0002ÅÃ\u0003\u0002\u0002\u0002ÆÉ\u0005,\u0017\u0002ÇÈ\t\u0007\u0002\u0002ÈÊ\u0005*\u0016\u0002ÉÇ\u0003\u0002\u0002\u0002ÉÊ\u0003\u0002\u0002\u0002Ê+\u0003\u0002\u0002\u0002ËÍ\u0007\u0010\u0002\u0002ÌË\u0003\u0002\u0002\u0002ÌÍ\u0003\u0002\u0002\u0002ÍÎ\u0003\u0002\u0002\u0002ÎÏ\u0005\u001a\u000e\u0002Ï-\u0003\u0002\u0002\u0002ÐÓ\u00056\u001c\u0002ÑÒ\u0007%\u0002\u0002ÒÔ\u00056\u001c\u0002ÓÑ\u0003\u0002\u0002\u0002ÓÔ\u0003\u0002\u0002\u0002Ô/\u0003\u0002\u0002\u0002ÕÖ\u0005.\u0018\u0002Ö1\u0003\u0002\u0002\u0002×Ø\u0007\u0006\u0002\u0002ØÙ\u0005.\u0018\u0002Ù3\u0003\u0002\u0002\u0002Úá\u0007\u0013\u0002\u0002ÛÜ\u00056\u001c\u0002ÜÝ\u0007%\u0002\u0002ÝÞ\u0007\u0013\u0002\u0002Þá\u0003\u0002\u0002\u0002ßá\u0005.\u0018\u0002àÚ\u0003\u0002\u0002\u0002àÛ\u0003\u0002\u0002\u0002àß\u0003\u0002\u0002\u0002á5\u0003\u0002\u0002\u0002âã\t\b\u0002\u0002ã7\u0003\u0002\u0002\u0002\u001a<FNRWYcu~\u0081\u0088\u008d\u0093\u0095\u009b£«³»ÃÉÌÓà";

    /* renamed from: abstract, reason: not valid java name */
    public static final int f34138abstract = 12;
    public static final int b = 23;
    public static final android.support.v4.Cstatic b0;
    public static final int c = 24;

    /* renamed from: continue, reason: not valid java name */
    public static final int f34139continue = 13;
    public static final int d = 25;

    /* renamed from: default, reason: not valid java name */
    public static final int f34140default = 7;
    public static final int e = 26;

    /* renamed from: extends, reason: not valid java name */
    public static final int f34141extends = 8;
    public static final int f = 27;

    /* renamed from: finally, reason: not valid java name */
    public static final int f34142finally = 9;
    public static final int g = 28;
    public static final int h = 29;
    public static final int i = 30;

    /* renamed from: implements, reason: not valid java name */
    public static final int f34143implements = 19;

    /* renamed from: import, reason: not valid java name */
    public static final ef1 f34144import;

    /* renamed from: instanceof, reason: not valid java name */
    public static final int f34145instanceof = 20;

    /* renamed from: interface, reason: not valid java name */
    public static final int f34146interface = 16;
    public static final int j = 31;
    public static final int k = 32;
    public static final int l = 33;
    public static final int m = 34;
    public static final int n = 35;

    /* renamed from: native, reason: not valid java name */
    public static final int f34147native = 1;
    public static final int o = 36;
    public static final int p = 37;

    /* renamed from: package, reason: not valid java name */
    public static final int f34148package = 10;

    /* renamed from: private, reason: not valid java name */
    public static final int f34149private = 11;

    /* renamed from: protected, reason: not valid java name */
    public static final int f34150protected = 17;

    /* renamed from: public, reason: not valid java name */
    public static final int f34151public = 2;
    public static final int q = 38;
    public static final int r = 39;

    /* renamed from: return, reason: not valid java name */
    public static final int f34152return = 3;
    public static final int s = 40;

    /* renamed from: static, reason: not valid java name */
    public static final int f34153static = 4;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f34154strictfp = 14;

    /* renamed from: switch, reason: not valid java name */
    public static final int f34155switch = 5;

    /* renamed from: synchronized, reason: not valid java name */
    public static final int f34156synchronized = 21;
    public static final int t = 41;

    /* renamed from: throws, reason: not valid java name */
    public static final int f34157throws = 6;

    /* renamed from: transient, reason: not valid java name */
    public static final int f34158transient = 18;
    public static final int u = 0;
    public static final int v = 1;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f34159volatile = 15;
    public static final int w = 2;

    /* renamed from: while, reason: not valid java name */
    public static final org.antlr.v4.runtime.dfa.Cdo[] f34160while;
    public static final int x = 3;
    public static final int y = 4;
    public static final int z = 5;

    /* renamed from: org.seimicrawler.xpath.antlr.for$break, reason: invalid class name */
    public static class Cbreak extends qc1 {
        public Cbreak(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitFunctionName(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterFunctionName(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitFunctionName(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Creturn m38073strictfp() {
            return (Creturn) m6496throws(Creturn.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 23;
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$case, reason: invalid class name */
    public static class Ccase extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34161goto;

        public Ccase(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitEqualityExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: implements, reason: not valid java name */
        public Cstatic m38074implements(int i) {
            return (Cstatic) m6496throws(Cstatic.class, i);
        }

        /* renamed from: interface, reason: not valid java name */
        public List<TerminalNode> m38075interface() {
            return m6489private(29);
        }

        /* renamed from: protected, reason: not valid java name */
        public TerminalNode m38076protected(int i) {
            return m6488package(29, i);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterEqualityExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitEqualityExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<TerminalNode> m38077strictfp() {
            return m6489private(28);
        }

        /* renamed from: transient, reason: not valid java name */
        public List<Cstatic> m38078transient() {
            return m6481default(Cstatic.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 17;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38079volatile(int i) {
            return m6488package(28, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$catch, reason: invalid class name */
    public static class Ccatch extends qc1 {
        public Ccatch(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitLocationPath(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterLocationPath(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitLocationPath(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Cif m38080strictfp() {
            return (Cif) m6496throws(Cif.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 1;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cswitch m38081volatile() {
            return (Cswitch) m6496throws(Cswitch.class, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$class, reason: invalid class name */
    public static class Cclass extends qc1 {
        public Cclass(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitMain(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterMain(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitMain(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Celse m38082strictfp() {
            return (Celse) m6496throws(Celse.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 0;
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$const, reason: invalid class name */
    public static class Cconst extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34162goto;

        public Cconst(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitMultiplicativeExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public TerminalNode m38083interface() {
            return m6488package(17, 0);
        }

        /* renamed from: protected, reason: not valid java name */
        public Cconst m38084protected() {
            return (Cconst) m6496throws(Cconst.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterMultiplicativeExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitMultiplicativeExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38085strictfp() {
            return m6488package(18, 0);
        }

        /* renamed from: transient, reason: not valid java name */
        public Cdefault m38086transient() {
            return (Cdefault) m6496throws(Cdefault.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 20;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38087volatile() {
            return m6488package(19, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$default, reason: invalid class name */
    public static class Cdefault extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34163goto;

        public Cdefault(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitUnaryExprNoRoot(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterUnaryExprNoRoot(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitUnaryExprNoRoot(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38088strictfp() {
            return m6488package(14, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 21;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cextends m38089volatile() {
            return (Cextends) m6496throws(Cextends.class, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$do, reason: invalid class name */
    public static class Cdo extends qc1 {
        public Cdo(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitAbbreviatedStep(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterAbbreviatedStep(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitAbbreviatedStep(this);
            }
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 8;
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$else, reason: invalid class name */
    public static class Celse extends qc1 {
        public Celse(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Cwhile m38090strictfp() {
            return (Cwhile) m6496throws(Cwhile.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 9;
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$extends, reason: invalid class name */
    public static class Cextends extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34164goto;

        public Cextends(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitUnionExprNoRoot(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Cimport m38091interface() {
            return (Cimport) m6496throws(Cimport.class, 0);
        }

        /* renamed from: protected, reason: not valid java name */
        public Cextends m38092protected() {
            return (Cextends) m6496throws(Cextends.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterUnionExprNoRoot(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitUnionExprNoRoot(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38093strictfp() {
            return m6488package(8, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 12;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38094volatile() {
            return m6488package(23, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$final, reason: invalid class name */
    public static class Cfinal extends qc1 {
        public Cfinal(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitNCName(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterNCName(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitNCName(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38095strictfp() {
            return m6488package(7, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 26;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38096volatile() {
            return m6488package(41, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$finally, reason: invalid class name */
    public static class Cfinally extends qc1 {
        public Cfinally(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitVariableReference(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterVariableReference(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitVariableReference(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Creturn m38097strictfp() {
            return (Creturn) m6496throws(Creturn.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 24;
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0492for extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34165goto;

        public C0492for(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitAdditiveExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: implements, reason: not valid java name */
        public Cconst m38098implements(int i) {
            return (Cconst) m6496throws(Cconst.class, i);
        }

        /* renamed from: interface, reason: not valid java name */
        public List<TerminalNode> m38099interface() {
            return m6489private(15);
        }

        /* renamed from: protected, reason: not valid java name */
        public TerminalNode m38100protected(int i) {
            return m6488package(15, i);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterAdditiveExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitAdditiveExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<TerminalNode> m38101strictfp() {
            return m6489private(14);
        }

        /* renamed from: transient, reason: not valid java name */
        public List<Cconst> m38102transient() {
            return m6481default(Cconst.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 19;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38103volatile(int i) {
            return m6488package(14, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$goto, reason: invalid class name */
    public static class Cgoto extends qc1 {
        public Cgoto(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitFilterExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Cpublic m38104interface() {
            return (Cpublic) m6496throws(Cpublic.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterFilterExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitFilterExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<Cnative> m38105strictfp() {
            return m6481default(Cnative.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 14;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cnative m38106volatile(int i) {
            return (Cnative) m6496throws(Cnative.class, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$if, reason: invalid class name */
    public static class Cif extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34166goto;

        public Cif(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitAbsoluteLocationPathNoroot(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Cswitch m38107interface() {
            return (Cswitch) m6496throws(Cswitch.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterAbsoluteLocationPathNoroot(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitAbsoluteLocationPathNoroot(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38108strictfp() {
            return m6488package(9, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 2;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38109volatile() {
            return m6488package(8, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$import, reason: invalid class name */
    public static class Cimport extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34167goto;

        public Cimport(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitPathExprNoRoot(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Cgoto m38110interface() {
            return (Cgoto) m6496throws(Cgoto.class, 0);
        }

        /* renamed from: protected, reason: not valid java name */
        public Ccatch m38111protected() {
            return (Ccatch) m6496throws(Ccatch.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterPathExprNoRoot(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitPathExprNoRoot(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38112strictfp() {
            return m6488package(9, 0);
        }

        /* renamed from: transient, reason: not valid java name */
        public Cswitch m38113transient() {
            return (Cswitch) m6496throws(Cswitch.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 13;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38114volatile() {
            return m6488package(8, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$native, reason: invalid class name */
    public static class Cnative extends qc1 {
        public Cnative(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitPredicate(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterPredicate(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitPredicate(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Celse m38115strictfp() {
            return (Celse) m6496throws(Celse.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 7;
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$new, reason: invalid class name */
    public static class Cnew extends qc1 {
        public Cnew(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitAndExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterAndExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitAndExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<Ccase> m38116strictfp() {
            return m6481default(Ccase.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 16;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Ccase m38117volatile(int i) {
            return (Ccase) m6496throws(Ccase.class, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$public, reason: invalid class name */
    public static class Cpublic extends qc1 {
        public Cpublic(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitPrimaryExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Celse m38118interface() {
            return (Celse) m6496throws(Celse.class, 0);
        }

        /* renamed from: protected, reason: not valid java name */
        public Cthis m38119protected() {
            return (Cthis) m6496throws(Cthis.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterPrimaryExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitPrimaryExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38120strictfp() {
            return m6488package(39, 0);
        }

        /* renamed from: transient, reason: not valid java name */
        public Cfinally m38121transient() {
            return (Cfinally) m6496throws(Cfinally.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 10;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38122volatile() {
            return m6488package(6, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$return, reason: invalid class name */
    public static class Creturn extends qc1 {
        public Creturn(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitQName(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterQName(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitQName(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<Cfinal> m38123strictfp() {
            return m6481default(Cfinal.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 22;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cfinal m38124volatile(int i) {
            return (Cfinal) m6496throws(Cfinal.class, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$static, reason: invalid class name */
    public static class Cstatic extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34168goto;

        public Cstatic(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        public List<TerminalNode> a() {
            return m6489private(25);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitRelationalExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        public TerminalNode b(int i) {
            return m6488package(25, i);
        }

        public List<TerminalNode> c() {
            return m6489private(34);
        }

        public TerminalNode d(int i) {
            return m6488package(34, i);
        }

        public List<TerminalNode> e() {
            return m6489private(33);
        }

        public TerminalNode f(int i) {
            return m6488package(33, i);
        }

        public List<TerminalNode> g() {
            return m6489private(30);
        }

        public TerminalNode h(int i) {
            return m6488package(30, i);
        }

        public List<C0492for> i() {
            return m6481default(C0492for.class);
        }

        /* renamed from: implements, reason: not valid java name */
        public TerminalNode m38125implements(int i) {
            return m6488package(27, i);
        }

        /* renamed from: instanceof, reason: not valid java name */
        public List<TerminalNode> m38126instanceof() {
            return m6489private(24);
        }

        /* renamed from: interface, reason: not valid java name */
        public List<TerminalNode> m38127interface() {
            return m6489private(31);
        }

        public C0492for j(int i) {
            return (C0492for) m6496throws(C0492for.class, i);
        }

        /* renamed from: protected, reason: not valid java name */
        public TerminalNode m38128protected(int i) {
            return m6488package(31, i);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterRelationalExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitRelationalExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<TerminalNode> m38129strictfp() {
            return m6489private(32);
        }

        /* renamed from: synchronized, reason: not valid java name */
        public TerminalNode m38130synchronized(int i) {
            return m6488package(24, i);
        }

        /* renamed from: transient, reason: not valid java name */
        public List<TerminalNode> m38131transient() {
            return m6489private(27);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 18;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38132volatile(int i) {
            return m6488package(32, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$super, reason: invalid class name */
    public static class Csuper extends qc1 {
        public Csuper(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitNameTest(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterNameTest(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitNameTest(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Cfinal m38133strictfp() {
            return (Cfinal) m6496throws(Cfinal.class, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 25;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Creturn m38134volatile() {
            return (Creturn) m6496throws(Creturn.class, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$switch, reason: invalid class name */
    public static class Cswitch extends qc1 {

        /* renamed from: goto, reason: not valid java name */
        public Token f34169goto;

        public Cswitch(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitRelativeLocationPath(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: implements, reason: not valid java name */
        public Cthrows m38135implements(int i) {
            return (Cthrows) m6496throws(Cthrows.class, i);
        }

        /* renamed from: interface, reason: not valid java name */
        public List<TerminalNode> m38136interface() {
            return m6489private(8);
        }

        /* renamed from: protected, reason: not valid java name */
        public TerminalNode m38137protected(int i) {
            return m6488package(8, i);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterRelativeLocationPath(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitRelativeLocationPath(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<TerminalNode> m38138strictfp() {
            return m6489private(9);
        }

        /* renamed from: transient, reason: not valid java name */
        public List<Cthrows> m38139transient() {
            return m6481default(Cthrows.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 3;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38140volatile(int i) {
            return m6488package(9, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$this, reason: invalid class name */
    public static class Cthis extends qc1 {
        public Cthis(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitFunctionCall(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Cbreak m38141interface() {
            return (Cbreak) m6496throws(Cbreak.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterFunctionCall(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitFunctionCall(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<Celse> m38142strictfp() {
            return m6481default(Celse.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 11;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Celse m38143volatile(int i) {
            return (Celse) m6496throws(Celse.class, i);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$throw, reason: invalid class name */
    public static class Cthrow extends qc1 {
        public Cthrow(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitNodeTest(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Csuper m38144interface() {
            return (Csuper) m6496throws(Csuper.class, 0);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterNodeTest(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitNodeTest(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38145strictfp() {
            return m6488package(39, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 6;
        }

        /* renamed from: volatile, reason: not valid java name */
        public TerminalNode m38146volatile() {
            return m6488package(5, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$throws, reason: invalid class name */
    public static class Cthrows extends qc1 {
        public Cthrows(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitStep(this) : parseTreeVisitor.visitChildren(this);
        }

        /* renamed from: interface, reason: not valid java name */
        public Cthrow m38147interface() {
            return (Cthrow) m6496throws(Cthrow.class, 0);
        }

        /* renamed from: protected, reason: not valid java name */
        public List<Cnative> m38148protected() {
            return m6481default(Cnative.class);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterStep(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitStep(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Cdo m38149strictfp() {
            return (Cdo) m6496throws(Cdo.class, 0);
        }

        /* renamed from: transient, reason: not valid java name */
        public Cnative m38150transient(int i) {
            return (Cnative) m6496throws(Cnative.class, i);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 4;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Ctry m38151volatile() {
            return (Ctry) m6496throws(Ctry.class, 0);
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$try, reason: invalid class name */
    public static class Ctry extends qc1 {
        public Ctry(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitAxisSpecifier(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterAxisSpecifier(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitAxisSpecifier(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public TerminalNode m38152strictfp() {
            return m6488package(7, 0);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 5;
        }
    }

    /* renamed from: org.seimicrawler.xpath.antlr.for$while, reason: invalid class name */
    public static class Cwhile extends qc1 {
        public Cwhile(qc1 qc1Var, int i) {
            super(qc1Var, i);
        }

        @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.ParseTree
        public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
            return parseTreeVisitor instanceof XpathVisitor ? (T) ((XpathVisitor) parseTreeVisitor).visitOrExpr(this) : parseTreeVisitor.visitChildren(this);
        }

        @Override // android.support.v4.qc1
        /* renamed from: public */
        public void mo6490public(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).enterOrExpr(this);
            }
        }

        @Override // android.support.v4.qc1
        /* renamed from: return */
        public void mo6491return(ParseTreeListener parseTreeListener) {
            if (parseTreeListener instanceof XpathListener) {
                ((XpathListener) parseTreeListener).exitOrExpr(this);
            }
        }

        /* renamed from: strictfp, reason: not valid java name */
        public List<Cnew> m38153strictfp() {
            return m6481default(Cnew.class);
        }

        @Override // android.support.v4.vo1
        /* renamed from: try */
        public int mo6627try() {
            return 15;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cnew m38154volatile(int i) {
            return (Cnew) m6496throws(Cnew.class, i);
        }
    }

    static {
        cp1.m990do(cp1.f844do, cp1.f844do);
        f34144import = new ef1();
        V = new String[]{k.f23949while, "locationPath", "absoluteLocationPathNoroot", "relativeLocationPath", "step", "axisSpecifier", "nodeTest", "predicate", "abbreviatedStep", "expr", "primaryExpr", "functionCall", "unionExprNoRoot", "pathExprNoRoot", "filterExpr", "orExpr", "andExpr", "equalityExpr", "relationalExpr", "additiveExpr", "multiplicativeExpr", "unaryExprNoRoot", "qName", "functionName", "variableReference", "nameTest", "nCName"};
        String[] strArr = {null, "'processing-instruction'", "'or'", "'and'", "'$'", null, null, null, "'/'", "'//'", "'('", "')'", "'['", "']'", "'-'", "'+'", "'.'", "'*'", "'`div`'", "'`mod`'", "'..'", "'@'", "','", "'|'", "'<'", "'>'", "'<='", "'>='", "'='", "'!='", "'^='", "'$='", "'*='", "'~='", "'!~'", "':'", "'::'", "'''", "'\"'"};
        W = strArr;
        String[] strArr2 = {null, null, null, null, null, "NodeType", "Number", "AxisName", "PATHSEP", "ABRPATH", "LPAR", "RPAR", "LBRAC", "RBRAC", "MINUS", "PLUS", "DOT", "MUL", "DIVISION", "MODULO", "DOTDOT", "AT", "COMMA", "PIPE", "LESS", "MORE_", "LE", "GE", "EQUALITY", "INEQUALITY", "START_WITH", "END_WITH", "CONTAIN_WITH", "REGEXP_WITH", "REGEXP_NOT_WITH", "COLON", "CC", "APOS", "QUOT", "Literal", "Whitespace", "NCName"};
        X = strArr2;
        Y = new cf2(strArr, strArr2);
        Z = new String[strArr2.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr3 = Z;
            if (i3 >= strArr3.length) {
                break;
            }
            Vocabulary vocabulary = Y;
            strArr3[i3] = vocabulary.getLiteralName(i3);
            if (strArr3[i3] == null) {
                strArr3[i3] = vocabulary.getSymbolicName(i3);
            }
            if (strArr3[i3] == null) {
                strArr3[i3] = "<INVALID>";
            }
            i3++;
        }
        android.support.v4.Cstatic cstaticM31843for = new ATNDeserializer().m31843for(a0.toCharArray());
        b0 = cstaticM31843for;
        f34160while = new org.antlr.v4.runtime.dfa.Cdo[cstaticM31843for.m7604try()];
        while (true) {
            android.support.v4.Cstatic cstatic = b0;
            if (i2 >= cstatic.m7604try()) {
                return;
            }
            f34160while[i2] = new org.antlr.v4.runtime.dfa.Cdo(cstatic.m7600for(i2), i2);
            i2++;
        }
    }

    public Cfor(TokenStream tokenStream) {
        super(tokenStream);
        this.f28580if = new org.antlr.v4.runtime.atn.Cnew(this, b0, f34160while, f34144import);
    }

    public final Cdo P() throws ql1 {
        Cdo cdo = new Cdo(this.f28546break, m32074final());
        m31999instanceof(cdo, 16, 8);
        try {
            try {
                m32003protected(cdo, 1);
                m32073extends(103);
                int iLA = this.f28552goto.LA(1);
                if (iLA == 16 || iLA == 20) {
                    if (this.f28552goto.LA(1) == -1) {
                        this.f28553super = true;
                    }
                    this.f28550else.reportMatch(this);
                    m31997continue();
                } else {
                    this.f28550else.recoverInline(this);
                }
            } catch (ql1 e2) {
                cdo.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cdo;
        } finally {
            m32006synchronized();
        }
    }

    public final Cif Q() throws ql1 {
        Cif cif = new Cif(this.f28546break, m32074final());
        m31999instanceof(cif, 4, 2);
        try {
            try {
                m32003protected(cif, 1);
                m32073extends(60);
                cif.f34166goto = this.f28552goto.LT(1);
                int iLA = this.f28552goto.LA(1);
                if (iLA == 8 || iLA == 9) {
                    if (this.f28552goto.LA(1) == -1) {
                        this.f28553super = true;
                    }
                    this.f28550else.reportMatch(this);
                    m31997continue();
                } else {
                    cif.f34166goto = this.f28550else.recoverInline(this);
                }
                m32073extends(61);
                l0();
            } catch (ql1 e2) {
                cif.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cif;
        } finally {
            m32006synchronized();
        }
    }

    public final C0492for R() throws ql1 {
        C0492for c0492for = new C0492for(this.f28546break, m32074final());
        m31999instanceof(c0492for, 38, 19);
        try {
            try {
                m32003protected(c0492for, 1);
                m32073extends(188);
                b0();
                m32073extends(193);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                while (true) {
                    if (iLA != 14 && iLA != 15) {
                        break;
                    }
                    m32073extends(189);
                    c0492for.f34165goto = this.f28552goto.LT(1);
                    int iLA2 = this.f28552goto.LA(1);
                    if (iLA2 == 14 || iLA2 == 15) {
                        if (this.f28552goto.LA(1) == -1) {
                            this.f28553super = true;
                        }
                        this.f28550else.reportMatch(this);
                        m31997continue();
                    } else {
                        c0492for.f34165goto = this.f28550else.recoverInline(this);
                    }
                    m32073extends(190);
                    b0();
                    m32073extends(195);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                }
            } catch (ql1 e2) {
                c0492for.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return c0492for;
        } finally {
            m32006synchronized();
        }
    }

    public final Cnew S() throws ql1 {
        Cnew cnew = new Cnew(this.f28546break, m32074final());
        m31999instanceof(cnew, 32, 16);
        try {
            try {
                m32003protected(cnew, 1);
                m32073extends(164);
                U();
                m32073extends(169);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                while (iLA == 3) {
                    m32073extends(165);
                    x(3);
                    m32073extends(166);
                    U();
                    m32073extends(171);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                }
            } catch (ql1 e2) {
                cnew.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cnew;
        } finally {
            m32006synchronized();
        }
    }

    public final Ctry T() throws ql1 {
        Ctry ctry = new Ctry(this.f28546break, m32074final());
        m31999instanceof(ctry, 10, 5);
        try {
            try {
                m32073extends(87);
                this.f28550else.sync(this);
                int iMo31913super = ((org.antlr.v4.runtime.atn.Cnew) m32082this()).mo31913super(this.f28552goto, 5, this.f28546break);
                if (iMo31913super == 1) {
                    m32003protected(ctry, 1);
                    m32073extends(82);
                    x(7);
                    m32073extends(83);
                    x(36);
                } else if (iMo31913super == 2) {
                    m32003protected(ctry, 2);
                    m32073extends(85);
                    this.f28550else.sync(this);
                    if (this.f28552goto.LA(1) == 21) {
                        m32073extends(84);
                        x(21);
                    }
                }
            } catch (ql1 e2) {
                ctry.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return ctry;
        } finally {
            m32006synchronized();
        }
    }

    public final Ccase U() throws ql1 {
        Ccase ccase = new Ccase(this.f28546break, m32074final());
        m31999instanceof(ccase, 34, 17);
        try {
            try {
                m32003protected(ccase, 1);
                m32073extends(172);
                k0();
                m32073extends(177);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                while (true) {
                    if (iLA != 28 && iLA != 29) {
                        break;
                    }
                    m32073extends(173);
                    ccase.f34161goto = this.f28552goto.LT(1);
                    int iLA2 = this.f28552goto.LA(1);
                    if (iLA2 == 28 || iLA2 == 29) {
                        if (this.f28552goto.LA(1) == -1) {
                            this.f28553super = true;
                        }
                        this.f28550else.reportMatch(this);
                        m31997continue();
                    } else {
                        ccase.f34161goto = this.f28550else.recoverInline(this);
                    }
                    m32073extends(174);
                    k0();
                    m32073extends(179);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                }
            } catch (ql1 e2) {
                ccase.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return ccase;
        } finally {
            m32006synchronized();
        }
    }

    public final Celse V() throws ql1 {
        Celse celse = new Celse(this.f28546break, m32074final());
        m31999instanceof(celse, 18, 9);
        try {
            try {
                m32003protected(celse, 1);
                m32073extends(105);
                f0();
            } catch (ql1 e2) {
                celse.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return celse;
        } finally {
            m32006synchronized();
        }
    }

    public final Cgoto W() throws ql1 {
        Cgoto cgoto = new Cgoto(this.f28546break, m32074final());
        m31999instanceof(cgoto, 28, 14);
        try {
            try {
                m32003protected(cgoto, 1);
                m32073extends(149);
                i0();
                m32073extends(153);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                while (iLA == 12) {
                    m32073extends(150);
                    h0();
                    m32073extends(155);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                }
            } catch (ql1 e2) {
                cgoto.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cgoto;
        } finally {
            m32006synchronized();
        }
    }

    public final Cthis X() throws ql1 {
        Cthis cthis = new Cthis(this.f28546break, m32074final());
        m31999instanceof(cthis, 22, 11);
        try {
            try {
                m32003protected(cthis, 1);
                m32073extends(117);
                Y();
                m32073extends(118);
                x(10);
                m32073extends(127);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                if ((iLA & (-64)) == 0 && ((1 << iLA) & 2748782430194L) != 0) {
                    m32073extends(119);
                    V();
                    m32073extends(124);
                    this.f28550else.sync(this);
                    int iLA2 = this.f28552goto.LA(1);
                    while (iLA2 == 22) {
                        m32073extends(120);
                        x(22);
                        m32073extends(121);
                        V();
                        m32073extends(126);
                        this.f28550else.sync(this);
                        iLA2 = this.f28552goto.LA(1);
                    }
                }
                m32073extends(129);
                x(11);
            } catch (ql1 e2) {
                cthis.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cthis;
        } finally {
            m32006synchronized();
        }
    }

    public final Cbreak Y() throws ql1 {
        Cbreak cbreak = new Cbreak(this.f28546break, m32074final());
        m31999instanceof(cbreak, 46, 23);
        try {
            try {
                m32003protected(cbreak, 1);
                m32073extends(org.bouncycastle.math.Cdo.f31781do);
                j0();
            } catch (ql1 e2) {
                cbreak.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cbreak;
        } finally {
            m32006synchronized();
        }
    }

    public final Ccatch Z() throws ql1 {
        Ccatch ccatch = new Ccatch(this.f28546break, m32074final());
        m31999instanceof(ccatch, 2, 1);
        try {
            try {
                m32073extends(58);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                if (iLA == 1 || iLA == 5 || iLA == 41 || iLA == 7) {
                    m32003protected(ccatch, 1);
                    m32073extends(56);
                    l0();
                } else if (iLA == 8 || iLA == 9) {
                    m32003protected(ccatch, 2);
                    m32073extends(57);
                    Q();
                } else {
                    if (iLA != 16 && iLA != 17 && iLA != 20 && iLA != 21) {
                        throw new v31(this);
                    }
                    m32003protected(ccatch, 1);
                    m32073extends(56);
                    l0();
                }
            } catch (ql1 e2) {
                ccatch.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return ccatch;
        } finally {
            m32006synchronized();
        }
    }

    public final Cclass a0() throws ql1 {
        Cclass cclass = new Cclass(this.f28546break, m32074final());
        m31999instanceof(cclass, 0, 0);
        try {
            try {
                m32003protected(cclass, 1);
                m32073extends(54);
                V();
            } catch (ql1 e2) {
                cclass.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cclass;
        } finally {
            m32006synchronized();
        }
    }

    public final Cconst b0() throws ql1 {
        Cconst cconst = new Cconst(this.f28546break, m32074final());
        m31999instanceof(cconst, 40, 20);
        try {
            try {
                m32003protected(cconst, 1);
                m32073extends(196);
                n0();
                m32073extends(199);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                if ((iLA & (-64)) == 0 && ((1 << iLA) & 917504) != 0) {
                    m32073extends(197);
                    cconst.f34162goto = this.f28552goto.LT(1);
                    int iLA2 = this.f28552goto.LA(1);
                    if ((iLA2 & (-64)) != 0 || ((1 << iLA2) & 917504) == 0) {
                        cconst.f34162goto = this.f28550else.recoverInline(this);
                    } else {
                        if (this.f28552goto.LA(1) == -1) {
                            this.f28553super = true;
                        }
                        this.f28550else.reportMatch(this);
                        m31997continue();
                    }
                    m32073extends(198);
                    b0();
                }
            } catch (ql1 e2) {
                cconst.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cconst;
        } finally {
            m32006synchronized();
        }
    }

    public final Cfinal c0() throws ql1 {
        Cfinal cfinal = new Cfinal(this.f28546break, m32074final());
        m31999instanceof(cfinal, 52, 26);
        try {
            try {
                m32003protected(cfinal, 1);
                m32073extends(224);
                int iLA = this.f28552goto.LA(1);
                if (iLA == 7 || iLA == 41) {
                    if (this.f28552goto.LA(1) == -1) {
                        this.f28553super = true;
                    }
                    this.f28550else.reportMatch(this);
                    m31997continue();
                } else {
                    this.f28550else.recoverInline(this);
                }
            } catch (ql1 e2) {
                cfinal.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cfinal;
        } finally {
            m32006synchronized();
        }
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: class */
    public String[] mo2318class() {
        return V;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: const */
    public String mo2319const() {
        return a0;
    }

    public final Csuper d0() throws ql1 {
        Csuper csuper = new Csuper(this.f28546break, m32074final());
        m31999instanceof(csuper, 50, 25);
        try {
            try {
                m32073extends(222);
                this.f28550else.sync(this);
                int iMo31913super = ((org.antlr.v4.runtime.atn.Cnew) m32082this()).mo31913super(this.f28552goto, 23, this.f28546break);
                if (iMo31913super == 1) {
                    m32003protected(csuper, 1);
                    m32073extends(216);
                    x(17);
                } else if (iMo31913super == 2) {
                    m32003protected(csuper, 2);
                    m32073extends(217);
                    c0();
                    m32073extends(218);
                    x(35);
                    m32073extends(219);
                    x(17);
                } else if (iMo31913super == 3) {
                    m32003protected(csuper, 3);
                    m32073extends(221);
                    j0();
                }
            } catch (ql1 e2) {
                csuper.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return csuper;
        } finally {
            m32006synchronized();
        }
    }

    public final Cthrow e0() throws ql1 {
        Cthrow cthrow = new Cthrow(this.f28546break, m32074final());
        m31999instanceof(cthrow, 12, 6);
        try {
            try {
                m32073extends(97);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                if (iLA == 1) {
                    m32003protected(cthrow, 3);
                    m32073extends(93);
                    x(1);
                    m32073extends(94);
                    x(10);
                    m32073extends(95);
                    x(39);
                    m32073extends(96);
                    x(11);
                } else if (iLA != 5) {
                    if (iLA != 7 && iLA != 17 && iLA != 41) {
                        throw new v31(this);
                    }
                    m32003protected(cthrow, 1);
                    m32073extends(89);
                    d0();
                } else {
                    m32003protected(cthrow, 2);
                    m32073extends(90);
                    x(5);
                    m32073extends(91);
                    x(10);
                    m32073extends(92);
                    x(11);
                }
            } catch (ql1 e2) {
                cthrow.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cthrow;
        } finally {
            m32006synchronized();
        }
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: else */
    public String mo2320else() {
        return "Xpath.g4";
    }

    public final Cwhile f0() throws ql1 {
        Cwhile cwhile = new Cwhile(this.f28546break, m32074final());
        m31999instanceof(cwhile, 30, 15);
        try {
            try {
                m32003protected(cwhile, 1);
                m32073extends(156);
                S();
                m32073extends(161);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                while (iLA == 2) {
                    m32073extends(157);
                    x(2);
                    m32073extends(158);
                    S();
                    m32073extends(163);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                }
            } catch (ql1 e2) {
                cwhile.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cwhile;
        } finally {
            m32006synchronized();
        }
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: for */
    public android.support.v4.Cstatic mo2321for() {
        return b0;
    }

    public final Cimport g0() throws ql1 {
        Cimport cimport = new Cimport(this.f28546break, m32074final());
        m31999instanceof(cimport, 26, 13);
        try {
            try {
                m32073extends(147);
                this.f28550else.sync(this);
                int iMo31913super = ((org.antlr.v4.runtime.atn.Cnew) m32082this()).mo31913super(this.f28552goto, 13, this.f28546break);
                if (iMo31913super == 1) {
                    m32003protected(cimport, 1);
                    m32073extends(141);
                    Z();
                } else if (iMo31913super == 2) {
                    m32003protected(cimport, 2);
                    m32073extends(142);
                    W();
                    m32073extends(145);
                    this.f28550else.sync(this);
                    int iLA = this.f28552goto.LA(1);
                    if (iLA == 8 || iLA == 9) {
                        m32073extends(143);
                        cimport.f34167goto = this.f28552goto.LT(1);
                        int iLA2 = this.f28552goto.LA(1);
                        if (iLA2 == 8 || iLA2 == 9) {
                            if (this.f28552goto.LA(1) == -1) {
                                this.f28553super = true;
                            }
                            this.f28550else.reportMatch(this);
                            m31997continue();
                        } else {
                            cimport.f34167goto = this.f28550else.recoverInline(this);
                        }
                        m32073extends(144);
                        l0();
                    }
                }
            } catch (ql1 e2) {
                cimport.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cimport;
        } finally {
            m32006synchronized();
        }
    }

    public final Cnative h0() throws ql1 {
        Cnative cnative = new Cnative(this.f28546break, m32074final());
        m31999instanceof(cnative, 14, 7);
        try {
            try {
                m32003protected(cnative, 1);
                m32073extends(99);
                x(12);
                m32073extends(100);
                V();
                m32073extends(101);
                x(13);
            } catch (ql1 e2) {
                cnative.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cnative;
        } finally {
            m32006synchronized();
        }
    }

    public final Cpublic i0() throws ql1 {
        Cpublic cpublic = new Cpublic(this.f28546break, m32074final());
        m31999instanceof(cpublic, 20, 10);
        try {
            try {
                m32073extends(115);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                if (iLA == 4) {
                    m32003protected(cpublic, 1);
                    m32073extends(107);
                    p0();
                } else if (iLA == 10) {
                    m32003protected(cpublic, 2);
                    m32073extends(108);
                    x(10);
                    m32073extends(109);
                    V();
                    m32073extends(110);
                    x(11);
                } else if (iLA == 39) {
                    m32003protected(cpublic, 3);
                    m32073extends(112);
                    x(39);
                } else if (iLA == 41) {
                    m32003protected(cpublic, 5);
                    m32073extends(114);
                    X();
                } else if (iLA == 6) {
                    m32003protected(cpublic, 4);
                    m32073extends(113);
                    x(6);
                } else {
                    if (iLA != 7) {
                        throw new v31(this);
                    }
                    m32003protected(cpublic, 5);
                    m32073extends(114);
                    X();
                }
            } catch (ql1 e2) {
                cpublic.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cpublic;
        } finally {
            m32006synchronized();
        }
    }

    public final Creturn j0() throws ql1 {
        Creturn creturn = new Creturn(this.f28546break, m32074final());
        m31999instanceof(creturn, 44, 22);
        try {
            try {
                m32003protected(creturn, 1);
                m32073extends(206);
                c0();
                m32073extends(209);
                this.f28550else.sync(this);
                if (this.f28552goto.LA(1) == 35) {
                    m32073extends(207);
                    x(35);
                    m32073extends(208);
                    c0();
                }
            } catch (ql1 e2) {
                creturn.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return creturn;
        } finally {
            m32006synchronized();
        }
    }

    public final Cstatic k0() throws ql1 {
        Cstatic cstatic = new Cstatic(this.f28546break, m32074final());
        m31999instanceof(cstatic, 36, 18);
        try {
            try {
                m32003protected(cstatic, 1);
                m32073extends(180);
                R();
                m32073extends(185);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                while ((iLA & (-64)) == 0 && ((1 << iLA) & 33470545920L) != 0) {
                    m32073extends(181);
                    cstatic.f34168goto = this.f28552goto.LT(1);
                    int iLA2 = this.f28552goto.LA(1);
                    if ((iLA2 & (-64)) != 0 || ((1 << iLA2) & 33470545920L) == 0) {
                        cstatic.f34168goto = this.f28550else.recoverInline(this);
                    } else {
                        if (this.f28552goto.LA(1) == -1) {
                            this.f28553super = true;
                        }
                        this.f28550else.reportMatch(this);
                        m31997continue();
                    }
                    m32073extends(182);
                    R();
                    m32073extends(187);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                }
            } catch (ql1 e2) {
                cstatic.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cstatic;
        } finally {
            m32006synchronized();
        }
    }

    public final Cswitch l0() throws ql1 {
        Cswitch cswitch = new Cswitch(this.f28546break, m32074final());
        m31999instanceof(cswitch, 6, 3);
        try {
            try {
                m32003protected(cswitch, 1);
                m32073extends(63);
                m0();
                m32073extends(68);
                this.f28550else.sync(this);
                int iLA = this.f28552goto.LA(1);
                while (true) {
                    if (iLA != 8 && iLA != 9) {
                        break;
                    }
                    m32073extends(64);
                    cswitch.f34169goto = this.f28552goto.LT(1);
                    int iLA2 = this.f28552goto.LA(1);
                    if (iLA2 == 8 || iLA2 == 9) {
                        if (this.f28552goto.LA(1) == -1) {
                            this.f28553super = true;
                        }
                        this.f28550else.reportMatch(this);
                        m31997continue();
                    } else {
                        cswitch.f34169goto = this.f28550else.recoverInline(this);
                    }
                    m32073extends(65);
                    m0();
                    m32073extends(70);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                }
            } catch (ql1 e2) {
                cswitch.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cswitch;
        } finally {
            m32006synchronized();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0079 A[Catch: all -> 0x0092, ql1 -> 0x0094, LOOP:0: B:24:0x0075->B:26:0x0079, LOOP_END, TRY_LEAVE, TryCatch #1 {ql1 -> 0x0094, blocks: (B:3:0x0013, B:20:0x003f, B:21:0x0044, B:22:0x0045, B:23:0x0052, B:26:0x0079), top: B:37:0x0013, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Cthrows m0() throws ql1 {
        int iLA;
        Cthrows cthrows = new Cthrows(this.f28546break, m32074final());
        m31999instanceof(cthrows, 8, 4);
        try {
            try {
                m32073extends(80);
                this.f28550else.sync(this);
                int iLA2 = this.f28552goto.LA(1);
                if (iLA2 == 1 || iLA2 == 5 || iLA2 == 7 || iLA2 == 41) {
                    m32003protected(cthrows, 1);
                    m32073extends(71);
                    T();
                    m32073extends(72);
                    e0();
                    m32073extends(76);
                    this.f28550else.sync(this);
                    iLA = this.f28552goto.LA(1);
                    while (iLA == 12) {
                        m32073extends(73);
                        h0();
                        m32073extends(78);
                        this.f28550else.sync(this);
                        iLA = this.f28552goto.LA(1);
                    }
                } else {
                    if (iLA2 != 16) {
                        if (iLA2 != 17) {
                            if (iLA2 != 20) {
                                if (iLA2 != 21) {
                                    throw new v31(this);
                                }
                            }
                        }
                        m32003protected(cthrows, 1);
                        m32073extends(71);
                        T();
                        m32073extends(72);
                        e0();
                        m32073extends(76);
                        this.f28550else.sync(this);
                        iLA = this.f28552goto.LA(1);
                        while (iLA == 12) {
                        }
                    }
                    m32003protected(cthrows, 2);
                    m32073extends(79);
                    P();
                }
            } catch (ql1 e2) {
                cthrows.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cthrows;
        } finally {
            m32006synchronized();
        }
    }

    public final Cdefault n0() throws ql1 {
        Cdefault cdefault = new Cdefault(this.f28546break, m32074final());
        m31999instanceof(cdefault, 42, 21);
        try {
            try {
                m32003protected(cdefault, 1);
                m32073extends(202);
                this.f28550else.sync(this);
                if (this.f28552goto.LA(1) == 14) {
                    m32073extends(201);
                    cdefault.f34163goto = x(14);
                }
                m32073extends(204);
                o0();
            } catch (ql1 e2) {
                cdefault.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cdefault;
        } finally {
            m32006synchronized();
        }
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: native */
    public Vocabulary mo2323native() {
        return Y;
    }

    public final Cextends o0() throws ql1 {
        Cextends cextends = new Cextends(this.f28546break, m32074final());
        m31999instanceof(cextends, 24, 12);
        try {
            try {
                m32073extends(139);
                this.f28550else.sync(this);
                int iMo31913super = ((org.antlr.v4.runtime.atn.Cnew) m32082this()).mo31913super(this.f28552goto, 11, this.f28546break);
                if (iMo31913super == 1) {
                    m32003protected(cextends, 1);
                    m32073extends(131);
                    g0();
                    m32073extends(134);
                    this.f28550else.sync(this);
                    if (this.f28552goto.LA(1) == 23) {
                        m32073extends(132);
                        cextends.f34164goto = x(23);
                        m32073extends(133);
                        o0();
                    }
                } else if (iMo31913super == 2) {
                    m32003protected(cextends, 2);
                    m32073extends(136);
                    x(8);
                    m32073extends(137);
                    x(23);
                    m32073extends(138);
                    o0();
                }
            } catch (ql1 e2) {
                cextends.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cextends;
        } finally {
            m32006synchronized();
        }
    }

    public final Cfinally p0() throws ql1 {
        Cfinally cfinally = new Cfinally(this.f28546break, m32074final());
        m31999instanceof(cfinally, 48, 24);
        try {
            try {
                m32003protected(cfinally, 1);
                m32073extends(213);
                x(4);
                m32073extends(214);
                j0();
            } catch (ql1 e2) {
                cfinally.f5338else = e2;
                this.f28550else.reportError(this, e2);
                this.f28550else.recover(this, e2);
            }
            return cfinally;
        } finally {
            m32006synchronized();
        }
    }

    @Override // org.antlr.v4.runtime.Cthis
    @Deprecated
    /* renamed from: throw */
    public String[] mo2325throw() {
        return Z;
    }
}
