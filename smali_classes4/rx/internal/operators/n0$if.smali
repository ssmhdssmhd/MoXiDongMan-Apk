.class public final Lrx/internal/operators/n0$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/n0$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/n0$for<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/n0$for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/n0$for<",
            "***>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/n0$if;->do:Lrx/internal/operators/n0$for;

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$if;->do:Lrx/internal/operators/n0$for;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/n0$for;->else(J)V

    return-void
.end method
