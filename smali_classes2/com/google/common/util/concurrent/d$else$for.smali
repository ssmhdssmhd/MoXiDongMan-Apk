.class final Lcom/google/common/util/concurrent/d$else$for;
.super Lcom/google/common/util/concurrent/transient$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/d$else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation


# instance fields
.field public final synthetic try:Lcom/google/common/util/concurrent/d$else;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/d$else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/d$else$for;->try:Lcom/google/common/util/concurrent/d$else;

    .line 2
    iget-object p1, p1, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/transient$do;-><init>(Lcom/google/common/util/concurrent/transient;)V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 3
    .annotation build Landroid/support/v4/ji0;
        value = "ServiceManagerState.this.monitor"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else$for;->try:Lcom/google/common/util/concurrent/d$else;

    iget-object v0, v0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else$for;->try:Lcom/google/common/util/concurrent/d$else;

    iget v2, v1, Lcom/google/common/util/concurrent/d$else;->else:I

    if-eq v0, v2, :cond_1

    iget-object v0, v1, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STOPPING:Lcom/google/common/util/concurrent/Service$for;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else$for;->try:Lcom/google/common/util/concurrent/d$else;

    iget-object v0, v0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else$for;->try:Lcom/google/common/util/concurrent/d$else;

    iget-object v0, v0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
