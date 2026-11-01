package kotlin.collections;

import android.support.v4.iz1;
import android.support.v4.k92;
import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.rd;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u008e\u0001\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010&\n\u0002\b\t\n\u0002\u0010(\n\u0000\n\u0002\u0010)\n\u0002\u0010'\n\u0002\b\t\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b0\u001a\u001e\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\u001aQ\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b\u001a!\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001a!\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001aQ\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\f\u0010\b\u001a1\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u000e\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001aa\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u000e\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0010\u0010\u0011\u001a1\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0013\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0087\b\u001aa\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0013\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012*\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0015\u0010\u0016\u001aX\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012%\b\u0001\u0010\u001a\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0002\b\u0019H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a`\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u001d\u001a\u00020\u001c2%\b\u0001\u0010\u001a\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0002\b\u0019H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a'\u0010 \u001a\u00020\u001f\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\b\u001a:\u0010!\u001a\u00020\u001f\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a3\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0002H\u0087\b\u001aA\u0010'\u001a\u00028\u0001\"\u0014\b\u0000\u0010#*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002*\u00028\u0001\"\u0004\b\u0001\u0010$*\u00028\u00002\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00010%H\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a;\u0010+\u001a\u00020\u001f\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b)\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010*\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b+\u0010,\u001a=\u0010-\u001a\u0004\u0018\u00018\u0001\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b)\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010*\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b-\u0010.\u001a<\u00100\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n2\u0006\u0010*\u001a\u00028\u00002\u0006\u0010/\u001a\u00028\u0001H\u0087\n¢\u0006\u0004\b0\u00101\u001a3\u00102\u001a\u00020\u001f\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b)*\u000e\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0002\b\u00030\u00022\u0006\u0010*\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b2\u0010,\u001a9\u00103\u001a\u00020\u001f\"\u0004\b\u0000\u0010\u0000\"\t\b\u0001\u0010\u0001¢\u0006\u0002\b)*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010/\u001a\u00028\u0001H\u0087\b¢\u0006\u0004\b3\u0010,\u001a=\u0010#\u001a\u0004\u0018\u00018\u0001\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b)\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n2\u0006\u0010*\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b#\u0010.\u001a,\u00105\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104H\u0087\n¢\u0006\u0004\b5\u00106\u001a,\u00107\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104H\u0087\n¢\u0006\u0004\b7\u00106\u001a1\u00108\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104H\u0087\b\u001aE\u00109\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010*\u001a\u00028\u00002\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00010%H\u0087\bø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001aE\u0010;\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010*\u001a\u00028\u00002\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00010%H\u0080\bø\u0001\u0000¢\u0006\u0004\b;\u0010:\u001a3\u0010<\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010*\u001a\u00028\u0000H\u0007¢\u0006\u0004\b<\u0010.\u001aE\u0010=\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n2\u0006\u0010*\u001a\u00028\u00002\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00010%H\u0086\bø\u0001\u0000¢\u0006\u0004\b=\u0010:\u001a9\u0010?\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001040>\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\n\u001a>\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010A0@\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0087\n¢\u0006\u0004\bB\u0010C\u001ay\u0010F\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010$\"\u0018\b\u0003\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00020\n*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010D\u001a\u00028\u00032\u001e\u0010E\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00028\u00020\u0017H\u0086\bø\u0001\u0000¢\u0006\u0004\bF\u0010G\u001ay\u0010H\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010$\"\u0018\b\u0003\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0002\u0012\u0006\b\u0000\u0012\u00028\u00010\n*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010D\u001a\u00028\u00032\u001e\u0010E\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00028\u00020\u0017H\u0086\bø\u0001\u0000¢\u0006\u0004\bH\u0010G\u001aI\u0010I\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u001a\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004¢\u0006\u0004\bI\u0010J\u001a@\u0010L\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050K\u001a@\u0010\u0000\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050M\u001a\\\u0010N\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010$*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010E\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00028\u00020\u0017H\u0086\bø\u0001\u0000\u001a\\\u0010O\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010$*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010E\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00028\u00020\u0017H\u0086\bø\u0001\u0000\u001aJ\u0010Q\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0012\u0010P\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0\u0017H\u0086\bø\u0001\u0000\u001aJ\u0010R\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0012\u0010P\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u001f0\u0017H\u0086\bø\u0001\u0000\u001as\u0010S\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010D\u001a\u00028\u00022\u001e\u0010P\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00020\u001f0\u0017H\u0086\bø\u0001\u0000¢\u0006\u0004\bS\u0010G\u001aV\u0010T\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010P\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00020\u001f0\u0017H\u0086\bø\u0001\u0000\u001as\u0010U\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010D\u001a\u00028\u00022\u001e\u0010P\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00020\u001f0\u0017H\u0086\bø\u0001\u0000¢\u0006\u0004\bU\u0010G\u001aV\u0010V\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001e\u0010P\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0004\u0012\u00020\u001f0\u0017H\u0086\bø\u0001\u0000\u001a4\u0010W\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050K\u001aQ\u0010X\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050K2\u0006\u0010D\u001a\u00028\u0002¢\u0006\u0004\bX\u0010Y\u001a=\u0010Z\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004¢\u0006\u0004\bZ\u0010\b\u001aS\u0010\u0001\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u00042\u0006\u0010D\u001a\u00028\u0002¢\u0006\u0004\b\u0001\u0010[\u001a4\u0010\\\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050M\u001aQ\u0010]\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050M2\u0006\u0010D\u001a\u00028\u0002¢\u0006\u0004\b]\u0010^\u001a2\u0010_\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0007\u001a2\u0010`\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0007\u001aO\u0010$\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0018\b\u0002\u0010#*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010D\u001a\u00028\u0002H\u0007¢\u0006\u0004\b$\u0010a\u001aG\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0012\u0010b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005H\u0086\u0002\u001aM\u0010d\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050KH\u0086\u0002\u001aV\u0010e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u001a\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004H\u0086\u0002¢\u0006\u0004\be\u0010f\u001aM\u0010g\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050MH\u0086\u0002\u001aI\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0014\u0010h\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0086\u0002\u001a=\u0010j\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u0012\u0010b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005H\u0087\n\u001aC\u0010k\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050KH\u0087\n\u001aL\u0010l\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u001a\u0010\u0006\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004H\u0087\n¢\u0006\u0004\bl\u0010J\u001aC\u0010m\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050MH\u0087\n\u001a=\u0010n\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010\n2\u0012\u0010h\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\n\u001aB\u0010o\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010*\u001a\u00028\u0000H\u0087\u0002¢\u0006\u0004\bo\u0010p\u001aA\u0010r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010q\u001a\b\u0012\u0004\u0012\u00028\u00000KH\u0087\u0002\u001aJ\u0010s\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u000e\u0010q\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004H\u0087\u0002¢\u0006\u0004\bs\u0010t\u001aA\u0010u\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010q\u001a\b\u0012\u0004\u0012\u00028\u00000MH\u0087\u0002\u001a4\u0010v\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n2\u0006\u0010*\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\bv\u0010w\u001a3\u0010x\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n2\f\u0010q\u001a\b\u0012\u0004\u0012\u00028\u00000KH\u0087\n\u001a<\u0010y\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n2\u000e\u0010q\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004H\u0087\n¢\u0006\u0004\by\u0010z\u001a3\u0010{\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n2\f\u0010q\u001a\b\u0012\u0004\u0012\u00028\u00000MH\u0087\n\u001a0\u0010|\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006}"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "extends", "", "Landroid/support/v4/qb1;", "pairs", "j", "([Landroid/support/v4/qb1;)Ljava/util/Map;", ak.aC, "", "v", "w", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "instanceof", "synchronized", "([Landroid/support/v4/qb1;)Ljava/util/HashMap;", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "e", "f", "([Landroid/support/v4/qb1;)Ljava/util/LinkedHashMap;", "Lkotlin/Function1;", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "builderAction", "public", "", "capacity", "native", "", "b", "c", "y", "M", "R", "Lkotlin/Function0;", "defaultValue", ak.av, "(Ljava/util/Map;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Landroid/support/v4/o71;", "key", "switch", "(Ljava/util/Map;Ljava/lang/Object;)Z", "volatile", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", ES6Iterator.VALUE_PROPERTY, "N", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V", "throws", "default", "", "return", "(Ljava/util/Map$Entry;)Ljava/lang/Object;", "static", "X", "interface", "(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "protected", "implements", "transient", "", "d", "", "", ak.aG, "(Ljava/util/Map;)Ljava/util/Iterator;", "destination", "transform", "l", "(Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "h", "L", "(Ljava/util/Map;[Landroid/support/v4/qb1;)V", "", "J", "Lkotlin/sequences/Sequence;", "k", "g", "predicate", "package", "strictfp", "continue", "finally", "abstract", "private", "O", "P", "(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;", "U", "([Landroid/support/v4/qb1;Ljava/util/Map;)Ljava/util/Map;", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "(Lkotlin/sequences/Sequence;Ljava/util/Map;)Ljava/util/Map;", "Q", ExifInterface.LONGITUDE_WEST, "(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;", "pair", ak.aD, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, Cstatic.m1, "(Ljava/util/Map;[Landroid/support/v4/qb1;)Ljava/util/Map;", "C", "map", "B", ExifInterface.LONGITUDE_EAST, "F", OptRuntime.GeneratorState.resumptionPoint_TYPE, "H", "G", "n", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;", "keys", "m", ak.ax, "(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;", "o", "r", "(Ljava/util/Map;Ljava/lang/Object;)V", "q", ak.aH, "(Ljava/util/Map;[Ljava/lang/Object;)V", ak.aB, "x", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/MapsKt")
/* renamed from: kotlin.collections.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cinterface extends Cvolatile {
    @m41
    public static final <K, V> Map<K, V> A(@m41 Map<? extends K, ? extends V> plus, @m41 Iterable<? extends qb1<? extends K, ? extends V>> pairs) {
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(pairs, "pairs");
        if (plus.isEmpty()) {
            return O(pairs);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        J(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @m41
    public static final <K, V> Map<K, V> B(@m41 Map<? extends K, ? extends V> plus, @m41 Map<? extends K, ? extends V> map) {
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        linkedHashMap.putAll(map);
        return linkedHashMap;
    }

    @m41
    public static final <K, V> Map<K, V> C(@m41 Map<? extends K, ? extends V> plus, @m41 Sequence<? extends qb1<? extends K, ? extends V>> pairs) {
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        K(linkedHashMap, pairs);
        return x(linkedHashMap);
    }

    @m41
    public static final <K, V> Map<K, V> D(@m41 Map<? extends K, ? extends V> plus, @m41 Pair<? extends K, ? extends V>[] pairs) {
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(pairs, "pairs");
        if (plus.isEmpty()) {
            return U(pairs);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        L(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @um0
    private static final <K, V> void E(Map<? super K, ? super V> plusAssign, qb1<? extends K, ? extends V> qb1Var) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        plusAssign.put(qb1Var.getFirst(), qb1Var.getSecond());
    }

    @um0
    private static final <K, V> void F(Map<? super K, ? super V> plusAssign, Iterable<? extends qb1<? extends K, ? extends V>> iterable) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        J(plusAssign, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    private static final <K, V> void G(Map<? super K, ? super V> plusAssign, Map<K, ? extends V> map) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        plusAssign.putAll(map);
    }

    @um0
    private static final <K, V> void H(Map<? super K, ? super V> plusAssign, Sequence<? extends qb1<? extends K, ? extends V>> sequence) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        K(plusAssign, sequence);
    }

    @um0
    private static final <K, V> void I(Map<? super K, ? super V> plusAssign, Pair<? extends K, ? extends V>[] pairArr) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        L(plusAssign, pairArr);
    }

    public static final <K, V> void J(@m41 Map<? super K, ? super V> putAll, @m41 Iterable<? extends qb1<? extends K, ? extends V>> pairs) {
        Csuper.m30700throw(putAll, "$this$putAll");
        Csuper.m30700throw(pairs, "pairs");
        for (qb1<? extends K, ? extends V> qb1Var : pairs) {
            putAll.put(qb1Var.component1(), qb1Var.component2());
        }
    }

    public static final <K, V> void K(@m41 Map<? super K, ? super V> putAll, @m41 Sequence<? extends qb1<? extends K, ? extends V>> pairs) {
        Csuper.m30700throw(putAll, "$this$putAll");
        Csuper.m30700throw(pairs, "pairs");
        for (qb1<? extends K, ? extends V> qb1Var : pairs) {
            putAll.put(qb1Var.component1(), qb1Var.component2());
        }
    }

    public static final <K, V> void L(@m41 Map<? super K, ? super V> putAll, @m41 Pair<? extends K, ? extends V>[] pairs) {
        Csuper.m30700throw(putAll, "$this$putAll");
        Csuper.m30700throw(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            putAll.put((Object) pair.component1(), (Object) pair.component2());
        }
    }

    @um0
    private static final <K, V> V M(Map<? extends K, V> map, K k) {
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
        return (V) k92.m4300catch(map).remove(k);
    }

    @um0
    private static final <K, V> void N(Map<K, V> set, K k, V v) {
        Csuper.m30700throw(set, "$this$set");
        set.put(k, v);
    }

    @m41
    public static <K, V> Map<K, V> O(@m41 Iterable<? extends qb1<? extends K, ? extends V>> toMap) {
        Csuper.m30700throw(toMap, "$this$toMap");
        if (!(toMap instanceof Collection)) {
            return x(P(toMap, new LinkedHashMap()));
        }
        Collection collection = (Collection) toMap;
        int size = collection.size();
        if (size == 0) {
            return m30101extends();
        }
        if (size != 1) {
            return P(toMap, new LinkedHashMap(Cvolatile.m30270break(collection.size())));
        }
        return Cvolatile.m30272catch(toMap instanceof List ? (qb1<? extends K, ? extends V>) ((List) toMap).get(0) : toMap.iterator().next());
    }

    @m41
    public static final <K, V, M extends Map<? super K, ? super V>> M P(@m41 Iterable<? extends qb1<? extends K, ? extends V>> toMap, @m41 M destination) {
        Csuper.m30700throw(toMap, "$this$toMap");
        Csuper.m30700throw(destination, "destination");
        J(destination, toMap);
        return destination;
    }

    @m41
    @iz1(version = "1.1")
    public static <K, V> Map<K, V> Q(@m41 Map<? extends K, ? extends V> toMap) {
        Csuper.m30700throw(toMap, "$this$toMap");
        int size = toMap.size();
        return size != 0 ? size != 1 ? W(toMap) : Cvolatile.m30280super(toMap) : m30101extends();
    }

    @m41
    @iz1(version = "1.1")
    public static final <K, V, M extends Map<? super K, ? super V>> M R(@m41 Map<? extends K, ? extends V> toMap, @m41 M destination) {
        Csuper.m30700throw(toMap, "$this$toMap");
        Csuper.m30700throw(destination, "destination");
        destination.putAll(toMap);
        return destination;
    }

    @m41
    public static final <K, V> Map<K, V> S(@m41 Sequence<? extends qb1<? extends K, ? extends V>> toMap) {
        Csuper.m30700throw(toMap, "$this$toMap");
        return x(T(toMap, new LinkedHashMap()));
    }

    @m41
    public static final <K, V, M extends Map<? super K, ? super V>> M T(@m41 Sequence<? extends qb1<? extends K, ? extends V>> toMap, @m41 M destination) {
        Csuper.m30700throw(toMap, "$this$toMap");
        Csuper.m30700throw(destination, "destination");
        K(destination, toMap);
        return destination;
    }

    @m41
    public static final <K, V> Map<K, V> U(@m41 Pair<? extends K, ? extends V>[] toMap) {
        Csuper.m30700throw(toMap, "$this$toMap");
        int length = toMap.length;
        return length != 0 ? length != 1 ? V(toMap, new LinkedHashMap(Cvolatile.m30270break(toMap.length))) : Cvolatile.m30272catch(toMap[0]) : m30101extends();
    }

    @m41
    public static final <K, V, M extends Map<? super K, ? super V>> M V(@m41 Pair<? extends K, ? extends V>[] toMap, @m41 M destination) {
        Csuper.m30700throw(toMap, "$this$toMap");
        Csuper.m30700throw(destination, "destination");
        L(destination, toMap);
        return destination;
    }

    @m41
    @iz1(version = "1.1")
    public static <K, V> Map<K, V> W(@m41 Map<? extends K, ? extends V> toMutableMap) {
        Csuper.m30700throw(toMutableMap, "$this$toMutableMap");
        return new LinkedHashMap(toMutableMap);
    }

    @um0
    private static final <K, V> qb1<K, V> X(Map.Entry<? extends K, ? extends V> entry) {
        return new qb1<>(entry.getKey(), entry.getValue());
    }

    /* JADX WARN: Incorrect types in method signature: <M::Ljava/util/Map<**>;:TR;R:Ljava/lang/Object;>(TM;Lkotlin/jvm/functions/Function0<+TR;>;)TR; */
    @iz1(version = "1.3")
    @um0
    private static final Object a(Map map, Function0 function0) {
        return map.isEmpty() ? function0.invoke() : map;
    }

    @m41
    /* renamed from: abstract, reason: not valid java name */
    public static final <K, V, M extends Map<? super K, ? super V>> M m30098abstract(@m41 Map<? extends K, ? extends V> filterNotTo, @m41 M destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(filterNotTo, "$this$filterNotTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : filterNotTo.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    @um0
    private static final <K, V> boolean b(Map<? extends K, ? extends V> map) {
        return !map.isEmpty();
    }

    @iz1(version = "1.3")
    @um0
    private static final <K, V> boolean c(Map<? extends K, ? extends V> map) {
        return map == null || map.isEmpty();
    }

    @m41
    /* renamed from: continue, reason: not valid java name */
    public static final <K, V, M extends Map<? super K, ? super V>> M m30099continue(@m41 Map<? extends K, ? extends V> filterTo, @m41 M destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(filterTo, "$this$filterTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : filterTo.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    @um0
    private static final <K, V> Iterator<Map.Entry<K, V>> d(Map<? extends K, ? extends V> iterator) {
        Csuper.m30700throw(iterator, "$this$iterator");
        return iterator.entrySet().iterator();
    }

    @um0
    /* renamed from: default, reason: not valid java name */
    private static final <K, V> boolean m30100default(Map<K, ? extends V> map, V v) {
        return map.containsValue(v);
    }

    @iz1(version = "1.1")
    @um0
    private static final <K, V> LinkedHashMap<K, V> e() {
        return new LinkedHashMap<>();
    }

    @m41
    /* renamed from: extends, reason: not valid java name */
    public static <K, V> Map<K, V> m30101extends() {
        Cdefault cdefault = Cdefault.INSTANCE;
        Objects.requireNonNull(cdefault, "null cannot be cast to non-null type kotlin.collections.Map<K, V>");
        return cdefault;
    }

    @m41
    public static final <K, V> LinkedHashMap<K, V> f(@m41 Pair<? extends K, ? extends V>... pairs) {
        Csuper.m30700throw(pairs, "pairs");
        return (LinkedHashMap) V(pairs, new LinkedHashMap(Cvolatile.m30270break(pairs.length)));
    }

    @m41
    /* renamed from: finally, reason: not valid java name */
    public static final <K, V> Map<K, V> m30102finally(@m41 Map<? extends K, ? extends V> filter, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(filter, "$this$filter");
        Csuper.m30700throw(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filter.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    public static final <K, V, R> Map<R, V> g(@m41 Map<? extends K, ? extends V> mapKeys, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(mapKeys, "$this$mapKeys");
        Csuper.m30700throw(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Cvolatile.m30270break(mapKeys.size()));
        Iterator<T> it = mapKeys.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Object) it.next();
            linkedHashMap.put(transform.invoke(entry), entry.getValue());
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    public static final <K, V, R, M extends Map<? super R, ? super V>> M h(@m41 Map<? extends K, ? extends V> mapKeysTo, @m41 M destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(mapKeysTo, "$this$mapKeysTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(transform, "transform");
        Iterator<T> it = mapKeysTo.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Object) it.next();
            destination.put(transform.invoke(entry), entry.getValue());
        }
        return destination;
    }

    @um0
    private static final <K, V> Map<K, V> i() {
        return m30101extends();
    }

    @iz1(version = "1.1")
    /* renamed from: implements, reason: not valid java name */
    public static final <K, V> V m30103implements(@m41 Map<K, ? extends V> getValue, K k) {
        Csuper.m30700throw(getValue, "$this$getValue");
        return (V) Cstrictfp.m30139do(getValue, k);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: instanceof, reason: not valid java name */
    private static final <K, V> HashMap<K, V> m30104instanceof() {
        return new HashMap<>();
    }

    @um0
    /* renamed from: interface, reason: not valid java name */
    private static final <K, V> V m30105interface(Map<K, ? extends V> map, K k, Function0<? extends V> function0) {
        V v = map.get(k);
        return v != null ? v : function0.invoke();
    }

    @m41
    public static final <K, V> Map<K, V> j(@m41 Pair<? extends K, ? extends V>... pairs) {
        Csuper.m30700throw(pairs, "pairs");
        return pairs.length > 0 ? V(pairs, new LinkedHashMap(Cvolatile.m30270break(pairs.length))) : m30101extends();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    public static final <K, V, R> Map<K, R> k(@m41 Map<? extends K, ? extends V> mapValues, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(mapValues, "$this$mapValues");
        Csuper.m30700throw(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Cvolatile.m30270break(mapValues.size()));
        Iterator<T> it = mapValues.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Object) it.next();
            linkedHashMap.put(entry.getKey(), transform.invoke(entry));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    public static final <K, V, R, M extends Map<? super K, ? super R>> M l(@m41 Map<? extends K, ? extends V> mapValuesTo, @m41 M destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(mapValuesTo, "$this$mapValuesTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(transform, "transform");
        Iterator<T> it = mapValuesTo.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Object) it.next();
            destination.put(entry.getKey(), transform.invoke(entry));
        }
        return destination;
    }

    @m41
    @iz1(version = "1.1")
    public static final <K, V> Map<K, V> m(@m41 Map<? extends K, ? extends V> minus, @m41 Iterable<? extends K> keys) {
        Csuper.m30700throw(minus, "$this$minus");
        Csuper.m30700throw(keys, "keys");
        Map mapW = W(minus);
        Creturn.T(mapW.keySet(), keys);
        return x(mapW);
    }

    @m41
    @iz1(version = "1.1")
    public static final <K, V> Map<K, V> n(@m41 Map<? extends K, ? extends V> minus, K k) {
        Csuper.m30700throw(minus, "$this$minus");
        Map mapW = W(minus);
        mapW.remove(k);
        return x(mapW);
    }

    @iz1(version = "1.3")
    @um0
    @Cthis
    /* renamed from: native, reason: not valid java name */
    private static final <K, V> Map<K, V> m30106native(int i, @rd Function1<? super Map<K, V>, ub2> function1) {
        Map mapM30277goto = Cvolatile.m30277goto(i);
        function1.invoke(mapM30277goto);
        return Cvolatile.m30279new(mapM30277goto);
    }

    @m41
    @iz1(version = "1.1")
    public static final <K, V> Map<K, V> o(@m41 Map<? extends K, ? extends V> minus, @m41 Sequence<? extends K> keys) {
        Csuper.m30700throw(minus, "$this$minus");
        Csuper.m30700throw(keys, "keys");
        Map mapW = W(minus);
        Creturn.V(mapW.keySet(), keys);
        return x(mapW);
    }

    @m41
    @iz1(version = "1.1")
    public static final <K, V> Map<K, V> p(@m41 Map<? extends K, ? extends V> minus, @m41 K[] keys) {
        Csuper.m30700throw(minus, "$this$minus");
        Csuper.m30700throw(keys, "keys");
        Map mapW = W(minus);
        Creturn.W(mapW.keySet(), keys);
        return x(mapW);
    }

    @m41
    /* renamed from: package, reason: not valid java name */
    public static final <K, V> Map<K, V> m30107package(@m41 Map<? extends K, ? extends V> filterKeys, @m41 Function1<? super K, Boolean> predicate) {
        Csuper.m30700throw(filterKeys, "$this$filterKeys");
        Csuper.m30700throw(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filterKeys.entrySet()) {
            if (predicate.invoke(entry.getKey()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @m41
    /* renamed from: private, reason: not valid java name */
    public static final <K, V> Map<K, V> m30108private(@m41 Map<? extends K, ? extends V> filterNot, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(filterNot, "$this$filterNot");
        Csuper.m30700throw(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filterNot.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    /* renamed from: protected, reason: not valid java name */
    public static final <K, V> V m30109protected(@m41 Map<K, ? extends V> getOrElseNullable, K k, @m41 Function0<? extends V> defaultValue) {
        Csuper.m30700throw(getOrElseNullable, "$this$getOrElseNullable");
        Csuper.m30700throw(defaultValue, "defaultValue");
        V v = getOrElseNullable.get(k);
        return (v != null || getOrElseNullable.containsKey(k)) ? v : defaultValue.invoke();
    }

    @iz1(version = "1.3")
    @um0
    @Cthis
    /* renamed from: public, reason: not valid java name */
    private static final <K, V> Map<K, V> m30110public(@rd Function1<? super Map<K, V>, ub2> function1) {
        Map mapM30275else = Cvolatile.m30275else();
        function1.invoke(mapM30275else);
        return Cvolatile.m30279new(mapM30275else);
    }

    @iz1(version = "1.1")
    @um0
    private static final <K, V> void q(Map<K, V> minusAssign, Iterable<? extends K> iterable) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        Creturn.T(minusAssign.keySet(), iterable);
    }

    @iz1(version = "1.1")
    @um0
    private static final <K, V> void r(Map<K, V> minusAssign, K k) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        minusAssign.remove(k);
    }

    @um0
    /* renamed from: return, reason: not valid java name */
    private static final <K, V> K m30111return(Map.Entry<? extends K, ? extends V> component1) {
        Csuper.m30700throw(component1, "$this$component1");
        return component1.getKey();
    }

    @iz1(version = "1.1")
    @um0
    private static final <K, V> void s(Map<K, V> minusAssign, Sequence<? extends K> sequence) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        Creturn.V(minusAssign.keySet(), sequence);
    }

    @um0
    /* renamed from: static, reason: not valid java name */
    private static final <K, V> V m30112static(Map.Entry<? extends K, ? extends V> component2) {
        Csuper.m30700throw(component2, "$this$component2");
        return component2.getValue();
    }

    @m41
    /* renamed from: strictfp, reason: not valid java name */
    public static final <K, V> Map<K, V> m30113strictfp(@m41 Map<? extends K, ? extends V> filterValues, @m41 Function1<? super V, Boolean> predicate) {
        Csuper.m30700throw(filterValues, "$this$filterValues");
        Csuper.m30700throw(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : filterValues.entrySet()) {
            if (predicate.invoke(entry.getValue()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final <K, V> boolean m30114switch(Map<? extends K, ? extends V> contains, K k) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.containsKey(k);
    }

    @m41
    /* renamed from: synchronized, reason: not valid java name */
    public static final <K, V> HashMap<K, V> m30115synchronized(@m41 Pair<? extends K, ? extends V>... pairs) {
        Csuper.m30700throw(pairs, "pairs");
        HashMap<K, V> map = new HashMap<>(Cvolatile.m30270break(pairs.length));
        L(map, pairs);
        return map;
    }

    @iz1(version = "1.1")
    @um0
    private static final <K, V> void t(Map<K, V> minusAssign, K[] kArr) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        Creturn.W(minusAssign.keySet(), kArr);
    }

    @um0
    /* renamed from: throws, reason: not valid java name */
    private static final <K> boolean m30116throws(Map<? extends K, ?> map, K k) {
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return map.containsKey(k);
    }

    /* renamed from: transient, reason: not valid java name */
    public static final <K, V> V m30117transient(@m41 Map<K, V> getOrPut, K k, @m41 Function0<? extends V> defaultValue) {
        Csuper.m30700throw(getOrPut, "$this$getOrPut");
        Csuper.m30700throw(defaultValue, "defaultValue");
        V v = getOrPut.get(k);
        if (v != null) {
            return v;
        }
        V vInvoke = defaultValue.invoke();
        getOrPut.put(k, vInvoke);
        return vInvoke;
    }

    @um0
    @wp0(name = "mutableIterator")
    private static final <K, V> Iterator<Map.Entry<K, V>> u(Map<K, V> iterator) {
        Csuper.m30700throw(iterator, "$this$iterator");
        return iterator.entrySet().iterator();
    }

    @iz1(version = "1.1")
    @um0
    private static final <K, V> Map<K, V> v() {
        return new LinkedHashMap();
    }

    @um0
    /* renamed from: volatile, reason: not valid java name */
    private static final <K, V> V m30118volatile(Map<? extends K, ? extends V> get, K k) {
        Csuper.m30700throw(get, "$this$get");
        return get.get(k);
    }

    @m41
    public static final <K, V> Map<K, V> w(@m41 Pair<? extends K, ? extends V>... pairs) {
        Csuper.m30700throw(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Cvolatile.m30270break(pairs.length));
        L(linkedHashMap, pairs);
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    public static final <K, V> Map<K, V> x(@m41 Map<K, ? extends V> optimizeReadOnlyMap) {
        Csuper.m30700throw(optimizeReadOnlyMap, "$this$optimizeReadOnlyMap");
        int size = optimizeReadOnlyMap.size();
        return size != 0 ? size != 1 ? optimizeReadOnlyMap : Cvolatile.m30280super(optimizeReadOnlyMap) : m30101extends();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    private static final <K, V> Map<K, V> y(Map<K, ? extends V> map) {
        return map != 0 ? map : m30101extends();
    }

    @m41
    public static final <K, V> Map<K, V> z(@m41 Map<? extends K, ? extends V> plus, @m41 qb1<? extends K, ? extends V> pair) {
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(pair, "pair");
        if (plus.isEmpty()) {
            return Cvolatile.m30272catch(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        linkedHashMap.put(pair.getFirst(), pair.getSecond());
        return linkedHashMap;
    }
}
