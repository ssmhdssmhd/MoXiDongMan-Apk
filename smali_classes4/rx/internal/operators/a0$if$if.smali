.class Lrx/internal/operators/a0$if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/a0$if;->for()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lrx/internal/operators/a0$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/a0$if;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/a0$if$if;->if:Lrx/internal/operators/a0$if;

    iput-object p2, p0, Lrx/internal/operators/a0$if$if;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/a0$if$if;->if:Lrx/internal/operators/a0$if;

    iget-object v1, p0, Lrx/internal/operators/a0$if$if;->do:Ljava/util/List;

    invoke-virtual {v0, v1}, Lrx/internal/operators/a0$if;->do(Ljava/util/List;)V

    return-void
.end method
