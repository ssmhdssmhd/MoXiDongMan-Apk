package kotlin.ranges;

import android.support.v4.bn0;
import android.support.v4.bw0;
import android.support.v4.dn0;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.ok;
import android.support.v4.qk;
import android.support.v4.um0;
import android.support.v4.wp0;
import android.support.v4.z41;
import android.support.v4.zv0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import java.util.NoSuchElementException;
import kotlin.Cfor;
import kotlin.Cnew;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.random.Ctry;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0002\b\u0004\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bA\n\u0002\u0010\u000f\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\b\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0004*\u00020\u0003H\u0087\b\u001a\r\u0010\b\u001a\u00020\u0007*\u00020\u0006H\u0087\b\u001a\u0014\u0010\u000b\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0007\u001a\u0014\u0010\f\u001a\u00020\u0004*\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0007\u001a\u0014\u0010\r\u001a\u00020\u0007*\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007\u001a\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0087\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0004*\u00020\u0003H\u0087\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0007*\u00020\u0006H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u0004*\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u0007*\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001e\u0010\u001c\u001a\u00020\u001b*\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0087\n¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001e\u0010\u001e\u001a\u00020\u001b*\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0087\n¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001e\u0010 \u001a\u00020\u001b*\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u0087\n¢\u0006\u0004\b \u0010!\u001a\"\u0010%\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00010\"2\u0006\u0010$\u001a\u00020#H\u0087\u0002¢\u0006\u0004\b%\u0010&\u001a\"\u0010'\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00040\"2\u0006\u0010$\u001a\u00020#H\u0087\u0002¢\u0006\u0004\b'\u0010&\u001a\"\u0010)\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020(0\"2\u0006\u0010$\u001a\u00020#H\u0087\u0002¢\u0006\u0004\b)\u0010&\u001a\"\u0010+\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020*0\"2\u0006\u0010$\u001a\u00020#H\u0087\u0002¢\u0006\u0004\b+\u0010&\u001a\"\u0010-\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020,0\"2\u0006\u0010$\u001a\u00020#H\u0087\u0002¢\u0006\u0004\b-\u0010&\u001a\"\u0010.\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00010\"2\u0006\u0010$\u001a\u00020*H\u0087\u0002¢\u0006\u0004\b.\u0010/\u001a\"\u00100\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00040\"2\u0006\u0010$\u001a\u00020*H\u0087\u0002¢\u0006\u0004\b0\u0010/\u001a\"\u00101\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020*H\u0087\u0002¢\u0006\u0004\b1\u0010/\u001a\"\u00102\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020(0\"2\u0006\u0010$\u001a\u00020*H\u0087\u0002¢\u0006\u0004\b2\u0010/\u001a\"\u00103\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020,0\"2\u0006\u0010$\u001a\u00020*H\u0087\u0002¢\u0006\u0004\b3\u0010/\u001a\"\u00104\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00010\"2\u0006\u0010$\u001a\u00020,H\u0087\u0002¢\u0006\u0004\b4\u00105\u001a\"\u00106\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00040\"2\u0006\u0010$\u001a\u00020,H\u0087\u0002¢\u0006\u0004\b6\u00105\u001a\"\u00107\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020,H\u0087\u0002¢\u0006\u0004\b7\u00105\u001a\"\u00108\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020(0\"2\u0006\u0010$\u001a\u00020,H\u0087\u0002¢\u0006\u0004\b8\u00105\u001a\"\u00109\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020*0\"2\u0006\u0010$\u001a\u00020,H\u0087\u0002¢\u0006\u0004\b9\u00105\u001a\"\u0010:\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00040\"2\u0006\u0010$\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b:\u0010;\u001a\"\u0010<\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b<\u0010;\u001a\"\u0010=\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020(0\"2\u0006\u0010$\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b=\u0010;\u001a\"\u0010>\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020*0\"2\u0006\u0010$\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b>\u0010;\u001a\"\u0010?\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020,0\"2\u0006\u0010$\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b?\u0010;\u001a\"\u0010@\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00010\"2\u0006\u0010$\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\b@\u0010A\u001a\"\u0010B\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\bB\u0010A\u001a\"\u0010C\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020(0\"2\u0006\u0010$\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\bC\u0010A\u001a\"\u0010D\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020*0\"2\u0006\u0010$\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\bD\u0010A\u001a\"\u0010E\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020,0\"2\u0006\u0010$\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\bE\u0010A\u001a\"\u0010F\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00010\"2\u0006\u0010$\u001a\u00020(H\u0087\u0002¢\u0006\u0004\bF\u0010G\u001a\"\u0010H\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00040\"2\u0006\u0010$\u001a\u00020(H\u0087\u0002¢\u0006\u0004\bH\u0010G\u001a\"\u0010I\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020(H\u0087\u0002¢\u0006\u0004\bI\u0010G\u001a\"\u0010J\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020*0\"2\u0006\u0010$\u001a\u00020(H\u0087\u0002¢\u0006\u0004\bJ\u0010G\u001a\"\u0010K\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020,0\"2\u0006\u0010$\u001a\u00020(H\u0087\u0002¢\u0006\u0004\bK\u0010G\u001a\u0015\u0010N\u001a\u00020M*\u00020\u00012\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0015\u0010P\u001a\u00020O*\u00020\u00042\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0015\u0010Q\u001a\u00020M*\u00020#2\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0015\u0010R\u001a\u00020M*\u00020(2\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0015\u0010T\u001a\u00020S*\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0086\u0004\u001a\u0015\u0010U\u001a\u00020M*\u00020\u00012\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010V\u001a\u00020O*\u00020\u00042\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010W\u001a\u00020M*\u00020#2\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010X\u001a\u00020M*\u00020(2\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010Y\u001a\u00020O*\u00020\u00012\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010Z\u001a\u00020O*\u00020\u00042\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010[\u001a\u00020O*\u00020#2\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010\\\u001a\u00020O*\u00020(2\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010]\u001a\u00020M*\u00020\u00012\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a\u0015\u0010^\u001a\u00020O*\u00020\u00042\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a\u0015\u0010_\u001a\u00020M*\u00020#2\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a\u0015\u0010`\u001a\u00020M*\u00020(2\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a\n\u0010a\u001a\u00020M*\u00020M\u001a\n\u0010b\u001a\u00020O*\u00020O\u001a\n\u0010c\u001a\u00020S*\u00020S\u001a\u0015\u0010e\u001a\u00020M*\u00020M2\u0006\u0010d\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010f\u001a\u00020O*\u00020O2\u0006\u0010d\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010g\u001a\u00020S*\u00020S2\u0006\u0010d\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010h\u001a\u0004\u0018\u00010#*\u00020\u0001H\u0000¢\u0006\u0004\bh\u0010i\u001a\u0015\u0010j\u001a\u0004\u0018\u00010#*\u00020\u0004H\u0000¢\u0006\u0004\bj\u0010k\u001a\u0015\u0010l\u001a\u0004\u0018\u00010#*\u00020(H\u0000¢\u0006\u0004\bl\u0010m\u001a\u0015\u0010n\u001a\u0004\u0018\u00010#*\u00020*H\u0000¢\u0006\u0004\bn\u0010o\u001a\u0015\u0010p\u001a\u0004\u0018\u00010#*\u00020,H\u0000¢\u0006\u0004\bp\u0010q\u001a\u0015\u0010r\u001a\u0004\u0018\u00010\u0001*\u00020\u0004H\u0000¢\u0006\u0004\br\u0010s\u001a\u0015\u0010t\u001a\u0004\u0018\u00010\u0001*\u00020*H\u0000¢\u0006\u0004\bt\u0010u\u001a\u0015\u0010v\u001a\u0004\u0018\u00010\u0001*\u00020,H\u0000¢\u0006\u0004\bv\u0010w\u001a\u0015\u0010x\u001a\u0004\u0018\u00010\u0004*\u00020*H\u0000¢\u0006\u0004\bx\u0010y\u001a\u0015\u0010z\u001a\u0004\u0018\u00010\u0004*\u00020,H\u0000¢\u0006\u0004\bz\u0010{\u001a\u0015\u0010|\u001a\u0004\u0018\u00010(*\u00020\u0001H\u0000¢\u0006\u0004\b|\u0010}\u001a\u0015\u0010~\u001a\u0004\u0018\u00010(*\u00020\u0004H\u0000¢\u0006\u0004\b~\u0010\u007f\u001a\u0018\u0010\u0080\u0001\u001a\u0004\u0018\u00010(*\u00020*H\u0000¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0018\u0010\u0082\u0001\u001a\u0004\u0018\u00010(*\u00020,H\u0000¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0016\u0010\u0084\u0001\u001a\u00020\u0000*\u00020\u00012\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0016\u0010\u0085\u0001\u001a\u00020\u0003*\u00020\u00042\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0016\u0010\u0086\u0001\u001a\u00020\u0000*\u00020#2\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0016\u0010\u0087\u0001\u001a\u00020\u0000*\u00020(2\u0006\u0010L\u001a\u00020#H\u0086\u0004\u001a\u0016\u0010\u0088\u0001\u001a\u00020\u0006*\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0086\u0004\u001a\u0016\u0010\u0089\u0001\u001a\u00020\u0000*\u00020\u00012\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0016\u0010\u008a\u0001\u001a\u00020\u0003*\u00020\u00042\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0016\u0010\u008b\u0001\u001a\u00020\u0000*\u00020#2\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0016\u0010\u008c\u0001\u001a\u00020\u0000*\u00020(2\u0006\u0010L\u001a\u00020\u0001H\u0086\u0004\u001a\u0016\u0010\u008d\u0001\u001a\u00020\u0003*\u00020\u00012\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0016\u0010\u008e\u0001\u001a\u00020\u0003*\u00020\u00042\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0016\u0010\u008f\u0001\u001a\u00020\u0003*\u00020#2\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0016\u0010\u0090\u0001\u001a\u00020\u0003*\u00020(2\u0006\u0010L\u001a\u00020\u0004H\u0086\u0004\u001a\u0016\u0010\u0091\u0001\u001a\u00020\u0000*\u00020\u00012\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a\u0016\u0010\u0092\u0001\u001a\u00020\u0003*\u00020\u00042\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a\u0016\u0010\u0093\u0001\u001a\u00020\u0000*\u00020#2\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a\u0016\u0010\u0094\u0001\u001a\u00020\u0000*\u00020(2\u0006\u0010L\u001a\u00020(H\u0086\u0004\u001a.\u0010\u0097\u0001\u001a\u00028\u0000\"\u000f\b\u0000\u0010\u0014*\t\u0012\u0004\u0012\u00028\u00000\u0095\u0001*\u00028\u00002\u0007\u0010\u0096\u0001\u001a\u00028\u0000¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0014\u0010\u0099\u0001\u001a\u00020#*\u00020#2\u0007\u0010\u0096\u0001\u001a\u00020#\u001a\u0014\u0010\u009a\u0001\u001a\u00020(*\u00020(2\u0007\u0010\u0096\u0001\u001a\u00020(\u001a\u0014\u0010\u009b\u0001\u001a\u00020\u0001*\u00020\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u0001\u001a\u0014\u0010\u009c\u0001\u001a\u00020\u0004*\u00020\u00042\u0007\u0010\u0096\u0001\u001a\u00020\u0004\u001a\u0014\u0010\u009d\u0001\u001a\u00020,*\u00020,2\u0007\u0010\u0096\u0001\u001a\u00020,\u001a\u0014\u0010\u009e\u0001\u001a\u00020**\u00020*2\u0007\u0010\u0096\u0001\u001a\u00020*\u001a.\u0010 \u0001\u001a\u00028\u0000\"\u000f\b\u0000\u0010\u0014*\t\u0012\u0004\u0012\u00028\u00000\u0095\u0001*\u00028\u00002\u0007\u0010\u009f\u0001\u001a\u00028\u0000¢\u0006\u0006\b \u0001\u0010\u0098\u0001\u001a\u0014\u0010¡\u0001\u001a\u00020#*\u00020#2\u0007\u0010\u009f\u0001\u001a\u00020#\u001a\u0014\u0010¢\u0001\u001a\u00020(*\u00020(2\u0007\u0010\u009f\u0001\u001a\u00020(\u001a\u0014\u0010£\u0001\u001a\u00020\u0001*\u00020\u00012\u0007\u0010\u009f\u0001\u001a\u00020\u0001\u001a\u0014\u0010¤\u0001\u001a\u00020\u0004*\u00020\u00042\u0007\u0010\u009f\u0001\u001a\u00020\u0004\u001a\u0014\u0010¥\u0001\u001a\u00020,*\u00020,2\u0007\u0010\u009f\u0001\u001a\u00020,\u001a\u0014\u0010¦\u0001\u001a\u00020**\u00020*2\u0007\u0010\u009f\u0001\u001a\u00020*\u001a;\u0010§\u0001\u001a\u00028\u0000\"\u000f\b\u0000\u0010\u0014*\t\u0012\u0004\u0012\u00028\u00000\u0095\u0001*\u00028\u00002\t\u0010\u0096\u0001\u001a\u0004\u0018\u00018\u00002\t\u0010\u009f\u0001\u001a\u0004\u0018\u00018\u0000¢\u0006\u0006\b§\u0001\u0010¨\u0001\u001a\u001d\u0010©\u0001\u001a\u00020#*\u00020#2\u0007\u0010\u0096\u0001\u001a\u00020#2\u0007\u0010\u009f\u0001\u001a\u00020#\u001a\u001d\u0010ª\u0001\u001a\u00020(*\u00020(2\u0007\u0010\u0096\u0001\u001a\u00020(2\u0007\u0010\u009f\u0001\u001a\u00020(\u001a\u001d\u0010«\u0001\u001a\u00020\u0001*\u00020\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00012\u0007\u0010\u009f\u0001\u001a\u00020\u0001\u001a\u001d\u0010¬\u0001\u001a\u00020\u0004*\u00020\u00042\u0007\u0010\u0096\u0001\u001a\u00020\u00042\u0007\u0010\u009f\u0001\u001a\u00020\u0004\u001a\u001d\u0010\u00ad\u0001\u001a\u00020,*\u00020,2\u0007\u0010\u0096\u0001\u001a\u00020,2\u0007\u0010\u009f\u0001\u001a\u00020,\u001a\u001d\u0010®\u0001\u001a\u00020**\u00020*2\u0007\u0010\u0096\u0001\u001a\u00020*2\u0007\u0010\u009f\u0001\u001a\u00020*\u001a7\u0010±\u0001\u001a\u00028\u0000\"\u000f\b\u0000\u0010\u0014*\t\u0012\u0004\u0012\u00028\u00000\u0095\u0001*\u00028\u00002\u000e\u0010°\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000¯\u0001H\u0007¢\u0006\u0006\b±\u0001\u0010²\u0001\u001a4\u0010³\u0001\u001a\u00028\u0000\"\u000f\b\u0000\u0010\u0014*\t\u0012\u0004\u0012\u00028\u00000\u0095\u0001*\u00028\u00002\r\u0010°\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\"¢\u0006\u0006\b³\u0001\u0010´\u0001\u001a\u001a\u0010µ\u0001\u001a\u00020\u0001*\u00020\u00012\r\u0010°\u0001\u001a\b\u0012\u0004\u0012\u00020\u00010\"\u001a\u001a\u0010¶\u0001\u001a\u00020\u0004*\u00020\u00042\r\u0010°\u0001\u001a\b\u0012\u0004\u0012\u00020\u00040\"¨\u0006·\u0001"}, d2 = {"Landroid/support/v4/dn0;", "", "M", "Landroid/support/v4/bw0;", "", "O", "Landroid/support/v4/qk;", "", "K", "Lkotlin/random/try;", "random", "N", "P", "L", ExifInterface.LATITUDE_SOUTH, "(Landroid/support/v4/dn0;)Ljava/lang/Integer;", "U", "(Landroid/support/v4/bw0;)Ljava/lang/Long;", "Q", "(Landroid/support/v4/qk;)Ljava/lang/Character;", ExifInterface.GPS_DIRECTION_TRUE, "(Landroid/support/v4/dn0;Lkotlin/random/try;)Ljava/lang/Integer;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "(Landroid/support/v4/bw0;Lkotlin/random/try;)Ljava/lang/Long;", "R", "(Landroid/support/v4/qk;Lkotlin/random/try;)Ljava/lang/Character;", "element", "", "implements", "(Landroid/support/v4/dn0;Ljava/lang/Integer;)Z", "instanceof", "(Landroid/support/v4/bw0;Ljava/lang/Long;)Z", "transient", "(Landroid/support/v4/qk;Ljava/lang/Character;)Z", "Lkotlin/ranges/ClosedRange;", "", ES6Iterator.VALUE_PROPERTY, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Lkotlin/ranges/ClosedRange;B)Z", "F", "", "Z", "", "synchronized", "", "v", "B", "(Lkotlin/ranges/ClosedRange;D)Z", "G", "case", "a0", "w", "C", "(Lkotlin/ranges/ClosedRange;F)Z", "H", "else", "b0", ak.av, OptRuntime.GeneratorState.resumptionPoint_TYPE, "(Lkotlin/ranges/ClosedRange;I)Z", "goto", "c0", "b", "x", Cstatic.m1, "(Lkotlin/ranges/ClosedRange;J)Z", "this", "d0", "c", "y", ExifInterface.LONGITUDE_EAST, "(Lkotlin/ranges/ClosedRange;S)Z", "J", "break", "d", ak.aD, TypedValues.Transition.S_TO, "Landroid/support/v4/bn0;", ak.aC, "Landroid/support/v4/zv0;", "q", "f", "l", "Landroid/support/v4/ok;", "e", "j", "r", "g", "m", ak.ax, ak.aB, "o", ak.aG, "k", ak.aH, "h", "n", "X", "Y", ExifInterface.LONGITUDE_WEST, "step", "f0", "g0", "e0", "j0", "(I)Ljava/lang/Byte;", "k0", "(J)Ljava/lang/Byte;", "l0", "(S)Ljava/lang/Byte;", "h0", "(D)Ljava/lang/Byte;", "i0", "(F)Ljava/lang/Byte;", "o0", "(J)Ljava/lang/Integer;", "m0", "(D)Ljava/lang/Integer;", "n0", "(F)Ljava/lang/Integer;", "p0", "(D)Ljava/lang/Long;", "q0", "(F)Ljava/lang/Long;", "t0", "(I)Ljava/lang/Short;", "u0", "(J)Ljava/lang/Short;", "r0", "(D)Ljava/lang/Short;", "s0", "(F)Ljava/lang/Short;", "z0", "H0", "w0", "C0", "v0", "A0", "I0", "x0", "D0", "G0", "J0", "F0", "L0", "B0", "K0", "y0", "E0", "", "minimumValue", "throw", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "catch", "while", "final", "super", "const", "class", "maximumValue", "switch", "import", "throws", "return", "static", "public", "native", "strictfp", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "default", "protected", "package", "abstract", "finally", "extends", "Lkotlin/ranges/ClosedFloatingPointRange;", "range", "volatile", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "interface", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "private", "continue", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ranges/RangesKt")
/* renamed from: kotlin.ranges.case, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccase extends Ctry {
    @wp0(name = "intRangeContains")
    public static final boolean A(@m41 ClosedRange<Integer> contains, byte b) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Integer.valueOf(b));
    }

    @m41
    public static dn0 A0(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? dn0.f1085case.m1445do() : new dn0(i, i2 - 1);
    }

    @wp0(name = "intRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean B(ClosedRange<Integer> contains, double d) {
        Csuper.m30700throw(contains, "$this$contains");
        Integer numM0 = m0(d);
        if (numM0 != null) {
            return contains.contains(numM0);
        }
        return false;
    }

    @m41
    public static final dn0 B0(int i, short s) {
        return new dn0(i, s - 1);
    }

    @wp0(name = "intRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean C(ClosedRange<Integer> contains, float f) {
        Csuper.m30700throw(contains, "$this$contains");
        Integer numN0 = n0(f);
        if (numN0 != null) {
            return contains.contains(numN0);
        }
        return false;
    }

    @m41
    public static final dn0 C0(short s, byte b) {
        return new dn0(s, b - 1);
    }

    @wp0(name = "intRangeContains")
    public static final boolean D(@m41 ClosedRange<Integer> contains, long j) {
        Csuper.m30700throw(contains, "$this$contains");
        Integer numO0 = o0(j);
        if (numO0 != null) {
            return contains.contains(numO0);
        }
        return false;
    }

    @m41
    public static final dn0 D0(short s, int i) {
        return i <= Integer.MIN_VALUE ? dn0.f1085case.m1445do() : new dn0(s, i - 1);
    }

    @wp0(name = "intRangeContains")
    public static final boolean E(@m41 ClosedRange<Integer> contains, short s) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Integer.valueOf(s));
    }

    @m41
    public static final dn0 E0(short s, short s2) {
        return new dn0(s, s2 - 1);
    }

    @wp0(name = "longRangeContains")
    public static final boolean F(@m41 ClosedRange<Long> contains, byte b) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Long.valueOf(b));
    }

    @m41
    public static final bw0 F0(byte b, long j) {
        return j <= Long.MIN_VALUE ? bw0.f547case.m663do() : new bw0(b, j - 1);
    }

    @wp0(name = "longRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean G(ClosedRange<Long> contains, double d) {
        Csuper.m30700throw(contains, "$this$contains");
        Long lP0 = p0(d);
        if (lP0 != null) {
            return contains.contains(lP0);
        }
        return false;
    }

    @m41
    public static final bw0 G0(int i, long j) {
        return j <= Long.MIN_VALUE ? bw0.f547case.m663do() : new bw0(i, j - 1);
    }

    @wp0(name = "longRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean H(ClosedRange<Long> contains, float f) {
        Csuper.m30700throw(contains, "$this$contains");
        Long lQ0 = q0(f);
        if (lQ0 != null) {
            return contains.contains(lQ0);
        }
        return false;
    }

    @m41
    public static final bw0 H0(long j, byte b) {
        return new bw0(j, b - 1);
    }

    @wp0(name = "longRangeContains")
    public static final boolean I(@m41 ClosedRange<Long> contains, int i) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Long.valueOf(i));
    }

    @m41
    public static final bw0 I0(long j, int i) {
        return new bw0(j, i - 1);
    }

    @wp0(name = "longRangeContains")
    public static final boolean J(@m41 ClosedRange<Long> contains, short s) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Long.valueOf(s));
    }

    @m41
    public static final bw0 J0(long j, long j2) {
        return j2 <= Long.MIN_VALUE ? bw0.f547case.m663do() : new bw0(j, j2 - 1);
    }

    @iz1(version = "1.3")
    @um0
    private static final char K(qk qkVar) {
        return L(qkVar, Ctry.Default);
    }

    @m41
    public static final bw0 K0(long j, short s) {
        return new bw0(j, s - 1);
    }

    @iz1(version = "1.3")
    public static final char L(@m41 qk random, @m41 Ctry random2) {
        Csuper.m30700throw(random, "$this$random");
        Csuper.m30700throw(random2, "random");
        try {
            return (char) random2.nextInt(random.m5695do(), random.m5697if() + 1);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @m41
    public static final bw0 L0(short s, long j) {
        return j <= Long.MIN_VALUE ? bw0.f547case.m663do() : new bw0(s, j - 1);
    }

    @iz1(version = "1.3")
    @um0
    private static final int M(dn0 dn0Var) {
        return N(dn0Var, Ctry.Default);
    }

    @iz1(version = "1.3")
    public static final int N(@m41 dn0 random, @m41 Ctry random2) {
        Csuper.m30700throw(random, "$this$random");
        Csuper.m30700throw(random2, "random");
        try {
            return kotlin.random.Ccase.m30836goto(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @iz1(version = "1.3")
    @um0
    private static final long O(bw0 bw0Var) {
        return P(bw0Var, Ctry.Default);
    }

    @iz1(version = "1.3")
    public static final long P(@m41 bw0 random, @m41 Ctry random2) {
        Csuper.m30700throw(random, "$this$random");
        Csuper.m30700throw(random2, "random");
        try {
            return kotlin.random.Ccase.m30839this(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final Character Q(qk qkVar) {
        return R(qkVar, Ctry.Default);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @z41
    public static final Character R(@m41 qk randomOrNull, @m41 Ctry random) {
        Csuper.m30700throw(randomOrNull, "$this$randomOrNull");
        Csuper.m30700throw(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(randomOrNull.m5695do(), randomOrNull.m5697if() + 1));
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final Integer S(dn0 dn0Var) {
        return T(dn0Var, Ctry.Default);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @z41
    public static final Integer T(@m41 dn0 randomOrNull, @m41 Ctry random) {
        Csuper.m30700throw(randomOrNull, "$this$randomOrNull");
        Csuper.m30700throw(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Integer.valueOf(kotlin.random.Ccase.m30836goto(random, randomOrNull));
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final Long U(bw0 bw0Var) {
        return V(bw0Var, Ctry.Default);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @z41
    public static final Long V(@m41 bw0 randomOrNull, @m41 Ctry random) {
        Csuper.m30700throw(randomOrNull, "$this$randomOrNull");
        Csuper.m30700throw(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return Long.valueOf(kotlin.random.Ccase.m30839this(random, randomOrNull));
    }

    @m41
    public static final ok W(@m41 ok reversed) {
        Csuper.m30700throw(reversed, "$this$reversed");
        return ok.f4658new.m5699do(reversed.m5697if(), reversed.m5695do(), -reversed.m5696for());
    }

    @m41
    public static final bn0 X(@m41 bn0 reversed) {
        Csuper.m30700throw(reversed, "$this$reversed");
        return bn0.f492new.m596do(reversed.m594if(), reversed.m592do(), -reversed.m593for());
    }

    @m41
    public static final zv0 Y(@m41 zv0 reversed) {
        Csuper.m30700throw(reversed, "$this$reversed");
        return zv0.f8663new.m10306do(reversed.m10304if(), reversed.m10302do(), -reversed.m10303for());
    }

    @wp0(name = "shortRangeContains")
    public static final boolean Z(@m41 ClosedRange<Short> contains, byte b) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Short.valueOf(b));
    }

    @wp0(name = "doubleRangeContains")
    public static final boolean a(@m41 ClosedRange<Double> contains, float f) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Double.valueOf(f));
    }

    @wp0(name = "shortRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean a0(ClosedRange<Short> contains, double d) {
        Csuper.m30700throw(contains, "$this$contains");
        Short shR0 = r0(d);
        if (shR0 != null) {
            return contains.contains(shR0);
        }
        return false;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static long m30863abstract(long j, long j2, long j3) {
        if (j2 <= j3) {
            return j < j2 ? j2 : j > j3 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + org.apache.commons.lang3.Ctry.f28883do);
    }

    @wp0(name = "doubleRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean b(ClosedRange<Double> contains, int i) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Double.valueOf(i));
    }

    @wp0(name = "shortRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean b0(ClosedRange<Short> contains, float f) {
        Csuper.m30700throw(contains, "$this$contains");
        Short shS0 = s0(f);
        if (shS0 != null) {
            return contains.contains(shS0);
        }
        return false;
    }

    @wp0(name = "byteRangeContains")
    /* renamed from: break, reason: not valid java name */
    public static final boolean m30864break(@m41 ClosedRange<Byte> contains, short s) {
        Csuper.m30700throw(contains, "$this$contains");
        Byte bL0 = l0(s);
        if (bL0 != null) {
            return contains.contains(bL0);
        }
        return false;
    }

    @wp0(name = "doubleRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean c(ClosedRange<Double> contains, long j) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Double.valueOf(j));
    }

    @wp0(name = "shortRangeContains")
    public static final boolean c0(@m41 ClosedRange<Short> contains, int i) {
        Csuper.m30700throw(contains, "$this$contains");
        Short shT0 = t0(i);
        if (shT0 != null) {
            return contains.contains(shT0);
        }
        return false;
    }

    @wp0(name = "byteRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    /* renamed from: case, reason: not valid java name */
    public static final /* synthetic */ boolean m30865case(ClosedRange<Byte> contains, double d) {
        Csuper.m30700throw(contains, "$this$contains");
        Byte bH0 = h0(d);
        if (bH0 != null) {
            return contains.contains(bH0);
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public static final byte m30866catch(byte b, byte b2) {
        return b < b2 ? b2 : b;
    }

    /* renamed from: class, reason: not valid java name */
    public static final double m30867class(double d, double d2) {
        return d < d2 ? d2 : d;
    }

    /* renamed from: const, reason: not valid java name */
    public static final float m30868const(float f, float f2) {
        return f < f2 ? f2 : f;
    }

    /* renamed from: continue, reason: not valid java name */
    public static long m30869continue(long j, @m41 ClosedRange<Long> range) {
        Csuper.m30700throw(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) m30895volatile(Long.valueOf(j), (ClosedFloatingPointRange) range)).longValue();
        }
        if (!range.isEmpty()) {
            return j < ((Number) range.getStart()).longValue() ? ((Number) range.getStart()).longValue() : j > ((Number) range.getEndInclusive()).longValue() ? ((Number) range.getEndInclusive()).longValue() : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + org.apache.commons.lang3.Ctry.f28883do);
    }

    @wp0(name = "doubleRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean d(ClosedRange<Double> contains, short s) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Double.valueOf(s));
    }

    @wp0(name = "shortRangeContains")
    public static final boolean d0(@m41 ClosedRange<Short> contains, long j) {
        Csuper.m30700throw(contains, "$this$contains");
        Short shU0 = u0(j);
        if (shU0 != null) {
            return contains.contains(shU0);
        }
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public static final byte m30870default(byte b, byte b2, byte b3) {
        if (b2 <= b3) {
            return b < b2 ? b2 : b > b3 ? b3 : b;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) b3) + " is less than minimum " + ((int) b2) + org.apache.commons.lang3.Ctry.f28883do);
    }

    @m41
    public static final ok e(char c, char c2) {
        return ok.f4658new.m5699do(c, c2, -1);
    }

    @m41
    public static final ok e0(@m41 ok step, int i) {
        Csuper.m30700throw(step, "$this$step");
        Ctry.m30958do(i > 0, Integer.valueOf(i));
        ok.Cdo cdo = ok.f4658new;
        char cM5695do = step.m5695do();
        char cM5697if = step.m5697if();
        if (step.m5696for() <= 0) {
            i = -i;
        }
        return cdo.m5699do(cM5695do, cM5697if, i);
    }

    @wp0(name = "byteRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    /* renamed from: else, reason: not valid java name */
    public static final /* synthetic */ boolean m30871else(ClosedRange<Byte> contains, float f) {
        Csuper.m30700throw(contains, "$this$contains");
        Byte bI0 = i0(f);
        if (bI0 != null) {
            return contains.contains(bI0);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public static final double m30872extends(double d, double d2, double d3) {
        if (d2 <= d3) {
            return d < d2 ? d2 : d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + org.apache.commons.lang3.Ctry.f28883do);
    }

    @m41
    public static final bn0 f(byte b, byte b2) {
        return bn0.f492new.m596do(b, b2, -1);
    }

    @m41
    public static bn0 f0(@m41 bn0 step, int i) {
        Csuper.m30700throw(step, "$this$step");
        Ctry.m30958do(i > 0, Integer.valueOf(i));
        bn0.Cdo cdo = bn0.f492new;
        int iM592do = step.m592do();
        int iM594if = step.m594if();
        if (step.m593for() <= 0) {
            i = -i;
        }
        return cdo.m596do(iM592do, iM594if, i);
    }

    /* renamed from: final, reason: not valid java name */
    public static int m30873final(int i, int i2) {
        return i < i2 ? i2 : i;
    }

    /* renamed from: finally, reason: not valid java name */
    public static final float m30874finally(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + org.apache.commons.lang3.Ctry.f28883do);
    }

    @m41
    public static final bn0 g(byte b, int i) {
        return bn0.f492new.m596do(b, i, -1);
    }

    @m41
    public static final zv0 g0(@m41 zv0 step, long j) {
        Csuper.m30700throw(step, "$this$step");
        Ctry.m30958do(j > 0, Long.valueOf(j));
        zv0.Cdo cdo = zv0.f8663new;
        long jM10302do = step.m10302do();
        long jM10304if = step.m10304if();
        if (step.m10303for() <= 0) {
            j = -j;
        }
        return cdo.m10306do(jM10302do, jM10304if, j);
    }

    @wp0(name = "byteRangeContains")
    /* renamed from: goto, reason: not valid java name */
    public static final boolean m30875goto(@m41 ClosedRange<Byte> contains, int i) {
        Csuper.m30700throw(contains, "$this$contains");
        Byte bJ0 = j0(i);
        if (bJ0 != null) {
            return contains.contains(bJ0);
        }
        return false;
    }

    @m41
    public static final bn0 h(byte b, short s) {
        return bn0.f492new.m596do(b, s, -1);
    }

    @z41
    public static final Byte h0(double d) {
        double d2 = 127;
        if (d < -128 || d > d2) {
            return null;
        }
        return Byte.valueOf((byte) d);
    }

    @m41
    public static final bn0 i(int i, byte b) {
        return bn0.f492new.m596do(i, b, -1);
    }

    @z41
    public static final Byte i0(float f) {
        float f2 = 127;
        if (f < -128 || f > f2) {
            return null;
        }
        return Byte.valueOf((byte) f);
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: implements, reason: not valid java name */
    private static final boolean m30876implements(dn0 contains, Integer num) {
        Csuper.m30700throw(contains, "$this$contains");
        return num != null && contains.m1442case(num.intValue());
    }

    /* renamed from: import, reason: not valid java name */
    public static final byte m30877import(byte b, byte b2) {
        return b > b2 ? b2 : b;
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: instanceof, reason: not valid java name */
    private static final boolean m30878instanceof(bw0 contains, Long l) {
        Csuper.m30700throw(contains, "$this$contains");
        return l != null && contains.m660case(l.longValue());
    }

    @m41
    /* renamed from: interface, reason: not valid java name */
    public static final <T extends Comparable<? super T>> T m30879interface(@m41 T coerceIn, @m41 ClosedRange<T> range) {
        Csuper.m30700throw(coerceIn, "$this$coerceIn");
        Csuper.m30700throw(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return (T) m30895volatile(coerceIn, (ClosedFloatingPointRange) range);
        }
        if (!range.isEmpty()) {
            return coerceIn.compareTo(range.getStart()) < 0 ? (T) range.getStart() : coerceIn.compareTo(range.getEndInclusive()) > 0 ? (T) range.getEndInclusive() : coerceIn;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + org.apache.commons.lang3.Ctry.f28883do);
    }

    @m41
    public static bn0 j(int i, int i2) {
        return bn0.f492new.m596do(i, i2, -1);
    }

    @z41
    public static final Byte j0(int i) {
        if (-128 <= i && 127 >= i) {
            return Byte.valueOf((byte) i);
        }
        return null;
    }

    @m41
    public static final bn0 k(int i, short s) {
        return bn0.f492new.m596do(i, s, -1);
    }

    @z41
    public static final Byte k0(long j) {
        long j2 = 127;
        if (-128 <= j && j2 >= j) {
            return Byte.valueOf((byte) j);
        }
        return null;
    }

    @m41
    public static final bn0 l(short s, byte b) {
        return bn0.f492new.m596do(s, b, -1);
    }

    @z41
    public static final Byte l0(short s) {
        short s2 = (short) 127;
        if (((short) (-128)) <= s && s2 >= s) {
            return Byte.valueOf((byte) s);
        }
        return null;
    }

    @m41
    public static final bn0 m(short s, int i) {
        return bn0.f492new.m596do(s, i, -1);
    }

    @z41
    public static final Integer m0(double d) {
        double d2 = Integer.MAX_VALUE;
        if (d < Integer.MIN_VALUE || d > d2) {
            return null;
        }
        return Integer.valueOf((int) d);
    }

    @m41
    public static final bn0 n(short s, short s2) {
        return bn0.f492new.m596do(s, s2, -1);
    }

    @z41
    public static final Integer n0(float f) {
        float f2 = Integer.MAX_VALUE;
        if (f < Integer.MIN_VALUE || f > f2) {
            return null;
        }
        return Integer.valueOf((int) f);
    }

    /* renamed from: native, reason: not valid java name */
    public static final double m30880native(double d, double d2) {
        return d > d2 ? d2 : d;
    }

    @m41
    public static final zv0 o(byte b, long j) {
        return zv0.f8663new.m10306do(b, j, -1L);
    }

    @z41
    public static final Integer o0(long j) {
        long j2 = Integer.MAX_VALUE;
        if (Integer.MIN_VALUE <= j && j2 >= j) {
            return Integer.valueOf((int) j);
        }
        return null;
    }

    @m41
    public static final zv0 p(int i, long j) {
        return zv0.f8663new.m10306do(i, j, -1L);
    }

    @z41
    public static final Long p0(double d) {
        double d2 = Long.MAX_VALUE;
        if (d < Long.MIN_VALUE || d > d2) {
            return null;
        }
        return Long.valueOf((long) d);
    }

    /* renamed from: package, reason: not valid java name */
    public static int m30881package(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + org.apache.commons.lang3.Ctry.f28883do);
    }

    /* renamed from: private, reason: not valid java name */
    public static final int m30882private(int i, @m41 ClosedRange<Integer> range) {
        Csuper.m30700throw(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) m30895volatile(Integer.valueOf(i), (ClosedFloatingPointRange) range)).intValue();
        }
        if (!range.isEmpty()) {
            return i < ((Number) range.getStart()).intValue() ? ((Number) range.getStart()).intValue() : i > ((Number) range.getEndInclusive()).intValue() ? ((Number) range.getEndInclusive()).intValue() : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + org.apache.commons.lang3.Ctry.f28883do);
    }

    /* renamed from: protected, reason: not valid java name */
    public static final short m30883protected(short s, short s2, short s3) {
        if (s2 <= s3) {
            return s < s2 ? s2 : s > s3 ? s3 : s;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) s3) + " is less than minimum " + ((int) s2) + org.apache.commons.lang3.Ctry.f28883do);
    }

    /* renamed from: public, reason: not valid java name */
    public static final float m30884public(float f, float f2) {
        return f > f2 ? f2 : f;
    }

    @m41
    public static final zv0 q(long j, byte b) {
        return zv0.f8663new.m10306do(j, b, -1L);
    }

    @z41
    public static final Long q0(float f) {
        float f2 = Long.MAX_VALUE;
        if (f < Long.MIN_VALUE || f > f2) {
            return null;
        }
        return Long.valueOf((long) f);
    }

    @m41
    public static final zv0 r(long j, int i) {
        return zv0.f8663new.m10306do(j, i, -1L);
    }

    @z41
    public static final Short r0(double d) {
        double d2 = 32767;
        if (d < -32768 || d > d2) {
            return null;
        }
        return Short.valueOf((short) d);
    }

    /* renamed from: return, reason: not valid java name */
    public static int m30885return(int i, int i2) {
        return i > i2 ? i2 : i;
    }

    @m41
    public static final zv0 s(long j, long j2) {
        return zv0.f8663new.m10306do(j, j2, -1L);
    }

    @z41
    public static final Short s0(float f) {
        float f2 = 32767;
        if (f < -32768 || f > f2) {
            return null;
        }
        return Short.valueOf((short) f);
    }

    /* renamed from: static, reason: not valid java name */
    public static long m30886static(long j, long j2) {
        return j > j2 ? j2 : j;
    }

    @m41
    /* renamed from: strictfp, reason: not valid java name */
    public static final <T extends Comparable<? super T>> T m30887strictfp(@m41 T coerceIn, @z41 T t, @z41 T t2) {
        Csuper.m30700throw(coerceIn, "$this$coerceIn");
        if (t == null || t2 == null) {
            if (t != null && coerceIn.compareTo(t) < 0) {
                return t;
            }
            if (t2 != null && coerceIn.compareTo(t2) > 0) {
                return t2;
            }
        } else {
            if (t.compareTo(t2) > 0) {
                throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + t2 + " is less than minimum " + t + org.apache.commons.lang3.Ctry.f28883do);
            }
            if (coerceIn.compareTo(t) < 0) {
                return t;
            }
            if (coerceIn.compareTo(t2) > 0) {
                return t2;
            }
        }
        return coerceIn;
    }

    /* renamed from: super, reason: not valid java name */
    public static final long m30888super(long j, long j2) {
        return j < j2 ? j2 : j;
    }

    @m41
    /* renamed from: switch, reason: not valid java name */
    public static final <T extends Comparable<? super T>> T m30889switch(@m41 T coerceAtMost, @m41 T maximumValue) {
        Csuper.m30700throw(coerceAtMost, "$this$coerceAtMost");
        Csuper.m30700throw(maximumValue, "maximumValue");
        return coerceAtMost.compareTo(maximumValue) > 0 ? maximumValue : coerceAtMost;
    }

    @wp0(name = "doubleRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    /* renamed from: synchronized, reason: not valid java name */
    public static final /* synthetic */ boolean m30890synchronized(ClosedRange<Double> contains, byte b) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Double.valueOf(b));
    }

    @m41
    public static final zv0 t(long j, short s) {
        return zv0.f8663new.m10306do(j, s, -1L);
    }

    @z41
    public static final Short t0(int i) {
        if (-32768 <= i && 32767 >= i) {
            return Short.valueOf((short) i);
        }
        return null;
    }

    @wp0(name = "byteRangeContains")
    /* renamed from: this, reason: not valid java name */
    public static final boolean m30891this(@m41 ClosedRange<Byte> contains, long j) {
        Csuper.m30700throw(contains, "$this$contains");
        Byte bK0 = k0(j);
        if (bK0 != null) {
            return contains.contains(bK0);
        }
        return false;
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static final <T extends Comparable<? super T>> T m30892throw(@m41 T coerceAtLeast, @m41 T minimumValue) {
        Csuper.m30700throw(coerceAtLeast, "$this$coerceAtLeast");
        Csuper.m30700throw(minimumValue, "minimumValue");
        return coerceAtLeast.compareTo(minimumValue) < 0 ? minimumValue : coerceAtLeast;
    }

    /* renamed from: throws, reason: not valid java name */
    public static final short m30893throws(short s, short s2) {
        return s > s2 ? s2 : s;
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: transient, reason: not valid java name */
    private static final boolean m30894transient(qk contains, Character ch) {
        Csuper.m30700throw(contains, "$this$contains");
        return ch != null && contains.m6611case(ch.charValue());
    }

    @m41
    public static final zv0 u(short s, long j) {
        return zv0.f8663new.m10306do(s, j, -1L);
    }

    @z41
    public static final Short u0(long j) {
        long j2 = 32767;
        if (-32768 <= j && j2 >= j) {
            return Short.valueOf((short) j);
        }
        return null;
    }

    @wp0(name = "floatRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean v(ClosedRange<Float> contains, byte b) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Float.valueOf(b));
    }

    @m41
    public static final qk v0(char c, char c2) {
        return Csuper.m30692public(c2, 0) <= 0 ? qk.f5444case.m6614do() : new qk(c, (char) (c2 - 1));
    }

    @m41
    @iz1(version = "1.1")
    /* renamed from: volatile, reason: not valid java name */
    public static final <T extends Comparable<? super T>> T m30895volatile(@m41 T coerceIn, @m41 ClosedFloatingPointRange<T> range) {
        Csuper.m30700throw(coerceIn, "$this$coerceIn");
        Csuper.m30700throw(range, "range");
        if (!range.isEmpty()) {
            return (!range.lessThanOrEquals(coerceIn, range.getStart()) || range.lessThanOrEquals(range.getStart(), coerceIn)) ? (!range.lessThanOrEquals(range.getEndInclusive(), coerceIn) || range.lessThanOrEquals(coerceIn, range.getEndInclusive())) ? coerceIn : range.getEndInclusive() : range.getStart();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + org.apache.commons.lang3.Ctry.f28883do);
    }

    @wp0(name = "floatRangeContains")
    public static final boolean w(@m41 ClosedRange<Float> contains, double d) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Float.valueOf((float) d));
    }

    @m41
    public static final dn0 w0(byte b, byte b2) {
        return new dn0(b, b2 - 1);
    }

    /* renamed from: while, reason: not valid java name */
    public static final short m30896while(short s, short s2) {
        return s < s2 ? s2 : s;
    }

    @wp0(name = "floatRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean x(ClosedRange<Float> contains, int i) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Float.valueOf(i));
    }

    @m41
    public static final dn0 x0(byte b, int i) {
        return i <= Integer.MIN_VALUE ? dn0.f1085case.m1445do() : new dn0(b, i - 1);
    }

    @wp0(name = "floatRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean y(ClosedRange<Float> contains, long j) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Float.valueOf(j));
    }

    @m41
    public static final dn0 y0(byte b, short s) {
        return new dn0(b, s - 1);
    }

    @wp0(name = "floatRangeContains")
    @Cfor(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @Cnew(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    public static final /* synthetic */ boolean z(ClosedRange<Float> contains, short s) {
        Csuper.m30700throw(contains, "$this$contains");
        return contains.contains(Float.valueOf(s));
    }

    @m41
    public static final dn0 z0(int i, byte b) {
        return new dn0(i, b - 1);
    }
}
