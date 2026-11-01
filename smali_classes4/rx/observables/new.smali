.class public Lrx/observables/new;
.super Lrx/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/observables/new;->if:Ljava/lang/Object;

    return-void
.end method

.method public static e6(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)Lrx/observables/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)",
            "Lrx/observables/new<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/new;

    invoke-direct {v0, p0, p1}, Lrx/observables/new;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static f6(Ljava/lang/Object;Lrx/Observable;)Lrx/observables/new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/observables/new<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/new;

    new-instance v1, Lrx/observables/new$do;

    invoke-direct {v1, p1}, Lrx/observables/new$do;-><init>(Lrx/Observable;)V

    invoke-direct {v0, p0, v1}, Lrx/observables/new;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method


# virtual methods
.method public g6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/new;->if:Ljava/lang/Object;

    return-object v0
.end method
