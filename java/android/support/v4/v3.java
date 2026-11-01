package android.support.v4;

import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Producer;
import rx.functions.Action0;
import rx.observers.AssertableSubscriber;
import rx.observers.Ccase;

/* loaded from: classes4.dex */
public class v3<T> extends y22<T> implements AssertableSubscriber<T> {

    /* renamed from: do, reason: not valid java name */
    private final Ccase<T> f7041do;

    public v3(Ccase<T> ccase) {
        this.f7041do = ccase;
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> v3<T> m8727do(long j) {
        Ccase ccase = new Ccase(j);
        v3<T> v3Var = new v3<>(ccase);
        v3Var.add(ccase);
        return v3Var;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertCompleted() {
        this.f7041do.m39090do();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertError(Class<? extends Throwable> cls) {
        this.f7041do.m39097if(cls);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public final AssertableSubscriber<T> assertFailure(Class<? extends Throwable> cls, T... tArr) {
        this.f7041do.m39093final(tArr);
        this.f7041do.m39097if(cls);
        this.f7041do.m39096goto();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public final AssertableSubscriber<T> assertFailureAndMessage(Class<? extends Throwable> cls, String str, T... tArr) {
        this.f7041do.m39093final(tArr);
        this.f7041do.m39097if(cls);
        this.f7041do.m39096goto();
        String message = this.f7041do.getOnErrorEvents().get(0).getMessage();
        if (message == str || (str != null && str.equals(message))) {
            return this;
        }
        throw new AssertionError("Error message differs. Expected: '" + str + "', Received: '" + message + "'");
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertNoErrors() {
        this.f7041do.m39104try();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertNoTerminalEvent() {
        this.f7041do.m39086case();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertNoValues() {
        this.f7041do.m39091else();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertNotCompleted() {
        this.f7041do.m39096goto();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertReceivedOnNext(List<T> list) {
        this.f7041do.m39102this(list);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public final AssertableSubscriber<T> assertResult(T... tArr) {
        this.f7041do.m39093final(tArr);
        this.f7041do.m39104try();
        this.f7041do.m39090do();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertTerminalEvent() {
        this.f7041do.m39085break();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertUnsubscribed() {
        this.f7041do.m39087catch();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertValue(T t) {
        this.f7041do.m39088class(t);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertValueCount(int i) {
        this.f7041do.m39089const(i);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertValues(T... tArr) {
        this.f7041do.m39093final(tArr);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public final AssertableSubscriber<T> assertValuesAndClear(T t, T... tArr) {
        this.f7041do.m39101super(t, tArr);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> awaitTerminalEvent() throws InterruptedException {
        this.f7041do.m39105while();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> awaitTerminalEventAndUnsubscribeOnTimeout(long j, TimeUnit timeUnit) {
        this.f7041do.m39099native(j, timeUnit);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public final AssertableSubscriber<T> awaitValueCount(int i, long j, TimeUnit timeUnit) {
        if (this.f7041do.m39100public(i, j, timeUnit)) {
            return this;
        }
        throw new AssertionError("Did not receive enough values in time. Expected: " + i + ", Actual: " + this.f7041do.getValueCount());
    }

    @Override // rx.observers.AssertableSubscriber
    public final int getCompletions() {
        return this.f7041do.getCompletions();
    }

    @Override // rx.observers.AssertableSubscriber
    public Thread getLastSeenThread() {
        return this.f7041do.getLastSeenThread();
    }

    @Override // rx.observers.AssertableSubscriber
    public List<Throwable> getOnErrorEvents() {
        return this.f7041do.getOnErrorEvents();
    }

    @Override // rx.observers.AssertableSubscriber
    public List<T> getOnNextEvents() {
        return this.f7041do.getOnNextEvents();
    }

    @Override // rx.observers.AssertableSubscriber
    public final int getValueCount() {
        return this.f7041do.getValueCount();
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f7041do.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f7041do.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f7041do.onNext(t);
    }

    @Override // android.support.v4.y22
    public void onStart() {
        this.f7041do.onStart();
    }

    @Override // rx.observers.AssertableSubscriber
    public final AssertableSubscriber<T> perform(Action0 action0) {
        action0.call();
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> requestMore(long j) {
        this.f7041do.m39094finally(j);
        return this;
    }

    @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
    public void setProducer(Producer producer) {
        this.f7041do.setProducer(producer);
    }

    public String toString() {
        return this.f7041do.toString();
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> assertError(Throwable th) {
        this.f7041do.m39095for(th);
        return this;
    }

    @Override // rx.observers.AssertableSubscriber
    public AssertableSubscriber<T> awaitTerminalEvent(long j, TimeUnit timeUnit) throws InterruptedException {
        this.f7041do.m39098import(j, timeUnit);
        return this;
    }
}
