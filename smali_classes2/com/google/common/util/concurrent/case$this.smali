.class final Lcom/google/common/util/concurrent/case$this;
.super Lcom/google/common/util/concurrent/transient$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "this"
.end annotation


# instance fields
.field public final synthetic try:Lcom/google/common/util/concurrent/case;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/case$this;->try:Lcom/google/common/util/concurrent/case;

    .line 2
    invoke-static {p1}, Lcom/google/common/util/concurrent/case;->do(Lcom/google/common/util/concurrent/case;)Lcom/google/common/util/concurrent/transient;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/transient$do;-><init>(Lcom/google/common/util/concurrent/transient;)V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case$this;->try:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
