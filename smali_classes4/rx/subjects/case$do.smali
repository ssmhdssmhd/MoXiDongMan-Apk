.class final Lrx/subjects/case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/case;->g6(Lrx/schedulers/do;)Lrx/subjects/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/subjects/try$for<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/subjects/try;


# direct methods
.method public constructor <init>(Lrx/subjects/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/subjects/case$do;->do:Lrx/subjects/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/subjects/try$for;

    invoke-virtual {p0, p1}, Lrx/subjects/case$do;->do(Lrx/subjects/try$for;)V

    return-void
.end method

.method public do(Lrx/subjects/try$for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/try$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/case$do;->do:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/subjects/try$for;->if(Ljava/lang/Object;)V

    return-void
.end method
