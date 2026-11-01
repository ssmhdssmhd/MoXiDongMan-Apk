.class Lrx/internal/operators/d0$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/d0$do;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lrx/internal/operators/d0$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/d0$do;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/d0$do$do;->if:Lrx/internal/operators/d0$do;

    iput p2, p0, Lrx/internal/operators/d0$do$do;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d0$do$do;->if:Lrx/internal/operators/d0$do;

    iget-object v1, v0, Lrx/internal/operators/d0$do;->do:Lrx/internal/operators/d0$if;

    iget v2, p0, Lrx/internal/operators/d0$do$do;->do:I

    iget-object v3, v0, Lrx/internal/operators/d0$do;->try:Landroid/support/v4/ax1;

    iget-object v0, v0, Lrx/internal/operators/d0$do;->if:Landroid/support/v4/y22;

    invoke-virtual {v1, v2, v3, v0}, Lrx/internal/operators/d0$if;->if(ILandroid/support/v4/y22;Landroid/support/v4/y22;)V

    return-void
.end method
