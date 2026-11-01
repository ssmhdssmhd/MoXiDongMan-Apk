.class final Lrx/observables/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/do;->for(Lrx/functions/Func0;Lrx/functions/Action3;Lrx/functions/Action1;)Lrx/observables/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func3<",
        "TS;",
        "Ljava/lang/Long;",
        "Lrx/Observer<",
        "Lrx/Observable<",
        "+TT;>;>;TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Action3;


# direct methods
.method public constructor <init>(Lrx/functions/Action3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/do$if;->do:Lrx/functions/Action3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lrx/Observer;

    invoke-virtual {p0, p1, p2, p3}, Lrx/observables/do$if;->do(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Object;Ljava/lang/Long;Lrx/Observer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/Long;",
            "Lrx/Observer<",
            "Lrx/Observable<",
            "+TT;>;>;)TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/do$if;->do:Lrx/functions/Action3;

    invoke-interface {v0, p1, p2, p3}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
