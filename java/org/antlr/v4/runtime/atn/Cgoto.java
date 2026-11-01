package org.antlr.v4.runtime.atn;

import android.support.v4.Cfinally;
import android.support.v4.Cinterface;
import android.support.v4.Cswitch;
import android.support.v4.Cthrows;
import android.support.v4.pc0;
import android.support.v4.y01;
import android.support.v4.yo1;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: org.antlr.v4.runtime.atn.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public enum Cgoto {
    SLL,
    LL,
    LL_EXACT_AMBIG_DETECTION;

    /* renamed from: org.antlr.v4.runtime.atn.goto$do, reason: invalid class name */
    public static final class Cdo extends Cinterface<Cswitch> {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f28476do = new Cdo();

        private Cdo() {
        }

        @Override // org.antlr.v4.runtime.misc.EqualityComparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean equals(Cswitch cswitch, Cswitch cswitch2) {
            if (cswitch == cswitch2) {
                return true;
            }
            return cswitch != null && cswitch2 != null && cswitch.f6323do.f1854if == cswitch2.f6323do.f1854if && cswitch.f6324for.equals(cswitch2.f6324for);
        }

        @Override // org.antlr.v4.runtime.misc.EqualityComparator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public int hashCode(Cswitch cswitch) {
            return y01.m9664do(y01.m9663case(y01.m9668try(y01.m9667new(7), cswitch.f6323do.f1854if), cswitch.f6324for), 2);
        }
    }

    /* renamed from: org.antlr.v4.runtime.atn.goto$if, reason: invalid class name */
    public static class Cif extends pc0<Cswitch, BitSet> {
        public Cif() {
            super(Cdo.f28476do);
        }
    }

    public static boolean allConfigsInRuleStopStates(Cthrows cthrows) {
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            if (!(it.next().f6323do instanceof yo1)) {
                return false;
            }
        }
        return true;
    }

    public static boolean allSubsetsConflict(Collection<BitSet> collection) {
        return !hasNonConflictingAltSet(collection);
    }

    public static boolean allSubsetsEqual(Collection<BitSet> collection) {
        Iterator<BitSet> it = collection.iterator();
        BitSet next = it.next();
        while (it.hasNext()) {
            if (!it.next().equals(next)) {
                return false;
            }
        }
        return true;
    }

    public static BitSet getAlts(Collection<BitSet> collection) {
        BitSet bitSet = new BitSet();
        Iterator<BitSet> it = collection.iterator();
        while (it.hasNext()) {
            bitSet.or(it.next());
        }
        return bitSet;
    }

    public static Collection<BitSet> getConflictingAltSubsets(Cthrows cthrows) {
        Cif cif = new Cif();
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            BitSet bitSet = (BitSet) cif.get(next);
            if (bitSet == null) {
                bitSet = new BitSet();
                cif.put(next, bitSet);
            }
            bitSet.set(next.f6325if);
        }
        return cif.values();
    }

    public static int getSingleViableAlt(Collection<BitSet> collection) {
        BitSet bitSet = new BitSet();
        Iterator<BitSet> it = collection.iterator();
        while (it.hasNext()) {
            bitSet.set(it.next().nextSetBit(0));
            if (bitSet.cardinality() > 1) {
                return 0;
            }
        }
        return bitSet.nextSetBit(0);
    }

    public static Map<Cfinally, BitSet> getStateToAltMap(Cthrows cthrows) {
        HashMap map = new HashMap();
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            BitSet bitSet = (BitSet) map.get(next.f6323do);
            if (bitSet == null) {
                bitSet = new BitSet();
                map.put(next.f6323do, bitSet);
            }
            bitSet.set(next.f6325if);
        }
        return map;
    }

    public static int getUniqueAlt(Collection<BitSet> collection) {
        BitSet alts = getAlts(collection);
        if (alts.cardinality() == 1) {
            return alts.nextSetBit(0);
        }
        return 0;
    }

    public static boolean hasConfigInRuleStopState(Cthrows cthrows) {
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            if (it.next().f6323do instanceof yo1) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasConflictingAltSet(Collection<BitSet> collection) {
        Iterator<BitSet> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next().cardinality() > 1) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasNonConflictingAltSet(Collection<BitSet> collection) {
        Iterator<BitSet> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next().cardinality() == 1) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasSLLConflictTerminatingPrediction(Cgoto cgoto, Cthrows cthrows) {
        if (allConfigsInRuleStopStates(cthrows)) {
            return true;
        }
        if (cgoto == SLL && cthrows.f6560case) {
            Cthrows cthrows2 = new Cthrows();
            Iterator<Cswitch> it = cthrows.iterator();
            while (it.hasNext()) {
                cthrows2.add(new Cswitch(it.next(), Cbreak.f28443do));
            }
            cthrows = cthrows2;
        }
        return hasConflictingAltSet(getConflictingAltSubsets(cthrows)) && !hasStateAssociatedWithOneAlt(cthrows);
    }

    public static boolean hasStateAssociatedWithOneAlt(Cthrows cthrows) {
        Iterator<BitSet> it = getStateToAltMap(cthrows).values().iterator();
        while (it.hasNext()) {
            if (it.next().cardinality() == 1) {
                return true;
            }
        }
        return false;
    }

    public static int resolvesToJustOneViableAlt(Collection<BitSet> collection) {
        return getSingleViableAlt(collection);
    }

    public static BitSet getAlts(Cthrows cthrows) {
        BitSet bitSet = new BitSet();
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            bitSet.set(it.next().f6325if);
        }
        return bitSet;
    }
}
