.class Lcom/google/common/collect/z1$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final do:Lcom/google/common/collect/k2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k2<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/google/common/collect/z1;

.field public if:Lcom/google/common/collect/z1$for;
    .annotation build Landroid/support/v4/hf2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z1<",
            "TE;>.for;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/z1;Lcom/google/common/collect/k2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/k2<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    return-void
.end method

.method private catch(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result p1

    return p1
.end method

.method private class(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private const(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 1
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static synthetic do(Lcom/google/common/collect/z1$for;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->while(I)Z

    move-result p0

    return p0
.end method

.method private final(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private while(I)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->class(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v1}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->class(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/z1$for;->new(II)I

    move-result v0

    if-lez v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->final(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v1}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->final(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/z1$for;->new(II)I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    if-lez p1, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/z1$for;->new(II)I

    move-result v0

    if-lez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->catch(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/z1$for;->new(II)I

    move-result p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public break(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->class(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->class(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/z1$for;->goto(II)I

    move-result p1

    return p1
.end method

.method public case(ILjava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {p1}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result v2

    .line 5
    invoke-direct {p0, v2}, Lcom/google/common/collect/z1$for;->final(I)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcom/google/common/collect/z1$for;->class(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v4}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 7
    iget-object v3, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    invoke-virtual {v4, v3, v1}, Lcom/google/common/collect/k2;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move v0, v2

    move-object v1, v3

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/k2;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v2}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    .line 11
    iget-object p1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {p1}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p2, p1, v0

    return v0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v0}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return p1
.end method

.method public else(I)I
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z1$for;->break(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v1}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    move p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public for(ILjava/lang/Object;)I
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->catch(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/k2;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v2}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v0}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return p1
.end method

.method public goto(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v0}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v0}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 p2, p1, 0x1

    :goto_1
    if-ge p2, v0, :cond_3

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/z1$for;->new(II)I

    move-result v1

    if-gez v1, :cond_2

    move p1, p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return p1
.end method

.method public if(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/z1$for;->case(ILjava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, p1

    move-object p1, p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/z1$for;->if:Lcom/google/common/collect/z1$for;

    .line 3
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/google/common/collect/z1$for;->for(ILjava/lang/Object;)I

    return-void
.end method

.method public new(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/k2;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public super(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v0}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result v1

    .line 3
    invoke-direct {p0, v1}, Lcom/google/common/collect/z1$for;->final(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/google/common/collect/z1$for;->class(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v2}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/k2;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v2}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p1, v2, v1

    .line 8
    iget-object p1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {p1}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v2}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result v2

    aput-object v0, p1, v2

    return v1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {p1}, Lcom/google/common/collect/z1;->if(Lcom/google/common/collect/z1;)I

    move-result p1

    return p1
.end method

.method public this(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->class(I)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/z1$for;->goto(II)I

    move-result p1

    return p1
.end method

.method public throw(IILjava/lang/Object;)Lcom/google/common/collect/z1$new;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/z1$new<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/z1$for;->try(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return-object v1

    :cond_0
    if-ge v0, p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-direct {p0, p1}, Lcom/google/common/collect/z1$for;->const(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object p2

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/z1$for;->if:Lcom/google/common/collect/z1$for;

    invoke-virtual {v2, v0, p3}, Lcom/google/common/collect/z1$for;->for(ILjava/lang/Object;)I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 5
    new-instance p1, Lcom/google/common/collect/z1$new;

    invoke-direct {p1, p3, p2}, Lcom/google/common/collect/z1$new;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method public try(ILjava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z1$for;->this(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/k2;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {v1}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/z1$for;->for:Lcom/google/common/collect/z1;

    invoke-static {p1}, Lcom/google/common/collect/z1;->do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p2, p1, v0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/z1$for;->case(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method
