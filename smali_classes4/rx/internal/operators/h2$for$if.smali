.class Lrx/internal/operators/h2$for$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/h2$for;->for()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/h2$do;

.field public final synthetic if:Lrx/internal/operators/h2$for;


# direct methods
.method public constructor <init>(Lrx/internal/operators/h2$for;Lrx/internal/operators/h2$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/h2$for$if;->if:Lrx/internal/operators/h2$for;

    iput-object p2, p0, Lrx/internal/operators/h2$for$if;->do:Lrx/internal/operators/h2$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/h2$for$if;->if:Lrx/internal/operators/h2$for;

    iget-object v1, p0, Lrx/internal/operators/h2$for$if;->do:Lrx/internal/operators/h2$do;

    invoke-virtual {v0, v1}, Lrx/internal/operators/h2$for;->new(Lrx/internal/operators/h2$do;)V

    return-void
.end method
