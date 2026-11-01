.class Lrx/internal/operators/h2$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/h2$for;->if()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/h2$for;


# direct methods
.method public constructor <init>(Lrx/internal/operators/h2$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/h2$for$do;->do:Lrx/internal/operators/h2$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/h2$for$do;->do:Lrx/internal/operators/h2$for;

    invoke-virtual {v0}, Lrx/internal/operators/h2$for;->for()V

    return-void
.end method
