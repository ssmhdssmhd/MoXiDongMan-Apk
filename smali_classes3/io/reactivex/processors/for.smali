.class public abstract Lio/reactivex/processors/for;
.super Lio/reactivex/for;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Processor;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TT;>;",
        "Lorg/reactivestreams/Processor<",
        "TT;TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract L7()Ljava/lang/Throwable;
    .annotation build Landroid/support/v4/a51;
    .end annotation
.end method

.method public abstract M7()Z
.end method

.method public abstract N7()Z
.end method

.method public abstract O7()Z
.end method

.method public final P7()Lio/reactivex/processors/for;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/processors/case;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/processors/case;

    invoke-direct {v0, p0}, Lio/reactivex/processors/case;-><init>(Lio/reactivex/processors/for;)V

    return-object v0
.end method
