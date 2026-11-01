.class public final Lio/reactivex/internal/operators/observable/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/try$if;,
        Lio/reactivex/internal/operators/observable/try$do;
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
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/try;->do:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/try$if;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/try$if;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/try$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/try;->do:Lio/reactivex/ObservableSource;

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/observable/try$do;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/internal/operators/observable/try$if;)V

    return-object v1
.end method
