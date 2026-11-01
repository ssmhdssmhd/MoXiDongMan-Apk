package org.antlr.v4.runtime.misc;

import java.util.List;

/* loaded from: classes3.dex */
public interface IntSet {
    void add(int i);

    IntSet addAll(IntSet intSet);

    IntSet and(IntSet intSet);

    IntSet complement(IntSet intSet);

    boolean contains(int i);

    boolean equals(Object obj);

    boolean isNil();

    IntSet or(IntSet intSet);

    void remove(int i);

    int size();

    IntSet subtract(IntSet intSet);

    List<Integer> toList();

    String toString();
}
