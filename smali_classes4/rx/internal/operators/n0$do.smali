.class Lrx/internal/operators/n0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/n0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/n0$for;

.field public final synthetic if:Lrx/internal/operators/n0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/n0;Lrx/internal/operators/n0$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/n0$do;->if:Lrx/internal/operators/n0;

    iput-object p2, p0, Lrx/internal/operators/n0$do;->do:Lrx/internal/operators/n0$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$do;->do:Lrx/internal/operators/n0$for;

    invoke-virtual {v0}, Lrx/internal/operators/n0$for;->do()V

    return-void
.end method
