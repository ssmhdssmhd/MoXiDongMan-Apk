.class final Lio/reactivex/internal/operators/flowable/t2$for$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/t2$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/processors/else;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/else<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Z


# direct methods
.method public constructor <init>(Lio/reactivex/processors/else;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/else<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$for$if;->do:Lio/reactivex/processors/else;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/t2$for$if;->if:Z

    return-void
.end method
