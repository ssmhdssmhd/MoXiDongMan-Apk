.class Lrx/internal/schedulers/this$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/this;->do()Lrx/if$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/internal/schedulers/this$else;",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/if$do;

.field public final synthetic if:Lrx/internal/schedulers/this;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/this;Lrx/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/this$do;->if:Lrx/internal/schedulers/this;

    iput-object p2, p0, Lrx/internal/schedulers/this$do;->do:Lrx/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/internal/schedulers/this$else;

    invoke-virtual {p0, p1}, Lrx/internal/schedulers/this$do;->do(Lrx/internal/schedulers/this$else;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/internal/schedulers/this$else;)Lrx/Completable;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/this$do$do;

    invoke-direct {v0, p0, p1}, Lrx/internal/schedulers/this$do$do;-><init>(Lrx/internal/schedulers/this$do;Lrx/internal/schedulers/this$else;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method
