.class final Lrx/observables/do$break;
.super Lrx/Observable;
.source "SourceFile"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "break"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/do$break$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final if:Lrx/observables/do$break$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/do$break$do<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/observables/do$break$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/do$break$do<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/observables/do$break;->if:Lrx/observables/do$break$do;

    return-void
.end method

.method public static e6()Lrx/observables/do$break;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/observables/do$break<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/do$break;

    new-instance v1, Lrx/observables/do$break$do;

    invoke-direct {v1}, Lrx/observables/do$break$do;-><init>()V

    invoke-direct {v0, v1}, Lrx/observables/do$break;-><init>(Lrx/observables/do$break$do;)V

    return-object v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/do$break;->if:Lrx/observables/do$break$do;

    iget-object v0, v0, Lrx/observables/do$break$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/do$break;->if:Lrx/observables/do$break$do;

    iget-object v0, v0, Lrx/observables/do$break$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/do$break;->if:Lrx/observables/do$break$do;

    iget-object v0, v0, Lrx/observables/do$break$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
