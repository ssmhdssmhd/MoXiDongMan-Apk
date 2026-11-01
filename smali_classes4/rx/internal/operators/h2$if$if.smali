.class Lrx/internal/operators/h2$if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/h2$if;->else()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/h2$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/h2$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/h2$if$if;->do:Lrx/internal/operators/h2$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/h2$if$if;->do:Lrx/internal/operators/h2$if;

    invoke-virtual {v0}, Lrx/internal/operators/h2$if;->try()V

    return-void
.end method
