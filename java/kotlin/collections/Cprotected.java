package kotlin.collections;

import android.R;
import android.support.v4.an1;
import android.support.v4.h91;
import android.support.v4.iz1;
import android.support.v4.lj0;
import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Cfor;
import kotlin.Cnew;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0080\u0001\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a]\u0010\b\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\b\b\u0002\u0010\u0003*\u00020\u0002*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042 \u0010\u0007\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00018\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a_\u0010\n\u001a\u0004\u0018\u00018\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\b\b\u0002\u0010\u0003*\u00020\u0002*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042 \u0010\u0007\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00018\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\t\u001a6\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f0\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u001a\\\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00020\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042$\u0010\u0007\u001a \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u000e0\u0005H\u0086\bø\u0001\u0000\u001ac\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00020\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042$\u0010\u0007\u001a \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00100\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001aw\u0010\u0016\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003\"\u0010\b\u0003\u0010\u0014*\n\u0012\u0006\b\u0000\u0012\u00028\u00020\u0013*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0015\u001a\u00028\u00032$\u0010\u0007\u001a \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u000e0\u0005H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001aw\u0010\u0018\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003\"\u0010\b\u0003\u0010\u0014*\n\u0012\u0006\b\u0000\u0012\u00028\u00020\u0013*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0015\u001a\u00028\u00032$\u0010\u0007\u001a \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00100\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0017\u001aV\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010\u0007\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0086\bø\u0001\u0000\u001a\\\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00020\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\b\b\u0002\u0010\u0003*\u00020\u0002*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042 \u0010\u0007\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00018\u00020\u0005H\u0086\bø\u0001\u0000\u001aw\u0010\u001b\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\b\b\u0002\u0010\u0003*\u00020\u0002\"\u0010\b\u0003\u0010\u0014*\n\u0012\u0006\b\u0000\u0012\u00028\u00020\u0013*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0015\u001a\u00028\u00032 \u0010\u0007\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00018\u00020\u0005H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0017\u001aq\u0010\u001c\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003\"\u0010\b\u0003\u0010\u0014*\n\u0012\u0006\b\u0000\u0012\u00028\u00020\u0013*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0015\u001a\u00028\u00032\u001e\u0010\u0007\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u0017\u001aJ\u0010\u001f\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010\u001e\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020\u001d0\u0005H\u0086\bø\u0001\u0000\u001a$\u0010 \u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u001aJ\u0010!\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010\u001e\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020\u001d0\u0005H\u0086\bø\u0001\u0000\u001a'\u0010#\u001a\u00020\"\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\b\u001aJ\u0010$\u001a\u00020\"\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010\u001e\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020\u001d0\u0005H\u0086\bø\u0001\u0000\u001aJ\u0010'\u001a\u00020%\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010&\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020%0\u0005H\u0087\bø\u0001\u0000\u001ah\u0010*\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000\u001ah\u0010+\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000\u001aJ\u0010-\u001a\u00020,\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020,0\u0005H\u0087\bø\u0001\u0000\u001aJ\u0010/\u001a\u00020.\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020.0\u0005H\u0087\bø\u0001\u0000\u001aa\u00100\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b0\u00101\u001aS\u00102\u001a\u0004\u0018\u00010,\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020,0\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b2\u00103\u001aS\u00104\u001a\u0004\u0018\u00010.\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020.0\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b4\u00105\u001ac\u00106\u001a\u0004\u0018\u00018\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b6\u00101\u001as\u0010:\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001a\u00109\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u000207j\n\u0012\u0006\b\u0000\u0012\u00028\u0002`82\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b:\u0010;\u001au\u0010<\u001a\u0004\u0018\u00018\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001a\u00109\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u000207j\n\u0012\u0006\b\u0000\u0012\u00028\u0002`82\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\b<\u0010;\u001ai\u0010=\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000422\u00109\u001a.\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000607j\u0016\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006`8H\u0087\b\u001ai\u0010>\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000422\u00109\u001a.\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000607j\u0016\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006`8H\u0087\b\u001ah\u0010?\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000\u001ah\u0010@\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000\u001aJ\u0010A\u001a\u00020,\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020,0\u0005H\u0087\bø\u0001\u0000\u001aJ\u0010B\u001a\u00020.\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020.0\u0005H\u0087\bø\u0001\u0000\u001aa\u0010C\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\bC\u00101\u001aS\u0010D\u001a\u0004\u0018\u00010,\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020,0\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\bD\u00103\u001aS\u0010E\u001a\u0004\u0018\u00010.\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020.0\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\bE\u00105\u001ac\u0010F\u001a\u0004\u0018\u00018\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00020(*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\bF\u00101\u001as\u0010G\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001a\u00109\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u000207j\n\u0012\u0006\b\u0000\u0012\u00028\u0002`82\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\bG\u0010;\u001au\u0010H\u001a\u0004\u0018\u00018\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001a\u00109\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u000207j\n\u0012\u0006\b\u0000\u0012\u00028\u0002`82\u001e\u0010)\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\bH\u0010;\u001ah\u0010I\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000422\u00109\u001a.\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000607j\u0016\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006`8H\u0007\u001ai\u0010J\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000422\u00109\u001a.\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000607j\u0016\u0012\u0012\b\u0000\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006`8H\u0087\b\u001a$\u0010K\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u001aJ\u0010L\u001a\u00020\u001d\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001e\u0010\u001e\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020\u001d0\u0005H\u0086\bø\u0001\u0000\u001a[\u0010N\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0016\b\u0002\u0010M*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004*\u00028\u00022\u001e\u0010&\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020%0\u0005H\u0087\bø\u0001\u0000¢\u0006\u0004\bN\u0010O\u001ap\u0010T\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0016\b\u0002\u0010M*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004*\u00028\u000223\u0010&\u001a/\u0012\u0013\u0012\u00110\"¢\u0006\f\bQ\u0012\b\bR\u0012\u0004\b\b(S\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00020%0PH\u0087\bø\u0001\u0000¢\u0006\u0004\bT\u0010U\u001a9\u0010V\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00060\u000e\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\b\u001a6\u0010W\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00060\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006X"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "R", "", "Lkotlin/Function1;", "", "transform", "f0", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "g0", "", "Landroid/support/v4/qb1;", "S0", "", "h0", "Lkotlin/sequences/Sequence;", "i0", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "", "C", "destination", "k0", "(Ljava/util/Map;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;", "j0", "m0", "n0", "o0", "p0", "", "predicate", "Y", "Z", "a0", "", "d0", "e0", "Landroid/support/v4/ub2;", "action", "l0", "", "selector", "q0", "r0", "", "s0", "", "t0", "u0", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/lang/Comparable;", "w0", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/lang/Double;", "x0", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/lang/Float;", "v0", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "y0", "(Ljava/util/Map;Ljava/util/Comparator;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "z0", "A0", "B0", "C0", "D0", "E0", "F0", "G0", "I0", "J0", "H0", "K0", "L0", "M0", "N0", "O0", "P0", "M", "Q0", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "Lkotlin/Function2;", "Landroid/support/v4/xb1;", "name", "index", "R0", "(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "b0", "c0", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/MapsKt")
/* renamed from: kotlin.collections.protected, reason: invalid class name */
/* loaded from: classes.dex */
class Cprotected extends Cinterface {
    @um0
    @Cfor(message = "Use maxWithOrNull instead.", replaceWith = @an1(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @Cnew(errorSince = "1.5", warningSince = "1.4")
    private static final <K, V> Map.Entry<K, V> A0(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        return (Map.Entry) Cthrows.W2(map.entrySet(), comparator);
    }

    @iz1(version = "1.4")
    @um0
    private static final <K, V> Map.Entry<K, V> B0(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        return (Map.Entry) Cthrows.W2(map.entrySet(), comparator);
    }

    @z41
    @Cfor(message = "Use minByOrNull instead.", replaceWith = @an1(expression = "this.minByOrNull(selector)", imports = {}))
    @Cnew(errorSince = "1.5", warningSince = "1.4")
    public static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> C0(@m41 Map<? extends K, ? extends V> minBy, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        Map.Entry<K, V> entry;
        Csuper.m30700throw(minBy, "$this$minBy");
        Csuper.m30700throw(selector, "selector");
        Iterator<T> it = minBy.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<K, V> entry2 = (Object) it.next();
            if (it.hasNext()) {
                R rInvoke = selector.invoke(entry2);
                do {
                    Map.Entry<K, V> entry3 = (Object) it.next();
                    R rInvoke2 = selector.invoke(entry3);
                    if (rInvoke.compareTo(rInvoke2) > 0) {
                        entry2 = entry3;
                        rInvoke = rInvoke2;
                    }
                } while (it.hasNext());
            }
            entry = entry2;
        } else {
            entry = null;
        }
        return entry;
    }

    @iz1(version = "1.4")
    @um0
    private static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> D0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Map.Entry<K, V> entry;
        Iterator<T> it = map.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<K, V> entry2 = (Object) it.next();
            if (it.hasNext()) {
                R rInvoke = function1.invoke(entry2);
                do {
                    Map.Entry<K, V> entry3 = (Object) it.next();
                    R rInvoke2 = function1.invoke(entry3);
                    if (rInvoke.compareTo(rInvoke2) > 0) {
                        entry2 = entry3;
                        rInvoke = rInvoke2;
                    }
                } while (it.hasNext());
            }
            entry = entry2;
        } else {
            entry = null;
        }
        return entry;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> double E0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Double> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double dDoubleValue = function1.invoke((Object) it.next()).doubleValue();
        while (it.hasNext()) {
            dDoubleValue = Math.min(dDoubleValue, function1.invoke((Object) it.next()).doubleValue());
        }
        return dDoubleValue;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> float F0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Float> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float fFloatValue = function1.invoke((Object) it.next()).floatValue();
        while (it.hasNext()) {
            fFloatValue = Math.min(fFloatValue, function1.invoke((Object) it.next()).floatValue());
        }
        return fFloatValue;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R extends Comparable<? super R>> R G0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        R rInvoke = function1.invoke((Object) it.next());
        while (it.hasNext()) {
            R rInvoke2 = function1.invoke((Object) it.next());
            if (rInvoke.compareTo(rInvoke2) > 0) {
                rInvoke = rInvoke2;
            }
        }
        return rInvoke;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R extends Comparable<? super R>> R H0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        R rInvoke = function1.invoke((Object) it.next());
        while (it.hasNext()) {
            R rInvoke2 = function1.invoke((Object) it.next());
            if (rInvoke.compareTo(rInvoke2) > 0) {
                rInvoke = rInvoke2;
            }
        }
        return rInvoke;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> Double I0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Double> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        double dDoubleValue = function1.invoke((Object) it.next()).doubleValue();
        while (it.hasNext()) {
            dDoubleValue = Math.min(dDoubleValue, function1.invoke((Object) it.next()).doubleValue());
        }
        return Double.valueOf(dDoubleValue);
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> Float J0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Float> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        float fFloatValue = function1.invoke((Object) it.next()).floatValue();
        while (it.hasNext()) {
            fFloatValue = Math.min(fFloatValue, function1.invoke((Object) it.next()).floatValue());
        }
        return Float.valueOf(fFloatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R> R K0(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) function1.invoke((Object) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) function1.invoke((Object) it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R> R L0(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) function1.invoke((Object) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) function1.invoke((Object) it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (Object) obj2;
            }
        }
        return obj;
    }

    @z41
    @Cfor(message = "Use minWithOrNull instead.", replaceWith = @an1(expression = "this.minWithOrNull(comparator)", imports = {}))
    @Cnew(errorSince = "1.5", warningSince = "1.4")
    public static final <K, V> Map.Entry<K, V> M0(@m41 Map<? extends K, ? extends V> minWith, @m41 Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        Csuper.m30700throw(minWith, "$this$minWith");
        Csuper.m30700throw(comparator, "comparator");
        return (Map.Entry) Cthrows.o3(minWith.entrySet(), comparator);
    }

    @iz1(version = "1.4")
    @um0
    private static final <K, V> Map.Entry<K, V> N0(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        return (Map.Entry) Cthrows.o3(map.entrySet(), comparator);
    }

    public static final <K, V> boolean O0(@m41 Map<? extends K, ? extends V> none) {
        Csuper.m30700throw(none, "$this$none");
        return none.isEmpty();
    }

    public static final <K, V> boolean P0(@m41 Map<? extends K, ? extends V> none, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(none, "$this$none");
        Csuper.m30700throw(predicate, "predicate");
        if (none.isEmpty()) {
            return true;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = none.entrySet().iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @m41
    @iz1(version = "1.1")
    public static final <K, V, M extends Map<? extends K, ? extends V>> M Q0(@m41 M onEach, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ub2> action) {
        Csuper.m30700throw(onEach, "$this$onEach");
        Csuper.m30700throw(action, "action");
        Iterator<Map.Entry<K, V>> it = onEach.entrySet().iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
        return onEach;
    }

    @m41
    @iz1(version = "1.4")
    public static final <K, V, M extends Map<? extends K, ? extends V>> M R0(@m41 M onEachIndexed, @m41 Function2<? super Integer, ? super Map.Entry<? extends K, ? extends V>, ub2> action) {
        Csuper.m30700throw(onEachIndexed, "$this$onEachIndexed");
        Csuper.m30700throw(action, "action");
        Iterator<T> it = onEachIndexed.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            R.bool boolVar = (Object) it.next();
            int i2 = i + 1;
            if (i < 0) {
                Cthrow.j();
            }
            action.invoke(Integer.valueOf(i), boolVar);
            i = i2;
        }
        return onEachIndexed;
    }

    @m41
    public static final <K, V> List<qb1<K, V>> S0(@m41 Map<? extends K, ? extends V> toList) {
        Csuper.m30700throw(toList, "$this$toList");
        if (toList.size() == 0) {
            return Cthrow.m30175continue();
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = toList.entrySet().iterator();
        if (!it.hasNext()) {
            return Cthrow.m30175continue();
        }
        Map.Entry<? extends K, ? extends V> next = it.next();
        if (!it.hasNext()) {
            return Csuper.m30144catch(new qb1(next.getKey(), next.getValue()));
        }
        ArrayList arrayList = new ArrayList(toList.size());
        arrayList.add(new qb1(next.getKey(), next.getValue()));
        do {
            Map.Entry<? extends K, ? extends V> next2 = it.next();
            arrayList.add(new qb1(next2.getKey(), next2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }

    public static final <K, V> boolean Y(@m41 Map<? extends K, ? extends V> all, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(all, "$this$all");
        Csuper.m30700throw(predicate, "predicate");
        if (all.isEmpty()) {
            return true;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = all.entrySet().iterator();
        while (it.hasNext()) {
            if (!predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <K, V> boolean Z(@m41 Map<? extends K, ? extends V> any) {
        Csuper.m30700throw(any, "$this$any");
        return !any.isEmpty();
    }

    public static final <K, V> boolean a0(@m41 Map<? extends K, ? extends V> any, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(any, "$this$any");
        Csuper.m30700throw(predicate, "predicate");
        if (any.isEmpty()) {
            return false;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = any.entrySet().iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @um0
    private static final <K, V> Iterable<Map.Entry<K, V>> b0(Map<? extends K, ? extends V> map) {
        return map.entrySet();
    }

    @m41
    public static final <K, V> Sequence<Map.Entry<K, V>> c0(@m41 Map<? extends K, ? extends V> asSequence) {
        Csuper.m30700throw(asSequence, "$this$asSequence");
        return Cthrows.A0(asSequence.entrySet());
    }

    @um0
    private static final <K, V> int d0(Map<? extends K, ? extends V> map) {
        return map.size();
    }

    public static final <K, V> int e0(@m41 Map<? extends K, ? extends V> count, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Csuper.m30700throw(count, "$this$count");
        Csuper.m30700throw(predicate, "predicate");
        int i = 0;
        if (count.isEmpty()) {
            return 0;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = count.entrySet().iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                i++;
            }
        }
        return i;
    }

    @iz1(version = "1.5")
    @um0
    private static final <K, V, R> R f0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        R rInvoke;
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                rInvoke = null;
                break;
            }
            rInvoke = function1.invoke(it.next());
            if (rInvoke != null) {
                break;
            }
        }
        if (rInvoke != null) {
            return rInvoke;
        }
        throw new NoSuchElementException("No element of the map was transformed to a non-null value.");
    }

    @iz1(version = "1.5")
    @um0
    private static final <K, V, R> R g0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            R rInvoke = function1.invoke(it.next());
            if (rInvoke != null) {
                return rInvoke;
            }
        }
        return null;
    }

    @m41
    public static final <K, V, R> List<R> h0(@m41 Map<? extends K, ? extends V> flatMap, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends Iterable<? extends R>> transform) {
        Csuper.m30700throw(flatMap, "$this$flatMap");
        Csuper.m30700throw(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<? extends K, ? extends V>> it = flatMap.entrySet().iterator();
        while (it.hasNext()) {
            Creturn.D(arrayList, transform.invoke(it.next()));
        }
        return arrayList;
    }

    @m41
    @wp0(name = "flatMapSequence")
    @h91
    @iz1(version = "1.4")
    public static final <K, V, R> List<R> i0(@m41 Map<? extends K, ? extends V> flatMap, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends Sequence<? extends R>> transform) {
        Csuper.m30700throw(flatMap, "$this$flatMap");
        Csuper.m30700throw(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<? extends K, ? extends V>> it = flatMap.entrySet().iterator();
        while (it.hasNext()) {
            Creturn.E(arrayList, transform.invoke(it.next()));
        }
        return arrayList;
    }

    @m41
    @wp0(name = "flatMapSequenceTo")
    @h91
    @iz1(version = "1.4")
    public static final <K, V, R, C extends Collection<? super R>> C j0(@m41 Map<? extends K, ? extends V> flatMapTo, @m41 C destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends Sequence<? extends R>> transform) {
        Csuper.m30700throw(flatMapTo, "$this$flatMapTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = flatMapTo.entrySet().iterator();
        while (it.hasNext()) {
            Creturn.E(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    @m41
    public static final <K, V, R, C extends Collection<? super R>> C k0(@m41 Map<? extends K, ? extends V> flatMapTo, @m41 C destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends Iterable<? extends R>> transform) {
        Csuper.m30700throw(flatMapTo, "$this$flatMapTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = flatMapTo.entrySet().iterator();
        while (it.hasNext()) {
            Creturn.D(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    @lj0
    public static final <K, V> void l0(@m41 Map<? extends K, ? extends V> forEach, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ub2> action) {
        Csuper.m30700throw(forEach, "$this$forEach");
        Csuper.m30700throw(action, "action");
        Iterator<Map.Entry<? extends K, ? extends V>> it = forEach.entrySet().iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
    }

    @m41
    public static final <K, V, R> List<R> m0(@m41 Map<? extends K, ? extends V> map, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(map, "$this$map");
        Csuper.m30700throw(transform, "transform");
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(transform.invoke(it.next()));
        }
        return arrayList;
    }

    @m41
    public static final <K, V, R> List<R> n0(@m41 Map<? extends K, ? extends V> mapNotNull, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(mapNotNull, "$this$mapNotNull");
        Csuper.m30700throw(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<? extends K, ? extends V>> it = mapNotNull.entrySet().iterator();
        while (it.hasNext()) {
            R rInvoke = transform.invoke(it.next());
            if (rInvoke != null) {
                arrayList.add(rInvoke);
            }
        }
        return arrayList;
    }

    @m41
    public static final <K, V, R, C extends Collection<? super R>> C o0(@m41 Map<? extends K, ? extends V> mapNotNullTo, @m41 C destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(mapNotNullTo, "$this$mapNotNullTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = mapNotNullTo.entrySet().iterator();
        while (it.hasNext()) {
            R rInvoke = transform.invoke(it.next());
            if (rInvoke != null) {
                destination.add(rInvoke);
            }
        }
        return destination;
    }

    @m41
    public static final <K, V, R, C extends Collection<? super R>> C p0(@m41 Map<? extends K, ? extends V> mapTo, @m41 C destination, @m41 Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Csuper.m30700throw(mapTo, "$this$mapTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = mapTo.entrySet().iterator();
        while (it.hasNext()) {
            destination.add(transform.invoke(it.next()));
        }
        return destination;
    }

    @um0
    @Cfor(message = "Use maxByOrNull instead.", replaceWith = @an1(expression = "this.maxByOrNull(selector)", imports = {}))
    @Cnew(errorSince = "1.5", warningSince = "1.4")
    private static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> q0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Map.Entry<K, V> entry;
        Iterator<T> it = map.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<K, V> entry2 = (Object) it.next();
            if (it.hasNext()) {
                R rInvoke = function1.invoke(entry2);
                do {
                    Map.Entry<K, V> entry3 = (Object) it.next();
                    R rInvoke2 = function1.invoke(entry3);
                    if (rInvoke.compareTo(rInvoke2) < 0) {
                        entry2 = entry3;
                        rInvoke = rInvoke2;
                    }
                } while (it.hasNext());
            }
            entry = entry2;
        } else {
            entry = null;
        }
        return entry;
    }

    @iz1(version = "1.4")
    @um0
    private static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> r0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Map.Entry<K, V> entry;
        Iterator<T> it = map.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<K, V> entry2 = (Object) it.next();
            if (it.hasNext()) {
                R rInvoke = function1.invoke(entry2);
                do {
                    Map.Entry<K, V> entry3 = (Object) it.next();
                    R rInvoke2 = function1.invoke(entry3);
                    if (rInvoke.compareTo(rInvoke2) < 0) {
                        entry2 = entry3;
                        rInvoke = rInvoke2;
                    }
                } while (it.hasNext());
            }
            entry = entry2;
        } else {
            entry = null;
        }
        return entry;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> double s0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Double> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double dDoubleValue = function1.invoke((Object) it.next()).doubleValue();
        while (it.hasNext()) {
            dDoubleValue = Math.max(dDoubleValue, function1.invoke((Object) it.next()).doubleValue());
        }
        return dDoubleValue;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> float t0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Float> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float fFloatValue = function1.invoke((Object) it.next()).floatValue();
        while (it.hasNext()) {
            fFloatValue = Math.max(fFloatValue, function1.invoke((Object) it.next()).floatValue());
        }
        return fFloatValue;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R extends Comparable<? super R>> R u0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        R rInvoke = function1.invoke((Object) it.next());
        while (it.hasNext()) {
            R rInvoke2 = function1.invoke((Object) it.next());
            if (rInvoke.compareTo(rInvoke2) < 0) {
                rInvoke = rInvoke2;
            }
        }
        return rInvoke;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R extends Comparable<? super R>> R v0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        R rInvoke = function1.invoke((Object) it.next());
        while (it.hasNext()) {
            R rInvoke2 = function1.invoke((Object) it.next());
            if (rInvoke.compareTo(rInvoke2) < 0) {
                rInvoke = rInvoke2;
            }
        }
        return rInvoke;
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> Double w0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Double> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        double dDoubleValue = function1.invoke((Object) it.next()).doubleValue();
        while (it.hasNext()) {
            dDoubleValue = Math.max(dDoubleValue, function1.invoke((Object) it.next()).doubleValue());
        }
        return Double.valueOf(dDoubleValue);
    }

    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V> Float x0(Map<? extends K, ? extends V> map, Function1<? super Map.Entry<? extends K, ? extends V>, Float> function1) {
        Iterator<T> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        float fFloatValue = function1.invoke((Object) it.next()).floatValue();
        while (it.hasNext()) {
            fFloatValue = Math.max(fFloatValue, function1.invoke((Object) it.next()).floatValue());
        }
        return Float.valueOf(fFloatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R> R y0(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) function1.invoke((Object) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) function1.invoke((Object) it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.4")
    @um0
    @h91
    private static final <K, V, R> R z0(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) function1.invoke((Object) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) function1.invoke((Object) it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (Object) obj2;
            }
        }
        return obj;
    }
}
