package org.reactivestreams;

import java.util.Objects;
import java.util.concurrent.Flow;

/* renamed from: org.reactivestreams.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: org.reactivestreams.do$case, reason: invalid class name */
    public static final class Ccase<T, U> implements Processor<T, U> {

        /* renamed from: do, reason: not valid java name */
        public final Flow.Processor<? super T, ? extends U> f34100do;

        public Ccase(Flow.Processor<? super T, ? extends U> processor) {
            this.f34100do = processor;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f34100do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f34100do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f34100do.onNext(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f34100do.onSubscribe(subscription == null ? null : new Cnew(subscription));
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super U> subscriber) {
            this.f34100do.subscribe(subscriber == null ? null : new Cfor(subscriber));
        }
    }

    /* renamed from: org.reactivestreams.do$do, reason: invalid class name and collision with other inner class name */
    public static final class FlowPublisherC0489do<T> implements Flow.Publisher<T> {

        /* renamed from: do, reason: not valid java name */
        public final Publisher<? extends T> f34101do;

        public FlowPublisherC0489do(Publisher<? extends T> publisher) {
            this.f34101do = publisher;
        }

        @Override // java.util.concurrent.Flow.Publisher
        public void subscribe(Flow.Subscriber<? super T> subscriber) {
            this.f34101do.subscribe(subscriber == null ? null : new Celse(subscriber));
        }
    }

    /* renamed from: org.reactivestreams.do$else, reason: invalid class name */
    public static final class Celse<T> implements Subscriber<T> {

        /* renamed from: do, reason: not valid java name */
        public final Flow.Subscriber<? super T> f34102do;

        public Celse(Flow.Subscriber<? super T> subscriber) {
            this.f34102do = subscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f34102do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f34102do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f34102do.onNext(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f34102do.onSubscribe(subscription == null ? null : new Cnew(subscription));
        }
    }

    /* renamed from: org.reactivestreams.do$for, reason: invalid class name */
    public static final class Cfor<T> implements Flow.Subscriber<T> {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f34103do;

        public Cfor(Subscriber<? super T> subscriber) {
            this.f34103do = subscriber;
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onComplete() {
            this.f34103do.onComplete();
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onError(Throwable th) {
            this.f34103do.onError(th);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onNext(T t) {
            this.f34103do.onNext(t);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onSubscribe(Flow.Subscription subscription) {
            this.f34103do.onSubscribe(subscription == null ? null : new Cgoto(subscription));
        }
    }

    /* renamed from: org.reactivestreams.do$goto, reason: invalid class name */
    public static final class Cgoto implements Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Flow.Subscription f34104do;

        public Cgoto(Flow.Subscription subscription) {
            this.f34104do = subscription;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f34104do.cancel();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f34104do.request(j);
        }
    }

    /* renamed from: org.reactivestreams.do$if, reason: invalid class name */
    public static final class Cif<T, U> implements Flow.Processor<T, U> {

        /* renamed from: do, reason: not valid java name */
        public final Processor<? super T, ? extends U> f34105do;

        public Cif(Processor<? super T, ? extends U> processor) {
            this.f34105do = processor;
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onComplete() {
            this.f34105do.onComplete();
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onError(Throwable th) {
            this.f34105do.onError(th);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onNext(T t) {
            this.f34105do.onNext(t);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onSubscribe(Flow.Subscription subscription) {
            this.f34105do.onSubscribe(subscription == null ? null : new Cgoto(subscription));
        }

        @Override // java.util.concurrent.Flow.Publisher
        public void subscribe(Flow.Subscriber<? super U> subscriber) {
            this.f34105do.subscribe(subscriber == null ? null : new Celse(subscriber));
        }
    }

    /* renamed from: org.reactivestreams.do$new, reason: invalid class name */
    public static final class Cnew implements Flow.Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscription f34106do;

        public Cnew(Subscription subscription) {
            this.f34106do = subscription;
        }

        @Override // java.util.concurrent.Flow.Subscription
        public void cancel() {
            this.f34106do.cancel();
        }

        @Override // java.util.concurrent.Flow.Subscription
        public void request(long j) {
            this.f34106do.request(j);
        }
    }

    /* renamed from: org.reactivestreams.do$try, reason: invalid class name */
    public static final class Ctry<T> implements Publisher<T> {

        /* renamed from: do, reason: not valid java name */
        public final Flow.Publisher<? extends T> f34107do;

        public Ctry(Flow.Publisher<? extends T> publisher) {
            this.f34107do = publisher;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> subscriber) {
            this.f34107do.subscribe(subscriber == null ? null : new Cfor(subscriber));
        }
    }

    private Cdo() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Subscriber<T> m38050case(Flow.Subscriber<T> subscriber) {
        Objects.requireNonNull(subscriber, "flowSubscriber");
        return subscriber instanceof Cfor ? ((Cfor) subscriber).f34103do : subscriber instanceof Subscriber ? (Subscriber) subscriber : new Celse(subscriber);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T, U> Flow.Processor<T, U> m38051do(Processor<? super T, ? extends U> processor) {
        Objects.requireNonNull(processor, "reactiveStreamsProcessor");
        return processor instanceof Ccase ? ((Ccase) processor).f34100do : processor instanceof Flow.Processor ? (Flow.Processor) processor : new Cif(processor);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Flow.Subscriber<T> m38052for(Subscriber<T> subscriber) {
        Objects.requireNonNull(subscriber, "reactiveStreamsSubscriber");
        return subscriber instanceof Celse ? ((Celse) subscriber).f34102do : subscriber instanceof Flow.Subscriber ? (Flow.Subscriber) subscriber : new Cfor(subscriber);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Flow.Publisher<T> m38053if(Publisher<? extends T> publisher) {
        Objects.requireNonNull(publisher, "reactiveStreamsPublisher");
        return publisher instanceof Ctry ? ((Ctry) publisher).f34107do : publisher instanceof Flow.Publisher ? (Flow.Publisher) publisher : new FlowPublisherC0489do(publisher);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T, U> Processor<T, U> m38054new(Flow.Processor<? super T, ? extends U> processor) {
        Objects.requireNonNull(processor, "flowProcessor");
        return processor instanceof Cif ? ((Cif) processor).f34105do : processor instanceof Processor ? (Processor) processor : new Ccase(processor);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Publisher<T> m38055try(Flow.Publisher<? extends T> publisher) {
        Objects.requireNonNull(publisher, "flowPublisher");
        return publisher instanceof FlowPublisherC0489do ? ((FlowPublisherC0489do) publisher).f34101do : publisher instanceof Publisher ? (Publisher) publisher : new Ctry(publisher);
    }
}
