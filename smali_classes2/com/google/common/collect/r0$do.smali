.class abstract Lcom/google/common/collect/r0$do;
.super Lcom/google/common/collect/r0$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$if<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public for:I

.field public if:[Ljava/lang/Object;

.field public new:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/r0$if;-><init>()V

    const-string v0, "initialCapacity"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/r0$do;->for:I

    return-void
.end method

.method private goto(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Lcom/google/common/collect/r0$if;->case(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    .line 4
    iput-boolean v2, p0, Lcom/google/common/collect/r0$do;->new:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/google/common/collect/r0$do;->new:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    .line 7
    iput-boolean v2, p0, Lcom/google/common/collect/r0$do;->new:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic do(Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$do;->else(Ljava/lang/Object;)Lcom/google/common/collect/r0$do;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/lang/Object;)Lcom/google/common/collect/r0$do;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/r0$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/common/collect/r0$do;->for:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/r0$do;->goto(I)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/r0$do;->for:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/r0$do;->for:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public for(Ljava/lang/Iterable;)Lcom/google/common/collect/r0$if;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/r0$if<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 3
    iget v1, p0, Lcom/google/common/collect/r0$do;->for:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/r0$do;->goto(I)V

    .line 4
    instance-of v1, v0, Lcom/google/common/collect/r0;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/google/common/collect/r0;

    .line 6
    iget-object p1, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/r0$do;->for:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/r0;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/r0$do;->for:I

    return-object p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/r0$if;->for(Ljava/lang/Iterable;)Lcom/google/common/collect/r0$if;

    return-object p0
.end method

.method public varargs if([Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 4
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/r0$if<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/h2;->if([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/common/collect/r0$do;->for:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/r0$do;->goto(I)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/r0$do;->if:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/r0$do;->for:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v0, p0, Lcom/google/common/collect/r0$do;->for:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/r0$do;->for:I

    return-object p0
.end method
