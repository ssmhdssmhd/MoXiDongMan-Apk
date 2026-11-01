.class final Lcom/google/common/util/concurrent/private$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/private;->const(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/private$else;

.field public final synthetic for:I

.field public final synthetic if:Lcom/google/common/collect/v0;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/private$else;Lcom/google/common/collect/v0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/private$for;->do:Lcom/google/common/util/concurrent/private$else;

    iput-object p2, p0, Lcom/google/common/util/concurrent/private$for;->if:Lcom/google/common/collect/v0;

    iput p3, p0, Lcom/google/common/util/concurrent/private$for;->for:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/private$for;->do:Lcom/google/common/util/concurrent/private$else;

    iget-object v1, p0, Lcom/google/common/util/concurrent/private$for;->if:Lcom/google/common/collect/v0;

    iget v2, p0, Lcom/google/common/util/concurrent/private$for;->for:I

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/private$else;->do(Lcom/google/common/util/concurrent/private$else;Lcom/google/common/collect/v0;I)V

    return-void
.end method
