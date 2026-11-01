.class final Lrx/observables/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/try;->if(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/observables/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "TS;",
        "Lrx/Observer<",
        "-TT;>;TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Action2;


# direct methods
.method public constructor <init>(Lrx/functions/Action2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/try$do;->do:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lrx/Observer;

    invoke-virtual {p0, p1, p2}, Lrx/observables/try$do;->do(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer<",
            "-TT;>;)TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/try$do;->do:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
