.class final Lrx/observables/try$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/try;->case(Lrx/functions/Action1;)Lrx/observables/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "Ljava/lang/Void;",
        "Lrx/Observer<",
        "-TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Action1;


# direct methods
.method public constructor <init>(Lrx/functions/Action1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/try$for;->do:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Lrx/Observer;

    invoke-virtual {p0, p1, p2}, Lrx/observables/try$for;->do(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Void;Lrx/Observer;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lrx/Observer<",
            "-TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/try$for;->do:Lrx/functions/Action1;

    invoke-interface {v0, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-object p1
.end method
