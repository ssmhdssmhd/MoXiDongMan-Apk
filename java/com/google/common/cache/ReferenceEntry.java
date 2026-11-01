package com.google.common.cache;

import android.support.v4.b51;
import android.support.v4.li0;
import com.google.common.cache.LocalCache;

@li0
/* loaded from: classes.dex */
interface ReferenceEntry<K, V> {
    long getAccessTime();

    int getHash();

    @b51
    K getKey();

    @b51
    ReferenceEntry<K, V> getNext();

    ReferenceEntry<K, V> getNextInAccessQueue();

    ReferenceEntry<K, V> getNextInWriteQueue();

    ReferenceEntry<K, V> getPreviousInAccessQueue();

    ReferenceEntry<K, V> getPreviousInWriteQueue();

    LocalCache.ValueReference<K, V> getValueReference();

    long getWriteTime();

    void setAccessTime(long j);

    void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry);

    void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry);

    void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry);

    void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry);

    void setValueReference(LocalCache.ValueReference<K, V> valueReference);

    void setWriteTime(long j);
}
