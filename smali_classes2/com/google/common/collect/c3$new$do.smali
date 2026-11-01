.class Lcom/google/common/collect/c3$new$do;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c3$new;->for()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Ljava/util/Iterator;

.field public final synthetic new:Ljava/util/Iterator;

.field public final synthetic try:Lcom/google/common/collect/c3$new;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3$new;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c3$new$do;->try:Lcom/google/common/collect/c3$new;

    iput-object p2, p0, Lcom/google/common/collect/c3$new$do;->for:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/c3$new$do;->new:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$new$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c3$new$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/c3$new$do;->try:Lcom/google/common/collect/c3$new;

    iget-object v1, v1, Lcom/google/common/collect/c3$new;->if:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/c3$new$do;->new:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/c3$new$do;->new:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/c3$new$do;->try:Lcom/google/common/collect/c3$new;

    iget-object v1, v1, Lcom/google/common/collect/c3$new;->do:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
