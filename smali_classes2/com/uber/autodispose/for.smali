.class public final synthetic Lcom/uber/autodispose/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;


# instance fields
.field public final synthetic do:Landroid/support/v4/ub1;

.field public final synthetic if:Lio/reactivex/CompletableSource;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/autodispose/for;->do:Landroid/support/v4/ub1;

    iput-object p2, p0, Lcom/uber/autodispose/for;->if:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public final subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 2

    iget-object v0, p0, Lcom/uber/autodispose/for;->do:Landroid/support/v4/ub1;

    iget-object v1, p0, Lcom/uber/autodispose/for;->if:Lio/reactivex/CompletableSource;

    invoke-static {v0, v1, p1}, Lcom/uber/autodispose/new$do;->do(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;[Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
