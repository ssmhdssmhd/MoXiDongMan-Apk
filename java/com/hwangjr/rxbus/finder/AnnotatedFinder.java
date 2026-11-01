package com.hwangjr.rxbus.finder;

import com.hwangjr.rxbus.annotation.Produce;
import com.hwangjr.rxbus.annotation.Subscribe;
import com.hwangjr.rxbus.annotation.Tag;
import com.hwangjr.rxbus.entity.EventType;
import com.hwangjr.rxbus.entity.ProducerEvent;
import com.hwangjr.rxbus.entity.SubscriberEvent;
import com.hwangjr.rxbus.thread.EventThread;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class AnnotatedFinder {
    private static final ConcurrentMap<Class<?>, Map<EventType, SourceMethod>> PRODUCERS_CACHE = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, Map<EventType, Set<SourceMethod>>> SUBSCRIBERS_CACHE = new ConcurrentHashMap();

    public static class SourceMethod {
        private Method method;
        private EventThread thread;

        private SourceMethod(EventThread eventThread, Method method) {
            this.thread = eventThread;
            this.method = method;
        }
    }

    private AnnotatedFinder() {
    }

    public static Map<EventType, ProducerEvent> findAllProducers(Object obj) throws SecurityException {
        Class<?> cls = obj.getClass();
        HashMap map = new HashMap();
        Map<EventType, SourceMethod> map2 = PRODUCERS_CACHE.get(cls);
        if (map2 == null) {
            map2 = new HashMap<>();
            loadAnnotatedProducerMethods(cls, map2);
        }
        if (!map2.isEmpty()) {
            for (Map.Entry<EventType, SourceMethod> entry : map2.entrySet()) {
                map.put(entry.getKey(), new ProducerEvent(obj, entry.getValue().method, entry.getValue().thread));
            }
        }
        return map;
    }

    public static Map<EventType, Set<SubscriberEvent>> findAllSubscribers(Object obj) throws SecurityException {
        Class<?> cls = obj.getClass();
        HashMap map = new HashMap();
        Map<EventType, Set<SourceMethod>> map2 = SUBSCRIBERS_CACHE.get(cls);
        if (map2 == null) {
            map2 = new HashMap<>();
            loadAnnotatedSubscriberMethods(cls, map2);
        }
        if (!map2.isEmpty()) {
            for (Map.Entry<EventType, Set<SourceMethod>> entry : map2.entrySet()) {
                HashSet hashSet = new HashSet();
                for (SourceMethod sourceMethod : entry.getValue()) {
                    hashSet.add(new SubscriberEvent(obj, sourceMethod.method, sourceMethod.thread));
                }
                map.put(entry.getKey(), hashSet);
            }
        }
        return map;
    }

    private static void loadAnnotatedMethods(Class<?> cls, Map<EventType, SourceMethod> map, Map<EventType, Set<SourceMethod>> map2) throws SecurityException {
        for (Method method : cls.getDeclaredMethods()) {
            if (!method.isBridge()) {
                if (method.isAnnotationPresent(Subscribe.class)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length != 1) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation but requires " + parameterTypes.length + " arguments.  Methods must require a single argument.");
                    }
                    Class<?> cls2 = parameterTypes[0];
                    if (cls2.isInterface()) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + cls2 + " which is an interface.  Subscription must be on a concrete class type.");
                    }
                    if ((1 & method.getModifiers()) == 0) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + cls2 + " but is not 'public'.");
                    }
                    Subscribe subscribe = (Subscribe) method.getAnnotation(Subscribe.class);
                    EventThread eventThreadThread = subscribe.thread();
                    Tag[] tagArrTags = subscribe.tags();
                    int length = tagArrTags == null ? 0 : tagArrTags.length;
                    do {
                        EventType eventType = new EventType(length > 0 ? tagArrTags[length - 1].value() : Tag.DEFAULT, cls2);
                        Set<SourceMethod> hashSet = map2.get(eventType);
                        if (hashSet == null) {
                            hashSet = new HashSet<>();
                            map2.put(eventType, hashSet);
                        }
                        hashSet.add(new SourceMethod(eventThreadThread, method));
                        length--;
                    } while (length > 0);
                } else if (method.isAnnotationPresent(Produce.class)) {
                    Class<?>[] parameterTypes2 = method.getParameterTypes();
                    if (parameterTypes2.length != 0) {
                        throw new IllegalArgumentException("Method " + method + "has @Produce annotation but requires " + parameterTypes2.length + " arguments.  Methods must require zero arguments.");
                    }
                    if (method.getReturnType() == Void.class) {
                        throw new IllegalArgumentException("Method " + method + " has a return type of void.  Must declare a non-void type.");
                    }
                    Class<?> returnType = method.getReturnType();
                    if (returnType.isInterface()) {
                        throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + returnType + " which is an interface.  Producers must return a concrete class type.");
                    }
                    if (returnType.equals(Void.TYPE)) {
                        throw new IllegalArgumentException("Method " + method + " has @Produce annotation but has no return type.");
                    }
                    if ((1 & method.getModifiers()) == 0) {
                        throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + returnType + " but is not 'public'.");
                    }
                    Produce produce = (Produce) method.getAnnotation(Produce.class);
                    EventThread eventThreadThread2 = produce.thread();
                    Tag[] tagArrTags2 = produce.tags();
                    int length2 = tagArrTags2 == null ? 0 : tagArrTags2.length;
                    do {
                        EventType eventType2 = new EventType(length2 > 0 ? tagArrTags2[length2 - 1].value() : Tag.DEFAULT, returnType);
                        if (map.containsKey(eventType2)) {
                            throw new IllegalArgumentException("Producer for type " + eventType2 + " has already been registered.");
                        }
                        map.put(eventType2, new SourceMethod(eventThreadThread2, method));
                        length2--;
                    } while (length2 > 0);
                } else {
                    continue;
                }
            }
        }
        PRODUCERS_CACHE.put(cls, map);
        SUBSCRIBERS_CACHE.put(cls, map2);
    }

    private static void loadAnnotatedProducerMethods(Class<?> cls, Map<EventType, SourceMethod> map) throws SecurityException {
        loadAnnotatedMethods(cls, map, new HashMap());
    }

    private static void loadAnnotatedSubscriberMethods(Class<?> cls, Map<EventType, Set<SourceMethod>> map) throws SecurityException {
        loadAnnotatedMethods(cls, new HashMap(), map);
    }
}
