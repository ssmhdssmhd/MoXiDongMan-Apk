package com.hwangjr.rxbus.entity;

import com.hwangjr.rxbus.thread.EventThread;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.Cgoto;
import io.reactivex.subjects.Ctry;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscriberEvent extends Event {
    private final int hashCode;
    private final Method method;
    private Cgoto subject;
    private final Object target;
    private final EventThread thread;
    private boolean valid = true;

    public SubscriberEvent(Object obj, Method method, EventThread eventThread) {
        Objects.requireNonNull(obj, "SubscriberEvent target cannot be null.");
        Objects.requireNonNull(method, "SubscriberEvent method cannot be null.");
        Objects.requireNonNull(eventThread, "SubscriberEvent thread cannot be null.");
        this.target = obj;
        this.method = method;
        this.thread = eventThread;
        method.setAccessible(true);
        initObservable();
        this.hashCode = ((method.hashCode() + 31) * 31) + obj.hashCode();
    }

    private void initObservable() {
        Ctry ctryM29840else = Ctry.m29840else();
        this.subject = ctryM29840else;
        ctryM29840else.observeOn(EventThread.getScheduler(this.thread)).subscribe(new Consumer() { // from class: com.hwangjr.rxbus.entity.SubscriberEvent.1
            @Override // io.reactivex.functions.Consumer
            public void accept(Object obj) throws IllegalAccessException, IllegalArgumentException {
                try {
                    if (SubscriberEvent.this.valid) {
                        SubscriberEvent.this.handleEvent(obj);
                    }
                } catch (InvocationTargetException e) {
                    SubscriberEvent.this.throwRuntimeException("Could not dispatch event: " + obj.getClass() + " to subscriber " + SubscriberEvent.this, e);
                }
            }
        });
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SubscriberEvent subscriberEvent = (SubscriberEvent) obj;
        return this.method.equals(subscriberEvent.method) && this.target == subscriberEvent.target;
    }

    public Cgoto getSubject() {
        return this.subject;
    }

    public void handle(Object obj) {
        this.subject.onNext(obj);
    }

    public void handleEvent(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!this.valid) {
            throw new IllegalStateException(toString() + " has been invalidated and can no longer handle events.");
        }
        try {
            this.method.invoke(this.target, obj);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            if (!(e2.getCause() instanceof Error)) {
                throw e2;
            }
            throw ((Error) e2.getCause());
        }
    }

    public int hashCode() {
        return this.hashCode;
    }

    public void invalidate() {
        this.valid = false;
    }

    public boolean isValid() {
        return this.valid;
    }

    @Override // com.hwangjr.rxbus.entity.Event
    public /* bridge */ /* synthetic */ void throwRuntimeException(String str, Throwable th) {
        super.throwRuntimeException(str, th);
    }

    public String toString() {
        return "[SubscriberEvent " + this.method + "]";
    }

    @Override // com.hwangjr.rxbus.entity.Event
    public /* bridge */ /* synthetic */ void throwRuntimeException(String str, InvocationTargetException invocationTargetException) {
        super.throwRuntimeException(str, invocationTargetException);
    }
}
