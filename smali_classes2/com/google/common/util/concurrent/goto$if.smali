.class Lcom/google/common/util/concurrent/goto$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/goto;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/r0;

.field public final synthetic if:Lcom/google/common/util/concurrent/goto;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/goto;Lcom/google/common/collect/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/goto$if;->if:Lcom/google/common/util/concurrent/goto;

    iput-object p2, p0, Lcom/google/common/util/concurrent/goto$if;->do:Lcom/google/common/collect/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/goto$if;->if:Lcom/google/common/util/concurrent/goto;

    iget-object v1, p0, Lcom/google/common/util/concurrent/goto$if;->do:Lcom/google/common/collect/r0;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/goto;->b(Lcom/google/common/util/concurrent/goto;Lcom/google/common/collect/r0;)V

    return-void
.end method
