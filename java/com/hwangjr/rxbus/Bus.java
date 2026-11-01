package com.hwangjr.rxbus;

import com.hwangjr.rxbus.annotation.Tag;
import com.hwangjr.rxbus.entity.DeadEvent;
import com.hwangjr.rxbus.entity.EventType;
import com.hwangjr.rxbus.entity.ProducerEvent;
import com.hwangjr.rxbus.entity.SubscriberEvent;
import com.hwangjr.rxbus.finder.Finder;
import com.hwangjr.rxbus.thread.ThreadEnforcer;
import io.reactivex.functions.Consumer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
public class Bus {
    public static final String DEFAULT_IDENTIFIER = "default";
    private final ThreadEnforcer enforcer;
    private final Finder finder;
    private final ConcurrentMap<Class<?>, Set<Class<?>>> flattenHierarchyCache;
    private final String identifier;
    private final ConcurrentMap<EventType, ProducerEvent> producersByType;
    private final ConcurrentMap<EventType, Set<SubscriberEvent>> subscribersByType;

    public Bus() {
        this("default");
    }

    private void dispatchProducerResult(final SubscriberEvent subscriberEvent, ProducerEvent producerEvent) {
        producerEvent.produce().subscribe(new Consumer() { // from class: com.hwangjr.rxbus.Bus.1
            @Override // io.reactivex.functions.Consumer
            public void accept(Object obj) {
                if (obj != null) {
                    Bus.this.dispatch(obj, subscriberEvent);
                }
            }
        });
    }

    private Set<Class<?>> getClassesFor(Class<?> cls) {
        LinkedList linkedList = new LinkedList();
        HashSet hashSet = new HashSet();
        linkedList.add(cls);
        while (!linkedList.isEmpty()) {
            Class cls2 = (Class) linkedList.remove(0);
            hashSet.add(cls2);
            Class superclass = cls2.getSuperclass();
            if (superclass != null) {
                linkedList.add(superclass);
            }
        }
        return hashSet;
    }

    public void dispatch(Object obj, SubscriberEvent subscriberEvent) {
        if (subscriberEvent.isValid()) {
            subscriberEvent.handle(obj);
        }
    }

    public Set<Class<?>> flattenHierarchy(Class<?> cls) {
        Set<Class<?>> set = this.flattenHierarchyCache.get(cls);
        if (set != null) {
            return set;
        }
        Set<Class<?>> classesFor = getClassesFor(cls);
        Set<Class<?>> setPutIfAbsent = this.flattenHierarchyCache.putIfAbsent(cls, classesFor);
        return setPutIfAbsent == null ? classesFor : setPutIfAbsent;
    }

    public ProducerEvent getProducerForEventType(EventType eventType) {
        return this.producersByType.get(eventType);
    }

    public Set<SubscriberEvent> getSubscribersForEventType(EventType eventType) {
        return this.subscribersByType.get(eventType);
    }

    public void post(Object obj) {
        post(Tag.DEFAULT, obj);
    }

    public void register(Object obj) {
        Set<SubscriberEvent> setPutIfAbsent;
        Objects.requireNonNull(obj, "Object to register must not be null.");
        this.enforcer.enforce(this);
        Map<EventType, ProducerEvent> mapFindAllProducers = this.finder.findAllProducers(obj);
        for (EventType eventType : mapFindAllProducers.keySet()) {
            ProducerEvent producerEvent = mapFindAllProducers.get(eventType);
            ProducerEvent producerEventPutIfAbsent = this.producersByType.putIfAbsent(eventType, producerEvent);
            if (producerEventPutIfAbsent != null) {
                throw new IllegalArgumentException("Producer method for type " + eventType + " found on type " + producerEvent.getTarget().getClass() + ", but already registered by type " + producerEventPutIfAbsent.getTarget().getClass() + ".");
            }
            Set<SubscriberEvent> set = this.subscribersByType.get(eventType);
            if (set != null && !set.isEmpty()) {
                Iterator<SubscriberEvent> it = set.iterator();
                while (it.hasNext()) {
                    dispatchProducerResult(it.next(), producerEvent);
                }
            }
        }
        Map<EventType, Set<SubscriberEvent>> mapFindAllSubscribers = this.finder.findAllSubscribers(obj);
        for (EventType eventType2 : mapFindAllSubscribers.keySet()) {
            Set<SubscriberEvent> copyOnWriteArraySet = this.subscribersByType.get(eventType2);
            if (copyOnWriteArraySet == null && (setPutIfAbsent = this.subscribersByType.putIfAbsent(eventType2, (copyOnWriteArraySet = new CopyOnWriteArraySet<>()))) != null) {
                copyOnWriteArraySet = setPutIfAbsent;
            }
            if (!copyOnWriteArraySet.addAll(mapFindAllSubscribers.get(eventType2))) {
                throw new IllegalArgumentException("Object already registered.");
            }
        }
        for (Map.Entry<EventType, Set<SubscriberEvent>> entry : mapFindAllSubscribers.entrySet()) {
            ProducerEvent producerEvent2 = this.producersByType.get(entry.getKey());
            if (producerEvent2 != null && producerEvent2.isValid()) {
                for (SubscriberEvent subscriberEvent : entry.getValue()) {
                    if (!producerEvent2.isValid()) {
                        break;
                    } else if (subscriberEvent.isValid()) {
                        dispatchProducerResult(subscriberEvent, producerEvent2);
                    }
                }
            }
        }
    }

    public String toString() {
        return "[Bus \"" + this.identifier + "\"]";
    }

    public void unregister(Object obj) {
        Objects.requireNonNull(obj, "Object to unregister must not be null.");
        this.enforcer.enforce(this);
        for (Map.Entry<EventType, ProducerEvent> entry : this.finder.findAllProducers(obj).entrySet()) {
            EventType key = entry.getKey();
            ProducerEvent producerForEventType = getProducerForEventType(key);
            ProducerEvent value = entry.getValue();
            if (value == null || !value.equals(producerForEventType)) {
                throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + obj.getClass() + " registered?");
            }
            this.producersByType.remove(key).invalidate();
        }
        for (Map.Entry<EventType, Set<SubscriberEvent>> entry2 : this.finder.findAllSubscribers(obj).entrySet()) {
            Set<SubscriberEvent> subscribersForEventType = getSubscribersForEventType(entry2.getKey());
            Set<SubscriberEvent> value2 = entry2.getValue();
            if (subscribersForEventType == null || !subscribersForEventType.containsAll(value2)) {
                throw new IllegalArgumentException("Missing event subscriber for an annotated method. Is " + obj.getClass() + " registered?");
            }
            for (SubscriberEvent subscriberEvent : subscribersForEventType) {
                if (value2.contains(subscriberEvent)) {
                    subscriberEvent.invalidate();
                }
            }
            subscribersForEventType.removeAll(value2);
        }
    }

    public Bus(String str) {
        this(ThreadEnforcer.MAIN, str);
    }

    public void post(String str, Object obj) {
        Objects.requireNonNull(obj, "Event to post must not be null.");
        this.enforcer.enforce(this);
        boolean z = false;
        Iterator<Class<?>> it = flattenHierarchy(obj.getClass()).iterator();
        while (it.hasNext()) {
            Set<SubscriberEvent> subscribersForEventType = getSubscribersForEventType(new EventType(str, it.next()));
            if (subscribersForEventType != null && !subscribersForEventType.isEmpty()) {
                z = true;
                Iterator<SubscriberEvent> it2 = subscribersForEventType.iterator();
                while (it2.hasNext()) {
                    dispatch(obj, it2.next());
                }
            }
        }
        if (z || (obj instanceof DeadEvent)) {
            return;
        }
        post(new DeadEvent(this, obj));
    }

    public Bus(ThreadEnforcer threadEnforcer) {
        this(threadEnforcer, "default");
    }

    public Bus(ThreadEnforcer threadEnforcer, String str) {
        this(threadEnforcer, str, Finder.ANNOTATED);
    }

    public Bus(ThreadEnforcer threadEnforcer, String str, Finder finder) {
        this.subscribersByType = new ConcurrentHashMap();
        this.producersByType = new ConcurrentHashMap();
        this.flattenHierarchyCache = new ConcurrentHashMap();
        this.enforcer = threadEnforcer;
        this.identifier = str;
        this.finder = finder;
    }
}
