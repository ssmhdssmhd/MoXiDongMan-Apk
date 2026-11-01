.class Lcom/google/common/collect/w1$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final do:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public for:Lcom/google/common/collect/w1$else;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public if:Lcom/google/common/collect/w1$else;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public new:I

.field public final synthetic try:Lcom/google/common/collect/w1;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/w1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/w1$try;->try:Lcom/google/common/collect/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/w1;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/c3;->default(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/w1$try;->do:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/w1;->access$200(Lcom/google/common/collect/w1;)Lcom/google/common/collect/w1$else;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/w1$try;->if:Lcom/google/common/collect/w1$else;

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/w1;->access$000(Lcom/google/common/collect/w1;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/w1$try;->new:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/w1;Lcom/google/common/collect/w1$do;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/w1$try;-><init>(Lcom/google/common/collect/w1;)V

    return-void
.end method

.method private do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->try:Lcom/google/common/collect/w1;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$000(Lcom/google/common/collect/w1;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/w1$try;->new:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$try;->do()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->if:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$try;->do()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->if:Lcom/google/common/collect/w1$else;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$300(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->if:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$try;->for:Lcom/google/common/collect/w1$else;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/w1$try;->do:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/w1$else;->do:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->if:Lcom/google/common/collect/w1$else;

    iget-object v0, v0, Lcom/google/common/collect/w1$else;->for:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$try;->if:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/w1$try;->do:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/w1$else;->do:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->for:Lcom/google/common/collect/w1$else;

    iget-object v0, v0, Lcom/google/common/collect/w1$else;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$try;->do()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->for:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->try:Lcom/google/common/collect/w1;

    iget-object v1, p0, Lcom/google/common/collect/w1$try;->for:Lcom/google/common/collect/w1$else;

    iget-object v1, v1, Lcom/google/common/collect/w1$else;->do:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/w1;->access$500(Lcom/google/common/collect/w1;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/w1$try;->for:Lcom/google/common/collect/w1$else;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/w1$try;->try:Lcom/google/common/collect/w1;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$000(Lcom/google/common/collect/w1;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/w1$try;->new:I

    return-void
.end method
