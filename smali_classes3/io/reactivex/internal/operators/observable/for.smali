.class public final Lio/reactivex/internal/operators/observable/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/for$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/for;->do:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/for$do;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/for$do;-><init>()V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/for;->do:Lio/reactivex/ObservableSource;

    invoke-static {v1}, Lio/reactivex/new;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/new;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/new;->materialize()Lio/reactivex/new;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-object v0
.end method
