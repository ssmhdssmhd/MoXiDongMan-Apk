.class Lrx/internal/operators/p1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/p1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/p1$if;

.field public final synthetic if:Lrx/internal/operators/p1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/p1;Lrx/internal/operators/p1$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/p1$do;->if:Lrx/internal/operators/p1;

    iput-object p2, p0, Lrx/internal/operators/p1$do;->do:Lrx/internal/operators/p1$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/p1$do;->do:Lrx/internal/operators/p1$if;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/p1$if;->do(J)V

    return-void
.end method
