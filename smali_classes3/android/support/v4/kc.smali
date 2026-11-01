.class public Landroid/support/v4/kc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenStream;


# static fields
.field public static final synthetic try:Z


# instance fields
.field public do:Lorg/antlr/v4/runtime/TokenSource;

.field public for:I

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation
.end field

.field public new:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/support/v4/kc;->for:I

    const-string v0, "tokenSource cannot be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Landroid/support/v4/kc;->do:Lorg/antlr/v4/runtime/TokenSource;

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result p1

    return p1
.end method

.method public LT(I)Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-gez p1, :cond_1

    neg-int p1, p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->do(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget v0, p0, Landroid/support/v4/kc;->for:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->return(I)Z

    .line 5
    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1
.end method

.method public break(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/kc;->throw(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/kc;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/kc;->try(III)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in 0.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public case(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_4

    if-gez p2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object p2, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_1
    :goto_0
    if-gt p1, p2, :cond_3

    .line 4
    iget-object v1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/Token;

    .line 5
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public catch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    return-object v0
.end method

.method public class(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/kc;->final(IILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public const(III)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/kc;->final(IILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public consume()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/kc;->for:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    .line 2
    iget-boolean v3, p0, Landroid/support/v4/kc;->new:Z

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0, v2}, Landroid/support/v4/kc;->LA(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    :goto_2
    iget v0, p0, Landroid/support/v4/kc;->for:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->return(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget v0, p0, Landroid/support/v4/kc;->for:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->if(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/kc;->for:I

    :cond_4
    return-void
.end method

.method public do(I)Lorg/antlr/v4/runtime/Token;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/kc;->for:I

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    sub-int/2addr v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1
.end method

.method public else(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/kc;->goto(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final(IILjava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    if-ltz p1, :cond_5

    .line 2
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    if-ltz p2, :cond_5

    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_3

    .line 4
    iget-object v2, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/Token;

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0

    .line 8
    :cond_5
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or stop "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in 0.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p3

    :goto_3
    goto :goto_2
.end method

.method public for(I)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/kc;->new:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge v1, p1, :cond_3

    .line 2
    iget-object v0, p0, Landroid/support/v4/kc;->do:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lorg/antlr/v4/runtime/WritableToken;

    if-eqz v2, :cond_1

    .line 4
    move-object v2, v0

    check-cast v2, Lorg/antlr/v4/runtime/WritableToken;

    iget-object v3, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/antlr/v4/runtime/WritableToken;->setTokenIndex(I)V

    .line 5
    :cond_1
    iget-object v2, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/support/v4/kc;->new:Z

    add-int/2addr v1, p1

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public get(I)Lorg/antlr/v4/runtime/Token;
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/Token;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range 0.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/kc;->do:Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Landroid/support/v4/rn0;)Ljava/lang/String;
    .locals 5

    .line 2
    iget v0, p1, Landroid/support/v4/rn0;->do:I

    .line 3
    iget p1, p1, Landroid/support/v4/rn0;->if:I

    if-ltz v0, :cond_4

    if-gez p1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/kc;->new()V

    .line 5
    iget-object v1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt v0, p1, :cond_3

    .line 7
    iget-object v2, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/Token;

    .line 8
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    const-string p1, ""

    return-object p1
.end method

.method public getText(Landroid/support/v4/vo1;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-virtual {p1}, Landroid/support/v4/vo1;->getSourceInterval()Landroid/support/v4/rn0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 12
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p1

    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-static {p1, p2}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/kc;->do:Lorg/antlr/v4/runtime/TokenSource;

    return-object v0
.end method

.method public goto(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    if-ltz p1, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/kc;->while(II)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v4/kc;->try(III)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in 0.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public if(I)I
    .locals 0

    return p1
.end method

.method public import()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->seek(I)V

    return-void
.end method

.method public index()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/kc;->for:I

    return v0
.end method

.method public mark()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native(Lorg/antlr/v4/runtime/TokenSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/kc;->do:Lorg/antlr/v4/runtime/TokenSource;

    .line 2
    iget-object p1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroid/support/v4/kc;->for:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/support/v4/kc;->new:Z

    return-void
.end method

.method public new()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    :cond_0
    const/16 v0, 0x3e8

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->for(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    return-void
.end method

.method public public()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->return(I)Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/kc;->if(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/kc;->for:I

    return-void
.end method

.method public release(I)V
    .locals 0

    return-void
.end method

.method public return(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-lez p1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->for(I)I

    move-result v1

    if-lt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public seek(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kc;->super()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->if(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/kc;->for:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final super()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/kc;->for:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/kc;->public()V

    :cond_0
    return-void
.end method

.method public this(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/kc;->break(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public throw(II)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->return(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/kc;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/kc;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 5
    :goto_0
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v1

    if-eq v1, p2, :cond_2

    .line 6
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->return(I)Z

    .line 8
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    :cond_2
    return p1
.end method

.method public try(III)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_2

    .line 2
    iget-object v1, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/Token;

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 3
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v2

    if-ne v2, p3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    return-object v0
.end method

.method public while(II)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/kc;->return(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/kc;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/kc;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    :goto_0
    if-ltz p1, :cond_2

    .line 4
    iget-object v0, p0, Landroid/support/v4/kc;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/Token;

    .line 5
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method
