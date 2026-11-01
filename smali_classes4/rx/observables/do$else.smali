.class Lrx/observables/do$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/do;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable<",
        "TT;>;",
        "Lrx/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/observables/do;


# direct methods
.method public constructor <init>(Lrx/observables/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/do$else;->do:Lrx/observables/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/observables/do$else;->do(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/Observable;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lrx/Observable;->v2()Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
