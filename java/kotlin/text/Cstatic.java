package kotlin.text;

import android.support.v4.an1;
import android.support.v4.bn0;
import android.support.v4.c92;
import android.support.v4.dn0;
import android.support.v4.gf2;
import android.support.v4.h91;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.nk;
import android.support.v4.qb1;
import android.support.v4.um0;
import android.support.v4.wp0;
import android.support.v4.yr0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.b2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.collections.Cclass;
import kotlin.collections.Cfinal;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0082\u0001\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0019\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0016\u001a$\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\u0007\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\b\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\t\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\n\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a$\u0010\u000b\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a\u0016\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\n\u0010\r\u001a\u00020\f\"\u00020\u0002\u001a\u0016\u0010\u000f\u001a\u00020\u0006*\u00020\u00062\n\u0010\r\u001a\u00020\f\"\u00020\u0002\u001a\u0016\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\n\u0010\r\u001a\u00020\f\"\u00020\u0002\u001a\u0016\u0010\u0011\u001a\u00020\u0006*\u00020\u00062\n\u0010\r\u001a\u00020\f\"\u00020\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0000*\u00020\u00002\n\u0010\r\u001a\u00020\f\"\u00020\u0002\u001a\u0016\u0010\u0013\u001a\u00020\u0006*\u00020\u00062\n\u0010\r\u001a\u00020\f\"\u00020\u0002\u001a\n\u0010\u0014\u001a\u00020\u0000*\u00020\u0000\u001a\r\u0010\u0015\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\n\u0010\u0016\u001a\u00020\u0000*\u00020\u0000\u001a\r\u0010\u0017\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\n\u0010\u0018\u001a\u00020\u0000*\u00020\u0000\u001a\r\u0010\u0019\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\u001c\u0010\u001d\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u001a\u001c\u0010\u001e\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u001a\u001c\u0010\u001f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u001a\u001c\u0010 \u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u001a \u0010!\u001a\u00020\u0003*\u0004\u0018\u00010\u0000H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\r\u0010\"\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a\r\u0010#\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a\r\u0010$\u001a\u00020\u0003*\u00020\u0000H\u0087\b\u001a \u0010%\u001a\u00020\u0003*\u0004\u0018\u00010\u0000H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\r\u0010'\u001a\u00020&*\u00020\u0000H\u0086\u0002\u001a\u000f\u0010(\u001a\u00020\u0006*\u0004\u0018\u00010\u0006H\u0087\b\u001a9\u0010-\u001a\u00028\u0001\"\f\b\u0000\u0010)*\u00020\u0000*\u00028\u0001\"\u0004\b\u0001\u0010**\u00028\u00002\f\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00010+H\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010.\u001a9\u0010/\u001a\u00028\u0001\"\f\b\u0000\u0010)*\u00020\u0000*\u00028\u0001\"\u0004\b\u0001\u0010**\u00028\u00002\f\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00010+H\u0087\bø\u0001\u0000¢\u0006\u0004\b/\u0010.\u001a\u0012\u00101\u001a\u00020\u0003*\u00020\u00002\u0006\u00100\u001a\u00020\u001a\u001a\u0012\u00104\u001a\u00020\u0006*\u00020\u00062\u0006\u00103\u001a\u000202\u001a\u0012\u00105\u001a\u00020\u0000*\u00020\u00002\u0006\u00103\u001a\u000202\u001a\u001d\u00108\u001a\u00020\u0000*\u00020\u00062\u0006\u00106\u001a\u00020\u001a2\u0006\u00107\u001a\u00020\u001aH\u0087\b\u001a\u001f\u0010;\u001a\u00020\u0006*\u00020\u00002\u0006\u00109\u001a\u00020\u001a2\b\b\u0002\u0010:\u001a\u00020\u001aH\u0087\b\u001a\u0012\u0010<\u001a\u00020\u0006*\u00020\u00002\u0006\u00103\u001a\u000202\u001a\u001c\u0010?\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001c\u0010@\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001c\u0010A\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001c\u0010B\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001c\u0010C\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001c\u0010D\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001c\u0010E\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001c\u0010F\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\"\u0010H\u001a\u00020\u0000*\u00020\u00002\u0006\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\u001a2\u0006\u0010G\u001a\u00020\u0000\u001a%\u0010I\u001a\u00020\u0006*\u00020\u00062\u0006\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\u001a2\u0006\u0010G\u001a\u00020\u0000H\u0087\b\u001a\u001a\u0010J\u001a\u00020\u0000*\u00020\u00002\u0006\u00103\u001a\u0002022\u0006\u0010G\u001a\u00020\u0000\u001a\u001d\u0010K\u001a\u00020\u0006*\u00020\u00062\u0006\u00103\u001a\u0002022\u0006\u0010G\u001a\u00020\u0000H\u0087\b\u001a\u001a\u0010L\u001a\u00020\u0000*\u00020\u00002\u0006\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\u001a\u001a\u001d\u0010M\u001a\u00020\u0006*\u00020\u00062\u0006\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\u001aH\u0087\b\u001a\u0012\u0010N\u001a\u00020\u0000*\u00020\u00002\u0006\u00103\u001a\u000202\u001a\u0015\u0010O\u001a\u00020\u0006*\u00020\u00062\u0006\u00103\u001a\u000202H\u0087\b\u001a\u0012\u0010Q\u001a\u00020\u0000*\u00020\u00002\u0006\u0010P\u001a\u00020\u0000\u001a\u0012\u0010R\u001a\u00020\u0006*\u00020\u00062\u0006\u0010P\u001a\u00020\u0000\u001a\u0012\u0010T\u001a\u00020\u0000*\u00020\u00002\u0006\u0010S\u001a\u00020\u0000\u001a\u0012\u0010U\u001a\u00020\u0006*\u00020\u00062\u0006\u0010S\u001a\u00020\u0000\u001a\u001a\u0010V\u001a\u00020\u0000*\u00020\u00002\u0006\u0010P\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0000\u001a\u001a\u0010W\u001a\u00020\u0006*\u00020\u00062\u0006\u0010P\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0000\u001a\u0012\u0010X\u001a\u00020\u0000*\u00020\u00002\u0006\u0010=\u001a\u00020\u0000\u001a\u0012\u0010Y\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u0000\u001a$\u0010Z\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a$\u0010[\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a$\u0010\\\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a$\u0010]\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a$\u0010^\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a$\u0010_\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a$\u0010`\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a$\u0010a\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u0006\u001a\u001d\u0010d\u001a\u00020\u0006*\u00020\u00002\u0006\u0010c\u001a\u00020b2\u0006\u0010G\u001a\u00020\u0006H\u0087\b\u001a.\u0010g\u001a\u00020\u0006*\u00020\u00002\u0006\u0010c\u001a\u00020b2\u0014\b\b\u0010f\u001a\u000e\u0012\u0004\u0012\u00020e\u0012\u0004\u0012\u00020\u00000\u0001H\u0087\bø\u0001\u0000\u001a\u001d\u0010h\u001a\u00020\u0006*\u00020\u00002\u0006\u0010c\u001a\u00020b2\u0006\u0010G\u001a\u00020\u0006H\u0087\b\u001a+\u0010i\u001a\u00020\u0006*\u00020\u00062\u0012\u0010f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\bi\u0010j\u001a+\u0010k\u001a\u00020\u0006*\u00020\u00062\u0012\u0010f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\bk\u0010j\u001a\u0015\u0010l\u001a\u00020\u0003*\u00020\u00002\u0006\u0010c\u001a\u00020bH\u0087\f\u001a4\u0010q\u001a\u00020\u0003*\u00020\u00002\u0006\u0010m\u001a\u00020\u001a2\u0006\u0010n\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010p\u001a\u00020\u0003H\u0000\u001a\u001c\u0010s\u001a\u00020\u0003*\u00020\u00002\u0006\u0010r\u001a\u00020\u00022\b\b\u0002\u0010p\u001a\u00020\u0003\u001a\u001c\u0010t\u001a\u00020\u0003*\u00020\u00002\u0006\u0010r\u001a\u00020\u00022\b\b\u0002\u0010p\u001a\u00020\u0003\u001a\u001c\u0010u\u001a\u00020\u0003*\u00020\u00002\u0006\u0010P\u001a\u00020\u00002\b\b\u0002\u0010p\u001a\u00020\u0003\u001a$\u0010v\u001a\u00020\u0003*\u00020\u00002\u0006\u0010P\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a\u001c\u0010w\u001a\u00020\u0003*\u00020\u00002\u0006\u0010S\u001a\u00020\u00002\b\b\u0002\u0010p\u001a\u00020\u0003\u001a\u001c\u0010x\u001a\u00020\u0006*\u00020\u00002\u0006\u0010n\u001a\u00020\u00002\b\b\u0002\u0010p\u001a\u00020\u0003\u001a\u001c\u0010y\u001a\u00020\u0006*\u00020\u00002\u0006\u0010n\u001a\u00020\u00002\b\b\u0002\u0010p\u001a\u00020\u0003\u001a&\u0010z\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a&\u0010{\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a=\u0010}\u001a\u00020\u001a*\u00020\u00002\u0006\u0010n\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\u001a2\u0006\u0010p\u001a\u00020\u00032\b\b\u0002\u0010|\u001a\u00020\u0003H\u0002¢\u0006\u0004\b}\u0010~\u001aL\u0010\u0082\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0081\u0001*\u00020\u00002\r\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u007f2\u0006\u00109\u001a\u00020\u001a2\u0006\u0010p\u001a\u00020\u00032\u0006\u0010|\u001a\u00020\u0003H\u0002¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a=\u0010\u0084\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0081\u0001*\u00020\u00002\r\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u007f2\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a=\u0010\u0085\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0081\u0001*\u00020\u00002\r\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u007f2\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a.\u0010\u0086\u0001\u001a\u00020\u001a*\u00020\u00002\r\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u007f2\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a.\u0010\u0087\u0001\u001a\u00020\u001a*\u00020\u00002\r\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u007f2\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a'\u0010\u0088\u0001\u001a\u00020\u001a*\u00020\u00002\u0006\u0010r\u001a\u00020\u00022\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a(\u0010\u008a\u0001\u001a\u00020\u001a*\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u00062\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a'\u0010\u008b\u0001\u001a\u00020\u001a*\u00020\u00002\u0006\u0010r\u001a\u00020\u00022\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a(\u0010\u008c\u0001\u001a\u00020\u001a*\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u00062\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u0003\u001a \u0010\u008d\u0001\u001a\u00020\u0003*\u00020\u00002\u0006\u0010n\u001a\u00020\u00002\b\b\u0002\u0010p\u001a\u00020\u0003H\u0086\u0002\u001a \u0010\u008e\u0001\u001a\u00020\u0003*\u00020\u00002\u0006\u0010r\u001a\u00020\u00022\b\b\u0002\u0010p\u001a\u00020\u0003H\u0086\u0002\u001a\u0016\u0010\u008f\u0001\u001a\u00020\u0003*\u00020\u00002\u0006\u0010c\u001a\u00020bH\u0087\n\u001aE\u0010\u0093\u0001\u001a\t\u0012\u0004\u0012\u0002020\u0092\u0001*\u00020\u00002\u0007\u0010\u0090\u0001\u001a\u00020\f2\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u00032\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001\u001aN\u0010\u0096\u0001\u001a\t\u0012\u0004\u0012\u0002020\u0092\u0001*\u00020\u00002\u0010\u0010\u0090\u0001\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020\u00060\u0095\u00012\b\b\u0002\u00109\u001a\u00020\u001a2\b\b\u0002\u0010p\u001a\u00020\u00032\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0013\u0010\u0099\u0001\u001a\u00030\u0098\u00012\u0007\u0010\u0091\u0001\u001a\u00020\u001aH\u0000\u001aF\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u0092\u0001*\u00020\u00002\u0014\u0010\u0090\u0001\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020\u00060\u0095\u0001\"\u00020\u00062\b\b\u0002\u0010p\u001a\u00020\u00032\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001a¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001\u001aF\u0010\u009d\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u009c\u0001*\u00020\u00002\u0014\u0010\u0090\u0001\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020\u00060\u0095\u0001\"\u00020\u00062\b\b\u0002\u0010p\u001a\u00020\u00032\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001a¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001\u001a4\u0010\u009f\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u0092\u0001*\u00020\u00002\u000b\u0010\u0090\u0001\u001a\u00020\f\"\u00020\u00022\b\b\u0002\u0010p\u001a\u00020\u00032\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001a\u001a4\u0010 \u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u009c\u0001*\u00020\u00002\u000b\u0010\u0090\u0001\u001a\u00020\f\"\u00020\u00022\b\b\u0002\u0010p\u001a\u00020\u00032\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001a\u001a6\u0010¡\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u009c\u0001*\u00020\u00002\u0006\u0010=\u001a\u00020\u00062\u0006\u0010p\u001a\u00020\u00032\u0007\u0010\u0091\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\b¡\u0001\u0010¢\u0001\u001a(\u0010£\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u009c\u0001*\u00020\u00002\u0006\u0010c\u001a\u00020b2\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001aH\u0087\b\u001a(\u0010¤\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u0092\u0001*\u00020\u00002\u0006\u0010c\u001a\u00020b2\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u001aH\u0087\b\u001a\u0012\u0010¥\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u0092\u0001*\u00020\u0000\u001a\u0012\u0010¦\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u009c\u0001*\u00020\u0000\u001a\u0019\u0010§\u0001\u001a\u00020\u0003*\u0004\u0018\u00010\u00002\b\u0010n\u001a\u0004\u0018\u00010\u0000H\u0000\u001a\u0019\u0010¨\u0001\u001a\u00020\u0003*\u0004\u0018\u00010\u00002\b\u0010n\u001a\u0004\u0018\u00010\u0000H\u0000\u001a\r\u0010©\u0001\u001a\u00020\u0003*\u00020\u0006H\u0007\u001a\u0018\u0010ª\u0001\u001a\u0004\u0018\u00010\u0003*\u00020\u0006H\u0007¢\u0006\u0006\bª\u0001\u0010«\u0001\"\u001a\u0010®\u0001\u001a\u000202*\u00020\u00008F@\u0006¢\u0006\b\u001a\u0006\b¬\u0001\u0010\u00ad\u0001\"\u001a\u0010±\u0001\u001a\u00020\u001a*\u00020\u00008F@\u0006¢\u0006\b\u001a\u0006\b¯\u0001\u0010°\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006²\u0001"}, d2 = {"", "Lkotlin/Function1;", "", "", "predicate", "S4", "", "V4", "e5", "h5", "Y4", "b5", "", "chars", "T4", "W4", "f5", "i5", "Z4", "c5", "R4", "U4", "d5", "g5", "X4", "a5", "", "length", "padChar", "f3", "g3", "b3", "c3", "N2", "J2", "L2", "K2", "M2", "Landroid/support/v4/nk;", "O2", "a3", "C", "R", "Lkotlin/Function0;", "defaultValue", "y2", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "x2", "index", "w2", "Landroid/support/v4/dn0;", "range", "x4", "t4", "start", "end", "u4", "startIndex", "endIndex", "v4", "w4", "delimiter", "missingDelimiterValue", "H4", "I4", "z4", "A4", "L4", "M4", "D4", "E4", "replacement", "V3", "X3", "W3", "Y3", "q3", "s3", "r3", "t3", "prefix", "o3", "p3", "suffix", "u3", "v3", "x3", "z3", "w3", "y3", "K3", "L3", "C3", "D3", "H3", "G3", "O3", "P3", "Lkotlin/text/goto;", "regex", "A3", "Lkotlin/text/MatchResult;", "transform", "B3", "S3", "T3", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "U3", "Z2", "thisOffset", "other", "otherOffset", "ignoreCase", "n3", "char", "n4", "l2", "p4", "o4", "m2", "a2", "c2", "G2", "U2", "last", "B2", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I", "", "strings", "Landroid/support/v4/qb1;", "q2", "(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Landroid/support/v4/qb1;", "p2", "s2", "F2", "T2", "z2", TypedValues.Custom.S_STRING, "A2", "P2", "Q2", "f2", "e2", "g2", "delimiters", "limit", "Lkotlin/sequences/Sequence;", "j3", "(Ljava/lang/CharSequence;[CIZI)Lkotlin/sequences/Sequence;", "", "k3", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "Landroid/support/v4/ub2;", "Z3", "j4", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "", "c4", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "i4", "b4", "d4", "(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;", "a4", "h4", "X2", "Y2", "j2", "k2", "P4", "Q4", "(Ljava/lang/String;)Ljava/lang/Boolean;", "u2", "(Ljava/lang/CharSequence;)Landroid/support/v4/dn0;", "indices", "v2", "(Ljava/lang/CharSequence;)I", "lastIndex", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.static, reason: invalid class name */
/* loaded from: classes.dex */
public class Cstatic extends Creturn {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"kotlin/text/static$do", "Landroid/support/v4/nk;", "", "if", "", "hasNext", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.static$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cdo extends nk {

        /* renamed from: do, reason: not valid java name */
        private int f28045do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ CharSequence f28046if;

        public Cdo(CharSequence charSequence) {
            this.f28046if = charSequence;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f28045do < this.f28046if.length();
        }

        @Override // android.support.v4.nk
        /* renamed from: if */
        public char mo5268if() {
            CharSequence charSequence = this.f28046if;
            int i = this.f28045do;
            this.f28045do = i + 1;
            return charSequence.charAt(i);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0010\r\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "currentIndex", "Landroid/support/v4/qb1;", "invoke", "(Ljava/lang/CharSequence;I)Landroid/support/v4/qb1;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.static$for, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cfor extends yr0 implements Function2<CharSequence, Integer, qb1<? extends Integer, ? extends Integer>> {
        public final /* synthetic */ List $delimitersList;
        public final /* synthetic */ boolean $ignoreCase;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(List list, boolean z) {
            super(2);
            this.$delimitersList = list;
            this.$ignoreCase = z;
        }

        @z41
        public final qb1<Integer, Integer> invoke(@m41 CharSequence receiver, int i) {
            Csuper.m30700throw(receiver, "$receiver");
            qb1 qb1VarQ2 = Cstatic.q2(receiver, this.$delimitersList, i, this.$ignoreCase, false);
            if (qb1VarQ2 != null) {
                return c92.m819do(qb1VarQ2.getFirst(), Integer.valueOf(((String) qb1VarQ2.getSecond()).length()));
            }
            return null;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ qb1<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return invoke(charSequence, num.intValue());
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0010\r\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "currentIndex", "Landroid/support/v4/qb1;", "invoke", "(Ljava/lang/CharSequence;I)Landroid/support/v4/qb1;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.static$if, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cif extends yr0 implements Function2<CharSequence, Integer, qb1<? extends Integer, ? extends Integer>> {
        public final /* synthetic */ char[] $delimiters;
        public final /* synthetic */ boolean $ignoreCase;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(char[] cArr, boolean z) {
            super(2);
            this.$delimiters = cArr;
            this.$ignoreCase = z;
        }

        @z41
        public final qb1<Integer, Integer> invoke(@m41 CharSequence receiver, int i) {
            Csuper.m30700throw(receiver, "$receiver");
            int iG2 = Cstatic.G2(receiver, this.$delimiters, i, this.$ignoreCase);
            if (iG2 < 0) {
                return null;
            }
            return c92.m819do(Integer.valueOf(iG2), 1);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ qb1<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return invoke(charSequence, num.intValue());
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/support/v4/dn0;", "it", "", "invoke", "(Landroid/support/v4/dn0;)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.static$new, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cnew extends yr0 implements Function1<dn0, String> {
        public final /* synthetic */ CharSequence $this_splitToSequence;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(CharSequence charSequence) {
            super(1);
            this.$this_splitToSequence = charSequence;
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final String invoke(@m41 dn0 it) {
            Csuper.m30700throw(it, "it");
            return Cstatic.w4(this.$this_splitToSequence, it);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/support/v4/dn0;", "it", "", "invoke", "(Landroid/support/v4/dn0;)Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.static$try, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Ctry extends yr0 implements Function1<dn0, String> {
        public final /* synthetic */ CharSequence $this_splitToSequence;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(CharSequence charSequence) {
            super(1);
            this.$this_splitToSequence = charSequence;
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final String invoke(@m41 dn0 it) {
            Csuper.m30700throw(it, "it");
            return Cstatic.w4(this.$this_splitToSequence, it);
        }
    }

    public static final int A2(@m41 CharSequence indexOf, @m41 String string, int i, boolean z) {
        Csuper.m30700throw(indexOf, "$this$indexOf");
        Csuper.m30700throw(string, "string");
        return (z || !(indexOf instanceof String)) ? C2(indexOf, string, i, indexOf.length(), z, false, 16, null) : ((String) indexOf).indexOf(string, i);
    }

    @um0
    private static final String A3(CharSequence charSequence, Cgoto cgoto, String str) {
        return cgoto.replace(charSequence, str);
    }

    @m41
    public static final String A4(@m41 String substringAfter, @m41 String delimiter, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringAfter, "$this$substringAfter");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iE2 = E2(substringAfter, delimiter, 0, false, 6, null);
        if (iE2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfter.substring(iE2 + delimiter.length(), substringAfter.length());
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    private static final int B2(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        bn0 dn0Var = !z2 ? new dn0(Ccase.m30873final(i, 0), Ccase.m30885return(i2, charSequence.length())) : Ccase.j(Ccase.m30885return(i, v2(charSequence)), Ccase.m30873final(i2, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int iM592do = dn0Var.m592do();
            int iM594if = dn0Var.m594if();
            int iM593for = dn0Var.m593for();
            if (iM593for >= 0) {
                if (iM592do > iM594if) {
                    return -1;
                }
            } else if (iM592do < iM594if) {
                return -1;
            }
            while (!Creturn.q1((String) charSequence2, 0, (String) charSequence, iM592do, charSequence2.length(), z)) {
                if (iM592do == iM594if) {
                    return -1;
                }
                iM592do += iM593for;
            }
            return iM592do;
        }
        int iM592do2 = dn0Var.m592do();
        int iM594if2 = dn0Var.m594if();
        int iM593for2 = dn0Var.m593for();
        if (iM593for2 >= 0) {
            if (iM592do2 > iM594if2) {
                return -1;
            }
        } else if (iM592do2 < iM594if2) {
            return -1;
        }
        while (!n3(charSequence2, 0, charSequence, iM592do2, charSequence2.length(), z)) {
            if (iM592do2 == iM594if2) {
                return -1;
            }
            iM592do2 += iM593for2;
        }
        return iM592do2;
    }

    @um0
    private static final String B3(CharSequence charSequence, Cgoto cgoto, Function1<? super MatchResult, ? extends CharSequence> function1) {
        return cgoto.replace(charSequence, function1);
    }

    public static /* synthetic */ String B4(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return z4(str, c, str2);
    }

    public static /* synthetic */ int C2(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        return B2(charSequence, charSequence2, i, i2, z, (i3 & 16) != 0 ? false : z2);
    }

    @m41
    public static final String C3(@m41 String replaceAfter, char c, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceAfter, "$this$replaceAfter");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iD2 = D2(replaceAfter, c, 0, false, 6, null);
        return iD2 == -1 ? missingDelimiterValue : V3(replaceAfter, iD2 + 1, replaceAfter.length(), replacement).toString();
    }

    public static /* synthetic */ String C4(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return A4(str, str2, str3);
    }

    public static /* synthetic */ int D2(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return z2(charSequence, c, i, z);
    }

    @m41
    public static final String D3(@m41 String replaceAfter, @m41 String delimiter, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceAfter, "$this$replaceAfter");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iE2 = E2(replaceAfter, delimiter, 0, false, 6, null);
        return iE2 == -1 ? missingDelimiterValue : V3(replaceAfter, iE2 + delimiter.length(), replaceAfter.length(), replacement).toString();
    }

    @m41
    public static String D4(@m41 String substringAfterLast, char c, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringAfterLast, "$this$substringAfterLast");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iR2 = R2(substringAfterLast, c, 0, false, 6, null);
        if (iR2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfterLast.substring(iR2 + 1, substringAfterLast.length());
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ int E2(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return A2(charSequence, str, i, z);
    }

    public static /* synthetic */ String E3(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return C3(str, c, str2, str3);
    }

    @m41
    public static final String E4(@m41 String substringAfterLast, @m41 String delimiter, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringAfterLast, "$this$substringAfterLast");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iS2 = S2(substringAfterLast, delimiter, 0, false, 6, null);
        if (iS2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfterLast.substring(iS2 + delimiter.length(), substringAfterLast.length());
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final int F2(@m41 CharSequence indexOfAny, @m41 Collection<String> strings, int i, boolean z) {
        Integer first;
        Csuper.m30700throw(indexOfAny, "$this$indexOfAny");
        Csuper.m30700throw(strings, "strings");
        qb1<Integer, String> qb1VarQ2 = q2(indexOfAny, strings, i, z, false);
        if (qb1VarQ2 == null || (first = qb1VarQ2.getFirst()) == null) {
            return -1;
        }
        return first.intValue();
    }

    public static /* synthetic */ String F3(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return D3(str, str2, str3, str4);
    }

    public static /* synthetic */ String F4(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return D4(str, c, str2);
    }

    public static final int G2(@m41 CharSequence indexOfAny, @m41 char[] chars, int i, boolean z) {
        boolean z2;
        Csuper.m30700throw(indexOfAny, "$this$indexOfAny");
        Csuper.m30700throw(chars, "chars");
        if (!z && chars.length == 1 && (indexOfAny instanceof String)) {
            return ((String) indexOfAny).indexOf(Cclass.Hr(chars), i);
        }
        int iM30873final = Ccase.m30873final(i, 0);
        int iV2 = v2(indexOfAny);
        if (iM30873final > iV2) {
            return -1;
        }
        while (true) {
            char cCharAt = indexOfAny.charAt(iM30873final);
            int length = chars.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = false;
                    break;
                }
                if (kotlin.text.Ctry.m31247transient(chars[i2], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                return iM30873final;
            }
            if (iM30873final == iV2) {
                return -1;
            }
            iM30873final++;
        }
    }

    @m41
    public static final String G3(@m41 String replaceAfterLast, char c, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceAfterLast, "$this$replaceAfterLast");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iR2 = R2(replaceAfterLast, c, 0, false, 6, null);
        return iR2 == -1 ? missingDelimiterValue : V3(replaceAfterLast, iR2 + 1, replaceAfterLast.length(), replacement).toString();
    }

    public static /* synthetic */ String G4(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return E4(str, str2, str3);
    }

    public static /* synthetic */ int H2(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return F2(charSequence, collection, i, z);
    }

    @m41
    public static final String H3(@m41 String replaceAfterLast, @m41 String delimiter, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceAfterLast, "$this$replaceAfterLast");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iS2 = S2(replaceAfterLast, delimiter, 0, false, 6, null);
        return iS2 == -1 ? missingDelimiterValue : V3(replaceAfterLast, iS2 + delimiter.length(), replaceAfterLast.length(), replacement).toString();
    }

    @m41
    public static final String H4(@m41 String substringBefore, char c, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringBefore, "$this$substringBefore");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iD2 = D2(substringBefore, c, 0, false, 6, null);
        if (iD2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBefore.substring(0, iD2);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ int I2(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return G2(charSequence, cArr, i, z);
    }

    public static /* synthetic */ String I3(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return G3(str, c, str2, str3);
    }

    @m41
    public static final String I4(@m41 String substringBefore, @m41 String delimiter, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringBefore, "$this$substringBefore");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iE2 = E2(substringBefore, delimiter, 0, false, 6, null);
        if (iE2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBefore.substring(0, iE2);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @um0
    private static final boolean J2(CharSequence charSequence) {
        return charSequence.length() == 0;
    }

    public static /* synthetic */ String J3(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return H3(str, str2, str3, str4);
    }

    public static /* synthetic */ String J4(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return H4(str, c, str2);
    }

    @um0
    private static final boolean K2(CharSequence charSequence) {
        return !Creturn.h1(charSequence);
    }

    @m41
    public static final String K3(@m41 String replaceBefore, char c, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceBefore, "$this$replaceBefore");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iD2 = D2(replaceBefore, c, 0, false, 6, null);
        return iD2 == -1 ? missingDelimiterValue : V3(replaceBefore, 0, iD2, replacement).toString();
    }

    public static /* synthetic */ String K4(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return I4(str, str2, str3);
    }

    @um0
    private static final boolean L2(CharSequence charSequence) {
        return charSequence.length() > 0;
    }

    @m41
    public static final String L3(@m41 String replaceBefore, @m41 String delimiter, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceBefore, "$this$replaceBefore");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iE2 = E2(replaceBefore, delimiter, 0, false, 6, null);
        return iE2 == -1 ? missingDelimiterValue : V3(replaceBefore, 0, iE2, replacement).toString();
    }

    @m41
    public static final String L4(@m41 String substringBeforeLast, char c, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringBeforeLast, "$this$substringBeforeLast");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iR2 = R2(substringBeforeLast, c, 0, false, 6, null);
        if (iR2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBeforeLast.substring(0, iR2);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @um0
    private static final boolean M2(CharSequence charSequence) {
        return charSequence == null || Creturn.h1(charSequence);
    }

    public static /* synthetic */ String M3(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return K3(str, c, str2, str3);
    }

    @m41
    public static final String M4(@m41 String substringBeforeLast, @m41 String delimiter, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringBeforeLast, "$this$substringBeforeLast");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iS2 = S2(substringBeforeLast, delimiter, 0, false, 6, null);
        if (iS2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBeforeLast.substring(0, iS2);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @um0
    private static final boolean N2(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static /* synthetic */ String N3(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return L3(str, str2, str3, str4);
    }

    public static /* synthetic */ String N4(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return L4(str, c, str2);
    }

    @m41
    public static final nk O2(@m41 CharSequence iterator) {
        Csuper.m30700throw(iterator, "$this$iterator");
        return new Cdo(iterator);
    }

    @m41
    public static final String O3(@m41 String replaceBeforeLast, char c, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceBeforeLast, "$this$replaceBeforeLast");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iR2 = R2(replaceBeforeLast, c, 0, false, 6, null);
        return iR2 == -1 ? missingDelimiterValue : V3(replaceBeforeLast, 0, iR2, replacement).toString();
    }

    public static /* synthetic */ String O4(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return M4(str, str2, str3);
    }

    public static final int P2(@m41 CharSequence lastIndexOf, char c, int i, boolean z) {
        Csuper.m30700throw(lastIndexOf, "$this$lastIndexOf");
        return (z || !(lastIndexOf instanceof String)) ? U2(lastIndexOf, new char[]{c}, i, z) : ((String) lastIndexOf).lastIndexOf(c, i);
    }

    @m41
    public static final String P3(@m41 String replaceBeforeLast, @m41 String delimiter, @m41 String replacement, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(replaceBeforeLast, "$this$replaceBeforeLast");
        Csuper.m30700throw(delimiter, "delimiter");
        Csuper.m30700throw(replacement, "replacement");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iS2 = S2(replaceBeforeLast, delimiter, 0, false, 6, null);
        return iS2 == -1 ? missingDelimiterValue : V3(replaceBeforeLast, 0, iS2, replacement).toString();
    }

    @iz1(version = "1.5")
    public static final boolean P4(@m41 String toBooleanStrict) {
        Csuper.m30700throw(toBooleanStrict, "$this$toBooleanStrict");
        int iHashCode = toBooleanStrict.hashCode();
        if (iHashCode != 3569038) {
            if (iHashCode == 97196323 && toBooleanStrict.equals(b2.f23510do)) {
                return false;
            }
        } else if (toBooleanStrict.equals(b2.f23511if)) {
            return true;
        }
        throw new IllegalArgumentException("The string doesn't represent a boolean value: " + toBooleanStrict);
    }

    public static final int Q2(@m41 CharSequence lastIndexOf, @m41 String string, int i, boolean z) {
        Csuper.m30700throw(lastIndexOf, "$this$lastIndexOf");
        Csuper.m30700throw(string, "string");
        return (z || !(lastIndexOf instanceof String)) ? B2(lastIndexOf, string, i, 0, z, true) : ((String) lastIndexOf).lastIndexOf(string, i);
    }

    public static /* synthetic */ String Q3(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return O3(str, c, str2, str3);
    }

    @iz1(version = "1.5")
    @z41
    public static final Boolean Q4(@m41 String toBooleanStrictOrNull) {
        Csuper.m30700throw(toBooleanStrictOrNull, "$this$toBooleanStrictOrNull");
        int iHashCode = toBooleanStrictOrNull.hashCode();
        if (iHashCode != 3569038) {
            if (iHashCode == 97196323 && toBooleanStrictOrNull.equals(b2.f23510do)) {
                return Boolean.FALSE;
            }
        } else if (toBooleanStrictOrNull.equals(b2.f23511if)) {
            return Boolean.TRUE;
        }
        return null;
    }

    public static /* synthetic */ int R2(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = v2(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return P2(charSequence, c, i, z);
    }

    public static /* synthetic */ String R3(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return P3(str, str2, str3, str4);
    }

    @m41
    public static CharSequence R4(@m41 CharSequence trim) {
        Csuper.m30700throw(trim, "$this$trim");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zM31207import = kotlin.text.Cnew.m31207import(trim.charAt(!z ? i : length));
            if (z) {
                if (!zM31207import) {
                    break;
                }
                length--;
            } else if (zM31207import) {
                i++;
            } else {
                z = true;
            }
        }
        return trim.subSequence(i, length + 1);
    }

    public static /* synthetic */ int S2(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = v2(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return Q2(charSequence, str, i, z);
    }

    @um0
    private static final String S3(CharSequence charSequence, Cgoto cgoto, String str) {
        return cgoto.replaceFirst(charSequence, str);
    }

    @m41
    public static final CharSequence S4(@m41 CharSequence trim, @m41 Function1<? super Character, Boolean> predicate) {
        Csuper.m30700throw(trim, "$this$trim");
        Csuper.m30700throw(predicate, "predicate");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zBooleanValue = predicate.invoke(Character.valueOf(trim.charAt(!z ? i : length))).booleanValue();
            if (z) {
                if (!zBooleanValue) {
                    break;
                }
                length--;
            } else if (zBooleanValue) {
                i++;
            } else {
                z = true;
            }
        }
        return trim.subSequence(i, length + 1);
    }

    public static final int T2(@m41 CharSequence lastIndexOfAny, @m41 Collection<String> strings, int i, boolean z) {
        Integer first;
        Csuper.m30700throw(lastIndexOfAny, "$this$lastIndexOfAny");
        Csuper.m30700throw(strings, "strings");
        qb1<Integer, String> qb1VarQ2 = q2(lastIndexOfAny, strings, i, z, true);
        if (qb1VarQ2 == null || (first = qb1VarQ2.getFirst()) == null) {
            return -1;
        }
        return first.intValue();
    }

    @gf2(markerClass = {Cthis.class})
    @um0
    @wp0(name = "replaceFirstCharWithChar")
    @h91
    @iz1(version = "1.5")
    private static final String T3(String str, Function1<? super Character, Character> function1) {
        if (!(str.length() > 0)) {
            return str;
        }
        char cCharValue = function1.invoke(Character.valueOf(str.charAt(0))).charValue();
        String strSubstring = str.substring(1);
        Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return String.valueOf(cCharValue) + strSubstring;
    }

    @m41
    public static final CharSequence T4(@m41 CharSequence trim, @m41 char... chars) {
        Csuper.m30700throw(trim, "$this$trim");
        Csuper.m30700throw(chars, "chars");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zX6 = Cclass.X6(chars, trim.charAt(!z ? i : length));
            if (z) {
                if (!zX6) {
                    break;
                }
                length--;
            } else if (zX6) {
                i++;
            } else {
                z = true;
            }
        }
        return trim.subSequence(i, length + 1);
    }

    public static final int U2(@m41 CharSequence lastIndexOfAny, @m41 char[] chars, int i, boolean z) {
        Csuper.m30700throw(lastIndexOfAny, "$this$lastIndexOfAny");
        Csuper.m30700throw(chars, "chars");
        if (!z && chars.length == 1 && (lastIndexOfAny instanceof String)) {
            return ((String) lastIndexOfAny).lastIndexOf(Cclass.Hr(chars), i);
        }
        for (int iM30885return = Ccase.m30885return(i, v2(lastIndexOfAny)); iM30885return >= 0; iM30885return--) {
            char cCharAt = lastIndexOfAny.charAt(iM30885return);
            int length = chars.length;
            boolean z2 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (kotlin.text.Ctry.m31247transient(chars[i2], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                return iM30885return;
            }
        }
        return -1;
    }

    @gf2(markerClass = {Cthis.class})
    @um0
    @wp0(name = "replaceFirstCharWithCharSequence")
    @h91
    @iz1(version = "1.5")
    private static final String U3(String str, Function1<? super Character, ? extends CharSequence> function1) {
        if (!(str.length() > 0)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(function1.invoke(Character.valueOf(str.charAt(0))).toString());
        String strSubstring = str.substring(1);
        Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring);
        return sb.toString();
    }

    @um0
    private static final String U4(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return R4(str).toString();
    }

    public static /* synthetic */ int V2(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = v2(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return T2(charSequence, collection, i, z);
    }

    @m41
    public static final CharSequence V3(@m41 CharSequence replaceRange, int i, int i2, @m41 CharSequence replacement) {
        Csuper.m30700throw(replaceRange, "$this$replaceRange");
        Csuper.m30700throw(replacement, "replacement");
        if (i2 >= i) {
            StringBuilder sb = new StringBuilder();
            sb.append(replaceRange, 0, i);
            Csuper.m30696super(sb, "this.append(value, startIndex, endIndex)");
            sb.append(replacement);
            sb.append(replaceRange, i2, replaceRange.length());
            Csuper.m30696super(sb, "this.append(value, startIndex, endIndex)");
            return sb;
        }
        throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
    }

    @m41
    public static final String V4(@m41 String trim, @m41 Function1<? super Character, Boolean> predicate) {
        Csuper.m30700throw(trim, "$this$trim");
        Csuper.m30700throw(predicate, "predicate");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zBooleanValue = predicate.invoke(Character.valueOf(trim.charAt(!z ? i : length))).booleanValue();
            if (z) {
                if (!zBooleanValue) {
                    break;
                }
                length--;
            } else if (zBooleanValue) {
                i++;
            } else {
                z = true;
            }
        }
        return trim.subSequence(i, length + 1).toString();
    }

    public static /* synthetic */ int W2(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = v2(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return U2(charSequence, cArr, i, z);
    }

    @m41
    public static final CharSequence W3(@m41 CharSequence replaceRange, @m41 dn0 range, @m41 CharSequence replacement) {
        Csuper.m30700throw(replaceRange, "$this$replaceRange");
        Csuper.m30700throw(range, "range");
        Csuper.m30700throw(replacement, "replacement");
        return V3(replaceRange, range.getStart().intValue(), range.getEndInclusive().intValue() + 1, replacement);
    }

    @m41
    public static final String W4(@m41 String trim, @m41 char... chars) {
        Csuper.m30700throw(trim, "$this$trim");
        Csuper.m30700throw(chars, "chars");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zX6 = Cclass.X6(chars, trim.charAt(!z ? i : length));
            if (z) {
                if (!zX6) {
                    break;
                }
                length--;
            } else if (zX6) {
                i++;
            } else {
                z = true;
            }
        }
        return trim.subSequence(i, length + 1).toString();
    }

    @m41
    public static final Sequence<String> X2(@m41 CharSequence lineSequence) {
        Csuper.m30700throw(lineSequence, "$this$lineSequence");
        return m4(lineSequence, new String[]{"\r\n", "\n", org.apache.commons.lang3.Cclass.f28656new}, false, 0, 6, null);
    }

    @um0
    private static final String X3(String str, int i, int i2, CharSequence charSequence) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return V3(str, i, i2, charSequence).toString();
    }

    @m41
    public static final CharSequence X4(@m41 CharSequence trimEnd) {
        Csuper.m30700throw(trimEnd, "$this$trimEnd");
        int length = trimEnd.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (kotlin.text.Cnew.m31207import(trimEnd.charAt(length)));
        return trimEnd.subSequence(0, length + 1);
    }

    @m41
    public static final List<String> Y2(@m41 CharSequence lines) {
        Csuper.m30700throw(lines, "$this$lines");
        return kotlin.sequences.Cclass.i2(X2(lines));
    }

    @um0
    private static final String Y3(String str, dn0 dn0Var, CharSequence charSequence) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return W3(str, dn0Var, charSequence).toString();
    }

    @m41
    public static final CharSequence Y4(@m41 CharSequence trimEnd, @m41 Function1<? super Character, Boolean> predicate) {
        Csuper.m30700throw(trimEnd, "$this$trimEnd");
        Csuper.m30700throw(predicate, "predicate");
        int length = trimEnd.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (predicate.invoke(Character.valueOf(trimEnd.charAt(length))).booleanValue());
        return trimEnd.subSequence(0, length + 1);
    }

    @um0
    private static final boolean Z2(CharSequence charSequence, Cgoto cgoto) {
        return cgoto.matches(charSequence);
    }

    public static final void Z3(int i) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i).toString());
    }

    @m41
    public static final CharSequence Z4(@m41 CharSequence trimEnd, @m41 char... chars) {
        Csuper.m30700throw(trimEnd, "$this$trimEnd");
        Csuper.m30700throw(chars, "chars");
        int length = trimEnd.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (Cclass.X6(chars, trimEnd.charAt(length)));
        return trimEnd.subSequence(0, length + 1);
    }

    @m41
    public static final String a2(@m41 CharSequence commonPrefixWith, @m41 CharSequence other, boolean z) {
        Csuper.m30700throw(commonPrefixWith, "$this$commonPrefixWith");
        Csuper.m30700throw(other, "other");
        int iMin = Math.min(commonPrefixWith.length(), other.length());
        int i = 0;
        while (i < iMin && kotlin.text.Ctry.m31247transient(commonPrefixWith.charAt(i), other.charAt(i), z)) {
            i++;
        }
        int i2 = i - 1;
        if (w2(commonPrefixWith, i2) || w2(other, i2)) {
            i--;
        }
        return commonPrefixWith.subSequence(0, i).toString();
    }

    @um0
    private static final String a3(String str) {
        return str != null ? str : "";
    }

    @um0
    private static final List<String> a4(CharSequence charSequence, Cgoto cgoto, int i) {
        return cgoto.split(charSequence, i);
    }

    @um0
    private static final String a5(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return X4(str).toString();
    }

    public static /* synthetic */ String b2(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return a2(charSequence, charSequence2, z);
    }

    @m41
    public static final CharSequence b3(@m41 CharSequence padEnd, int i, char c) {
        Csuper.m30700throw(padEnd, "$this$padEnd");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        }
        if (i <= padEnd.length()) {
            return padEnd.subSequence(0, padEnd.length());
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append(padEnd);
        int length = i - padEnd.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        return sb;
    }

    @m41
    public static final List<String> b4(@m41 CharSequence split, @m41 char[] delimiters, boolean z, int i) {
        Csuper.m30700throw(split, "$this$split");
        Csuper.m30700throw(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return d4(split, String.valueOf(delimiters[0]), z, i);
        }
        Iterable iterableM31050volatile = kotlin.sequences.Cclass.m31050volatile(l3(split, delimiters, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.Cwhile.l(iterableM31050volatile, 10));
        Iterator it = iterableM31050volatile.iterator();
        while (it.hasNext()) {
            arrayList.add(w4(split, (dn0) it.next()));
        }
        return arrayList;
    }

    @m41
    public static final String b5(@m41 String trimEnd, @m41 Function1<? super Character, Boolean> predicate) {
        CharSequence charSequenceSubSequence;
        Csuper.m30700throw(trimEnd, "$this$trimEnd");
        Csuper.m30700throw(predicate, "predicate");
        int length = trimEnd.length();
        while (true) {
            length--;
            if (length < 0) {
                charSequenceSubSequence = "";
                break;
            }
            if (!predicate.invoke(Character.valueOf(trimEnd.charAt(length))).booleanValue()) {
                charSequenceSubSequence = trimEnd.subSequence(0, length + 1);
                break;
            }
        }
        return charSequenceSubSequence.toString();
    }

    @m41
    public static final String c2(@m41 CharSequence commonSuffixWith, @m41 CharSequence other, boolean z) {
        Csuper.m30700throw(commonSuffixWith, "$this$commonSuffixWith");
        Csuper.m30700throw(other, "other");
        int length = commonSuffixWith.length();
        int iMin = Math.min(length, other.length());
        int i = 0;
        while (i < iMin && kotlin.text.Ctry.m31247transient(commonSuffixWith.charAt((length - i) - 1), other.charAt((r1 - i) - 1), z)) {
            i++;
        }
        if (w2(commonSuffixWith, (length - i) - 1) || w2(other, (r1 - i) - 1)) {
            i--;
        }
        return commonSuffixWith.subSequence(length - i, length).toString();
    }

    @m41
    public static final String c3(@m41 String padEnd, int i, char c) {
        Csuper.m30700throw(padEnd, "$this$padEnd");
        return b3(padEnd, i, c).toString();
    }

    @m41
    public static final List<String> c4(@m41 CharSequence split, @m41 String[] delimiters, boolean z, int i) {
        Csuper.m30700throw(split, "$this$split");
        Csuper.m30700throw(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (!(str.length() == 0)) {
                return d4(split, str, z, i);
            }
        }
        Iterable iterableM31050volatile = kotlin.sequences.Cclass.m31050volatile(m3(split, delimiters, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.Cwhile.l(iterableM31050volatile, 10));
        Iterator it = iterableM31050volatile.iterator();
        while (it.hasNext()) {
            arrayList.add(w4(split, (dn0) it.next()));
        }
        return arrayList;
    }

    @m41
    public static final String c5(@m41 String trimEnd, @m41 char... chars) {
        CharSequence charSequenceSubSequence;
        Csuper.m30700throw(trimEnd, "$this$trimEnd");
        Csuper.m30700throw(chars, "chars");
        int length = trimEnd.length();
        while (true) {
            length--;
            if (length < 0) {
                charSequenceSubSequence = "";
                break;
            }
            if (!Cclass.X6(chars, trimEnd.charAt(length))) {
                charSequenceSubSequence = trimEnd.subSequence(0, length + 1);
                break;
            }
        }
        return charSequenceSubSequence.toString();
    }

    public static /* synthetic */ String d2(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return c2(charSequence, charSequence2, z);
    }

    public static /* synthetic */ CharSequence d3(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return b3(charSequence, i, c);
    }

    private static final List<String> d4(CharSequence charSequence, String str, boolean z, int i) {
        Z3(i);
        int length = 0;
        int iA2 = A2(charSequence, str, 0, z);
        if (iA2 == -1 || i == 1) {
            return kotlin.collections.Csuper.m30144catch(charSequence.toString());
        }
        boolean z2 = i > 0;
        ArrayList arrayList = new ArrayList(z2 ? Ccase.m30885return(i, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iA2).toString());
            length = str.length() + iA2;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            iA2 = A2(charSequence, str, length, z);
        } while (iA2 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    @m41
    public static final CharSequence d5(@m41 CharSequence trimStart) {
        Csuper.m30700throw(trimStart, "$this$trimStart");
        int length = trimStart.length();
        for (int i = 0; i < length; i++) {
            if (!kotlin.text.Cnew.m31207import(trimStart.charAt(i))) {
                return trimStart.subSequence(i, trimStart.length());
            }
        }
        return "";
    }

    public static final boolean e2(@m41 CharSequence contains, char c, boolean z) {
        Csuper.m30700throw(contains, "$this$contains");
        return D2(contains, c, 0, z, 2, null) >= 0;
    }

    public static /* synthetic */ String e3(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return c3(str, i, c);
    }

    public static /* synthetic */ List e4(CharSequence charSequence, Cgoto cgoto, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return cgoto.split(charSequence, i);
    }

    @m41
    public static final CharSequence e5(@m41 CharSequence trimStart, @m41 Function1<? super Character, Boolean> predicate) {
        Csuper.m30700throw(trimStart, "$this$trimStart");
        Csuper.m30700throw(predicate, "predicate");
        int length = trimStart.length();
        for (int i = 0; i < length; i++) {
            if (!predicate.invoke(Character.valueOf(trimStart.charAt(i))).booleanValue()) {
                return trimStart.subSequence(i, trimStart.length());
            }
        }
        return "";
    }

    public static final boolean f2(@m41 CharSequence contains, @m41 CharSequence other, boolean z) {
        Csuper.m30700throw(contains, "$this$contains");
        Csuper.m30700throw(other, "other");
        if (other instanceof String) {
            if (E2(contains, (String) other, 0, z, 2, null) >= 0) {
                return true;
            }
        } else if (C2(contains, other, 0, contains.length(), z, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    @m41
    public static final CharSequence f3(@m41 CharSequence padStart, int i, char c) {
        Csuper.m30700throw(padStart, "$this$padStart");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        }
        if (i <= padStart.length()) {
            return padStart.subSequence(0, padStart.length());
        }
        StringBuilder sb = new StringBuilder(i);
        int length = i - padStart.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        sb.append(padStart);
        return sb;
    }

    public static /* synthetic */ List f4(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return b4(charSequence, cArr, z, i);
    }

    @m41
    public static final CharSequence f5(@m41 CharSequence trimStart, @m41 char... chars) {
        Csuper.m30700throw(trimStart, "$this$trimStart");
        Csuper.m30700throw(chars, "chars");
        int length = trimStart.length();
        for (int i = 0; i < length; i++) {
            if (!Cclass.X6(chars, trimStart.charAt(i))) {
                return trimStart.subSequence(i, trimStart.length());
            }
        }
        return "";
    }

    @um0
    private static final boolean g2(CharSequence contains, Cgoto cgoto) {
        Csuper.m30700throw(contains, "$this$contains");
        return cgoto.containsMatchIn(contains);
    }

    @m41
    public static String g3(@m41 String padStart, int i, char c) {
        Csuper.m30700throw(padStart, "$this$padStart");
        return f3(padStart, i, c).toString();
    }

    public static /* synthetic */ List g4(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return c4(charSequence, strArr, z, i);
    }

    @um0
    private static final String g5(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return d5(str).toString();
    }

    public static /* synthetic */ boolean h2(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return e2(charSequence, c, z);
    }

    public static /* synthetic */ CharSequence h3(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return f3(charSequence, i, c);
    }

    @iz1(version = "1.5")
    @um0
    @Cthis
    private static final Sequence<String> h4(CharSequence charSequence, Cgoto cgoto, int i) {
        return cgoto.splitToSequence(charSequence, i);
    }

    @m41
    public static final String h5(@m41 String trimStart, @m41 Function1<? super Character, Boolean> predicate) {
        CharSequence charSequenceSubSequence;
        Csuper.m30700throw(trimStart, "$this$trimStart");
        Csuper.m30700throw(predicate, "predicate");
        int length = trimStart.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                charSequenceSubSequence = "";
                break;
            }
            if (!predicate.invoke(Character.valueOf(trimStart.charAt(i))).booleanValue()) {
                charSequenceSubSequence = trimStart.subSequence(i, trimStart.length());
                break;
            }
            i++;
        }
        return charSequenceSubSequence.toString();
    }

    public static /* synthetic */ boolean i2(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return f2(charSequence, charSequence2, z);
    }

    public static /* synthetic */ String i3(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return g3(str, i, c);
    }

    @m41
    public static final Sequence<String> i4(@m41 CharSequence splitToSequence, @m41 char[] delimiters, boolean z, int i) {
        Csuper.m30700throw(splitToSequence, "$this$splitToSequence");
        Csuper.m30700throw(delimiters, "delimiters");
        return kotlin.sequences.Cclass.q0(l3(splitToSequence, delimiters, 0, z, i, 2, null), new Ctry(splitToSequence));
    }

    @m41
    public static final String i5(@m41 String trimStart, @m41 char... chars) {
        CharSequence charSequenceSubSequence;
        Csuper.m30700throw(trimStart, "$this$trimStart");
        Csuper.m30700throw(chars, "chars");
        int length = trimStart.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                charSequenceSubSequence = "";
                break;
            }
            if (!Cclass.X6(chars, trimStart.charAt(i))) {
                charSequenceSubSequence = trimStart.subSequence(i, trimStart.length());
                break;
            }
            i++;
        }
        return charSequenceSubSequence.toString();
    }

    public static final boolean j2(@z41 CharSequence charSequence, @z41 CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return Creturn.X0((String) charSequence, (String) charSequence2, true);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!kotlin.text.Ctry.m31247transient(charSequence.charAt(i), charSequence2.charAt(i), true)) {
                return false;
            }
        }
        return true;
    }

    private static final Sequence<dn0> j3(CharSequence charSequence, char[] cArr, int i, boolean z, int i2) {
        Z3(i2);
        return new Ccase(charSequence, i, i2, new Cif(cArr, z));
    }

    @m41
    public static final Sequence<String> j4(@m41 CharSequence splitToSequence, @m41 String[] delimiters, boolean z, int i) {
        Csuper.m30700throw(splitToSequence, "$this$splitToSequence");
        Csuper.m30700throw(delimiters, "delimiters");
        return kotlin.sequences.Cclass.q0(m3(splitToSequence, delimiters, 0, z, i, 2, null), new Cnew(splitToSequence));
    }

    public static final boolean k2(@z41 CharSequence charSequence, @z41 CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return Csuper.m30676else(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    private static final Sequence<dn0> k3(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        Z3(i2);
        return new Ccase(charSequence, i, i2, new Cfor(Ccatch.m29987public(strArr), z));
    }

    public static /* synthetic */ Sequence k4(CharSequence charSequence, Cgoto cgoto, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return cgoto.splitToSequence(charSequence, i);
    }

    public static final boolean l2(@m41 CharSequence endsWith, char c, boolean z) {
        Csuper.m30700throw(endsWith, "$this$endsWith");
        return endsWith.length() > 0 && kotlin.text.Ctry.m31247transient(endsWith.charAt(v2(endsWith)), c, z);
    }

    public static /* synthetic */ Sequence l3(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return j3(charSequence, cArr, i, z, i2);
    }

    public static /* synthetic */ Sequence l4(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return i4(charSequence, cArr, z, i);
    }

    public static final boolean m2(@m41 CharSequence endsWith, @m41 CharSequence suffix, boolean z) {
        Csuper.m30700throw(endsWith, "$this$endsWith");
        Csuper.m30700throw(suffix, "suffix");
        return (!z && (endsWith instanceof String) && (suffix instanceof String)) ? Creturn.W0((String) endsWith, (String) suffix, false, 2, null) : n3(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), z);
    }

    public static /* synthetic */ Sequence m3(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return k3(charSequence, strArr, i, z, i2);
    }

    public static /* synthetic */ Sequence m4(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return j4(charSequence, strArr, z, i);
    }

    public static /* synthetic */ boolean n2(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return l2(charSequence, c, z);
    }

    public static final boolean n3(@m41 CharSequence regionMatchesImpl, int i, @m41 CharSequence other, int i2, int i3, boolean z) {
        Csuper.m30700throw(regionMatchesImpl, "$this$regionMatchesImpl");
        Csuper.m30700throw(other, "other");
        if (i2 < 0 || i < 0 || i > regionMatchesImpl.length() - i3 || i2 > other.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!kotlin.text.Ctry.m31247transient(regionMatchesImpl.charAt(i + i4), other.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean n4(@m41 CharSequence startsWith, char c, boolean z) {
        Csuper.m30700throw(startsWith, "$this$startsWith");
        return startsWith.length() > 0 && kotlin.text.Ctry.m31247transient(startsWith.charAt(0), c, z);
    }

    public static /* synthetic */ boolean o2(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m2(charSequence, charSequence2, z);
    }

    @m41
    public static final CharSequence o3(@m41 CharSequence removePrefix, @m41 CharSequence prefix) {
        Csuper.m30700throw(removePrefix, "$this$removePrefix");
        Csuper.m30700throw(prefix, "prefix");
        return s4(removePrefix, prefix, false, 2, null) ? removePrefix.subSequence(prefix.length(), removePrefix.length()) : removePrefix.subSequence(0, removePrefix.length());
    }

    public static final boolean o4(@m41 CharSequence startsWith, @m41 CharSequence prefix, int i, boolean z) {
        Csuper.m30700throw(startsWith, "$this$startsWith");
        Csuper.m30700throw(prefix, "prefix");
        return (!z && (startsWith instanceof String) && (prefix instanceof String)) ? Creturn.G1((String) startsWith, (String) prefix, i, false, 4, null) : n3(startsWith, i, prefix, 0, prefix.length(), z);
    }

    @z41
    public static final qb1<Integer, String> p2(@m41 CharSequence findAnyOf, @m41 Collection<String> strings, int i, boolean z) {
        Csuper.m30700throw(findAnyOf, "$this$findAnyOf");
        Csuper.m30700throw(strings, "strings");
        return q2(findAnyOf, strings, i, z, false);
    }

    @m41
    public static String p3(@m41 String removePrefix, @m41 CharSequence prefix) {
        Csuper.m30700throw(removePrefix, "$this$removePrefix");
        Csuper.m30700throw(prefix, "prefix");
        if (!s4(removePrefix, prefix, false, 2, null)) {
            return removePrefix;
        }
        String strSubstring = removePrefix.substring(prefix.length());
        Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final boolean p4(@m41 CharSequence startsWith, @m41 CharSequence prefix, boolean z) {
        Csuper.m30700throw(startsWith, "$this$startsWith");
        Csuper.m30700throw(prefix, "prefix");
        return (!z && (startsWith instanceof String) && (prefix instanceof String)) ? Creturn.H1((String) startsWith, (String) prefix, false, 2, null) : n3(startsWith, 0, prefix, 0, prefix.length(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qb1<Integer, String> q2(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object next;
        Object next2;
        if (!z && collection.size() == 1) {
            String str = (String) Cfinal.f4(collection);
            int iE2 = !z2 ? E2(charSequence, str, i, false, 4, null) : S2(charSequence, str, i, false, 4, null);
            if (iE2 < 0) {
                return null;
            }
            return c92.m819do(Integer.valueOf(iE2), str);
        }
        bn0 dn0Var = !z2 ? new dn0(Ccase.m30873final(i, 0), charSequence.length()) : Ccase.j(Ccase.m30885return(i, v2(charSequence)), 0);
        if (charSequence instanceof String) {
            int iM592do = dn0Var.m592do();
            int iM594if = dn0Var.m594if();
            int iM593for = dn0Var.m593for();
            if (iM593for < 0 ? iM592do >= iM594if : iM592do <= iM594if) {
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        String str2 = (String) next2;
                        if (Creturn.q1(str2, 0, (String) charSequence, iM592do, str2.length(), z)) {
                            break;
                        }
                    }
                    String str3 = (String) next2;
                    if (str3 == null) {
                        if (iM592do == iM594if) {
                            break;
                        }
                        iM592do += iM593for;
                    } else {
                        return c92.m819do(Integer.valueOf(iM592do), str3);
                    }
                }
            }
        } else {
            int iM592do2 = dn0Var.m592do();
            int iM594if2 = dn0Var.m594if();
            int iM593for2 = dn0Var.m593for();
            if (iM593for2 < 0 ? iM592do2 >= iM594if2 : iM592do2 <= iM594if2) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        String str4 = (String) next;
                        if (n3(str4, 0, charSequence, iM592do2, str4.length(), z)) {
                            break;
                        }
                    }
                    String str5 = (String) next;
                    if (str5 == null) {
                        if (iM592do2 == iM594if2) {
                            break;
                        }
                        iM592do2 += iM593for2;
                    } else {
                        return c92.m819do(Integer.valueOf(iM592do2), str5);
                    }
                }
            }
        }
        return null;
    }

    @m41
    public static final CharSequence q3(@m41 CharSequence removeRange, int i, int i2) {
        Csuper.m30700throw(removeRange, "$this$removeRange");
        if (i2 < i) {
            throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
        }
        if (i2 == i) {
            return removeRange.subSequence(0, removeRange.length());
        }
        StringBuilder sb = new StringBuilder(removeRange.length() - (i2 - i));
        sb.append(removeRange, 0, i);
        Csuper.m30696super(sb, "this.append(value, startIndex, endIndex)");
        sb.append(removeRange, i2, removeRange.length());
        Csuper.m30696super(sb, "this.append(value, startIndex, endIndex)");
        return sb;
    }

    public static /* synthetic */ boolean q4(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return n4(charSequence, c, z);
    }

    public static /* synthetic */ qb1 r2(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return p2(charSequence, collection, i, z);
    }

    @m41
    public static final CharSequence r3(@m41 CharSequence removeRange, @m41 dn0 range) {
        Csuper.m30700throw(removeRange, "$this$removeRange");
        Csuper.m30700throw(range, "range");
        return q3(removeRange, range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    public static /* synthetic */ boolean r4(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return o4(charSequence, charSequence2, i, z);
    }

    @z41
    public static final qb1<Integer, String> s2(@m41 CharSequence findLastAnyOf, @m41 Collection<String> strings, int i, boolean z) {
        Csuper.m30700throw(findLastAnyOf, "$this$findLastAnyOf");
        Csuper.m30700throw(strings, "strings");
        return q2(findLastAnyOf, strings, i, z, true);
    }

    @um0
    private static final String s3(String str, int i, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return q3(str, i, i2).toString();
    }

    public static /* synthetic */ boolean s4(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return p4(charSequence, charSequence2, z);
    }

    public static /* synthetic */ qb1 t2(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = v2(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return s2(charSequence, collection, i, z);
    }

    @um0
    private static final String t3(String str, dn0 dn0Var) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        return r3(str, dn0Var).toString();
    }

    @m41
    public static final CharSequence t4(@m41 CharSequence subSequence, @m41 dn0 range) {
        Csuper.m30700throw(subSequence, "$this$subSequence");
        Csuper.m30700throw(range, "range");
        return subSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    @m41
    public static final dn0 u2(@m41 CharSequence indices) {
        Csuper.m30700throw(indices, "$this$indices");
        return new dn0(0, indices.length() - 1);
    }

    @m41
    public static final CharSequence u3(@m41 CharSequence removeSuffix, @m41 CharSequence suffix) {
        Csuper.m30700throw(removeSuffix, "$this$removeSuffix");
        Csuper.m30700throw(suffix, "suffix");
        return o2(removeSuffix, suffix, false, 2, null) ? removeSuffix.subSequence(0, removeSuffix.length() - suffix.length()) : removeSuffix.subSequence(0, removeSuffix.length());
    }

    @um0
    @kotlin.Cfor(message = "Use parameters named startIndex and endIndex.", replaceWith = @an1(expression = "subSequence(startIndex = start, endIndex = end)", imports = {}))
    private static final CharSequence u4(String str, int i, int i2) {
        return str.subSequence(i, i2);
    }

    public static int v2(@m41 CharSequence lastIndex) {
        Csuper.m30700throw(lastIndex, "$this$lastIndex");
        return lastIndex.length() - 1;
    }

    @m41
    public static String v3(@m41 String removeSuffix, @m41 CharSequence suffix) {
        Csuper.m30700throw(removeSuffix, "$this$removeSuffix");
        Csuper.m30700throw(suffix, "suffix");
        if (!o2(removeSuffix, suffix, false, 2, null)) {
            return removeSuffix;
        }
        String strSubstring = removeSuffix.substring(0, removeSuffix.length() - suffix.length());
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @um0
    private static final String v4(CharSequence charSequence, int i, int i2) {
        return charSequence.subSequence(i, i2).toString();
    }

    public static final boolean w2(@m41 CharSequence hasSurrogatePairAt, int i) {
        Csuper.m30700throw(hasSurrogatePairAt, "$this$hasSurrogatePairAt");
        return i >= 0 && hasSurrogatePairAt.length() + (-2) >= i && Character.isHighSurrogate(hasSurrogatePairAt.charAt(i)) && Character.isLowSurrogate(hasSurrogatePairAt.charAt(i + 1));
    }

    @m41
    public static final CharSequence w3(@m41 CharSequence removeSurrounding, @m41 CharSequence delimiter) {
        Csuper.m30700throw(removeSurrounding, "$this$removeSurrounding");
        Csuper.m30700throw(delimiter, "delimiter");
        return x3(removeSurrounding, delimiter, delimiter);
    }

    @m41
    public static final String w4(@m41 CharSequence substring, @m41 dn0 range) {
        Csuper.m30700throw(substring, "$this$substring");
        Csuper.m30700throw(range, "range");
        return substring.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.3")
    @um0
    private static final <C extends CharSequence & R, R> R x2(C c, Function0<? extends R> function0) {
        return Creturn.h1(c) ? function0.invoke() : c;
    }

    @m41
    public static final CharSequence x3(@m41 CharSequence removeSurrounding, @m41 CharSequence prefix, @m41 CharSequence suffix) {
        Csuper.m30700throw(removeSurrounding, "$this$removeSurrounding");
        Csuper.m30700throw(prefix, "prefix");
        Csuper.m30700throw(suffix, "suffix");
        return (removeSurrounding.length() >= prefix.length() + suffix.length() && s4(removeSurrounding, prefix, false, 2, null) && o2(removeSurrounding, suffix, false, 2, null)) ? removeSurrounding.subSequence(prefix.length(), removeSurrounding.length() - suffix.length()) : removeSurrounding.subSequence(0, removeSurrounding.length());
    }

    @m41
    public static final String x4(@m41 String substring, @m41 dn0 range) {
        Csuper.m30700throw(substring, "$this$substring");
        Csuper.m30700throw(range, "range");
        String strSubstring = substring.substring(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.3")
    @um0
    private static final <C extends CharSequence & R, R> R y2(C c, Function0<? extends R> function0) {
        return c.length() == 0 ? function0.invoke() : c;
    }

    @m41
    public static String y3(@m41 String removeSurrounding, @m41 CharSequence delimiter) {
        Csuper.m30700throw(removeSurrounding, "$this$removeSurrounding");
        Csuper.m30700throw(delimiter, "delimiter");
        return z3(removeSurrounding, delimiter, delimiter);
    }

    public static /* synthetic */ String y4(CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = charSequence.length();
        }
        return charSequence.subSequence(i, i2).toString();
    }

    public static final int z2(@m41 CharSequence indexOf, char c, int i, boolean z) {
        Csuper.m30700throw(indexOf, "$this$indexOf");
        return (z || !(indexOf instanceof String)) ? G2(indexOf, new char[]{c}, i, z) : ((String) indexOf).indexOf(c, i);
    }

    @m41
    public static final String z3(@m41 String removeSurrounding, @m41 CharSequence prefix, @m41 CharSequence suffix) {
        Csuper.m30700throw(removeSurrounding, "$this$removeSurrounding");
        Csuper.m30700throw(prefix, "prefix");
        Csuper.m30700throw(suffix, "suffix");
        if (removeSurrounding.length() < prefix.length() + suffix.length() || !s4(removeSurrounding, prefix, false, 2, null) || !o2(removeSurrounding, suffix, false, 2, null)) {
            return removeSurrounding;
        }
        String strSubstring = removeSurrounding.substring(prefix.length(), removeSurrounding.length() - suffix.length());
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @m41
    public static final String z4(@m41 String substringAfter, char c, @m41 String missingDelimiterValue) {
        Csuper.m30700throw(substringAfter, "$this$substringAfter");
        Csuper.m30700throw(missingDelimiterValue, "missingDelimiterValue");
        int iD2 = D2(substringAfter, c, 0, false, 6, null);
        if (iD2 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfter.substring(iD2 + 1, substringAfter.length());
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }
}
