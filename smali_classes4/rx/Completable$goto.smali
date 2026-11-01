.class Lrx/Completable$goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->throws(Lrx/functions/Action1;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Action1;

.field public final synthetic if:Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable;Lrx/functions/Action1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$goto;->if:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$goto;->do:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lrx/Completable$goto;->do(Ljava/lang/Throwable;)V

    return-void
.end method

.method public do(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$goto;->do:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/do;->new(Ljava/lang/Throwable;)Lrx/do;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
