.class final Lrx/internal/operators/default$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public for:Z

.field public final if:Lrx/internal/operators/default$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/default$new<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/internal/operators/default$new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/internal/operators/default$new<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/default$if;->do:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/default$if;->if:Lrx/internal/operators/default$new;

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/default$if;->for:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/default$if;->for:Z

    .line 3
    iget-object p1, p0, Lrx/internal/operators/default$if;->if:Lrx/internal/operators/default$new;

    .line 4
    iget-object p2, p0, Lrx/internal/operators/default$if;->do:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lrx/internal/operators/default$new;->try(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Lrx/internal/operators/default$new;->for(J)V

    :cond_0
    return-void
.end method
