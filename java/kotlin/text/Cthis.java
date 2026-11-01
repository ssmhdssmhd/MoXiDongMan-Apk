package kotlin.text;

import android.support.v4.dn0;
import android.support.v4.yr0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import kotlin.Cwhile;
import kotlin.collections.Creturn;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0002\u001a-\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0014\b\u0000\u0010\u0005\u0018\u0001*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0082\b\u001a\u001e\u0010\u000e\u001a\u0004\u0018\u00010\r*\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002\u001a\u0016\u0010\u000f\u001a\u0004\u0018\u00010\r*\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002\u001a\f\u0010\u0012\u001a\u00020\u0011*\u00020\u0010H\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0011*\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0002H\u0002¨\u0006\u0015"}, d2 = {"", "Lkotlin/text/FlagEnum;", "", "class", "", ExifInterface.GPS_DIRECTION_TRUE, ES6Iterator.VALUE_PROPERTY, "", "goto", "Ljava/util/regex/Matcher;", TypedValues.Transition.S_FROM, "", "input", "Lkotlin/text/MatchResult;", "else", "this", "Ljava/util/regex/MatchResult;", "Landroid/support/v4/dn0;", "break", "groupIndex", "catch", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.text.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\t\u001a\u00020\u0005\"\u0014\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/FlagEnum;", "", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "", "invoke", "(Ljava/lang/Enum;)Z", "kotlin/text/RegexKt$fromInt$1$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.this$do, reason: invalid class name */
    public static final class Cdo<T> extends yr0 implements Function1<T, Boolean> {
        public final /* synthetic */ int $value$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(int i) {
            super(1);
            this.$value$inlined = i;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.valueOf(invoke((Enum) obj));
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)Z */
        /* JADX WARN: Multi-variable type inference failed */
        public final boolean invoke(Enum r3) {
            FlagEnum flagEnum = (FlagEnum) r3;
            return (this.$value$inlined & flagEnum.getMask()) == flagEnum.getValue();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\t\u001a\u00020\u0005\"\u0014\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/FlagEnum;", "", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "", "invoke", "(Ljava/lang/Enum;)Z", "kotlin/text/RegexKt$fromInt$1$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.this$if, reason: invalid class name */
    public static final class Cif<T> extends yr0 implements Function1<T, Boolean> {
        public final /* synthetic */ int $value$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(int i) {
            super(1);
            this.$value$inlined = i;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.valueOf(invoke((Enum) obj));
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)Z */
        /* JADX WARN: Multi-variable type inference failed */
        public final boolean invoke(Enum r3) {
            FlagEnum flagEnum = (FlagEnum) r3;
            return (this.$value$inlined & flagEnum.getMask()) == flagEnum.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static final dn0 m31223break(java.util.regex.MatchResult matchResult) {
        return Ccase.A0(matchResult.start(), matchResult.end());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static final dn0 m31225catch(java.util.regex.MatchResult matchResult, int i) {
        return Ccase.A0(matchResult.start(i), matchResult.end(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static final int m31226class(Iterable<? extends FlagEnum> iterable) {
        Iterator<? extends FlagEnum> it = iterable.iterator();
        int value = 0;
        while (it.hasNext()) {
            value |= it.next().getValue();
        }
        return value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static final MatchResult m31228else(Matcher matcher, int i, CharSequence charSequence) {
        if (matcher.find(i)) {
            return new Celse(matcher, charSequence);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static final /* synthetic */ <T extends Enum<T> & FlagEnum> Set<T> m31230goto(int i) {
        Csuper.m30674default(4, ExifInterface.GPS_DIRECTION_TRUE);
        EnumSet enumSetAllOf = EnumSet.allOf(Enum.class);
        Creturn.c0(enumSetAllOf, new Cif(i));
        Set<T> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        Csuper.m30696super(setUnmodifiableSet, "Collections.unmodifiable…mask == it.value }\n    })");
        return setUnmodifiableSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static final MatchResult m31233this(Matcher matcher, CharSequence charSequence) {
        if (matcher.matches()) {
            return new Celse(matcher, charSequence);
        }
        return null;
    }
}
