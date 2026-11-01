package com.hwangjr.rxbus.entity;

import com.hwangjr.rxbus.thread.EventThread;
import io.reactivex.Cfor;
import io.reactivex.Cif;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ProducerEvent extends Event {
    private final int hashCode;
    private final Method method;
    private final Object target;
    private final EventThread thread;
    private boolean valid = true;

    public ProducerEvent(Object obj, Method method, EventThread eventThread) {
        Objects.requireNonNull(obj, "EventProducer target cannot be null.");
        Objects.requireNonNull(method, "EventProducer method cannot be null.");
        this.target = obj;
        this.thread = eventThread;
        this.method = method;
        method.setAccessible(true);
        this.hashCode = ((method.hashCode() + 31) * 31) + obj.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object produceEvent() throws InvocationTargetException {
        if (!this.valid) {
            throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events.");
        }
        try {
            return this.method.invoke(this.target, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            if (e2.getCause() instanceof Error) {
                throw ((Error) e2.getCause());
            }
            throw e2;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProducerEvent producerEvent = (ProducerEvent) obj;
        return this.method.equals(producerEvent.method) && this.target == producerEvent.target;
    }

    public Object getTarget() {
        return this.target;
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

    public Cfor produce() {
        return Cfor.E0(new FlowableOnSubscribe() { // from class: com.hwangjr.rxbus.entity.ProducerEvent.1
            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(FlowableEmitter flowableEmitter) throws Exception {
                try {
                    flowableEmitter.onNext(ProducerEvent.this.produceEvent());
                    flowableEmitter.onComplete();
                } catch (InvocationTargetException e) {
                    ProducerEvent.this.throwRuntimeException("Producer " + ProducerEvent.this + " threw an exception.", e);
                }
            }
        }, Cif.BUFFER).o5(EventThread.getScheduler(this.thread));
    }

    @Override // com.hwangjr.rxbus.entity.Event
    public /* bridge */ /* synthetic */ void throwRuntimeException(String str, Throwable th) {
        super.throwRuntimeException(str, th);
    }

    public String toString() {
        return "[EventProducer " + this.method + "]";
    }

    @Override // com.hwangjr.rxbus.entity.Event
    public /* bridge */ /* synthetic */ void throwRuntimeException(String str, InvocationTargetException invocationTargetException) {
        super.throwRuntimeException(str, invocationTargetException);
    }
}
