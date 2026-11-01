.class public abstract Lfreemarker/core/b4;
.super Lfreemarker/core/h4;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/tree/TreeNode;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final catch:I = 0x6


# instance fields
.field private break:I

.field private else:Lfreemarker/core/b4;

.field private goto:[Lfreemarker/core/b4;

.field private this:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h4;-><init>()V

    return-void
.end method

.method public static abstract([Lfreemarker/core/b4;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v3}, Lfreemarker/core/b4;->for()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private implements()Lfreemarker/core/b4;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    invoke-virtual {v0}, Lfreemarker/core/b4;->e()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lfreemarker/core/x1;

    if-nez v1, :cond_0

    instance-of v1, v0, Lfreemarker/core/final;

    if-nez v1, :cond_0

    .line 2
    invoke-direct {v0}, Lfreemarker/core/b4;->transient()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private strictfp()Lfreemarker/core/b4;
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method private transient()Lfreemarker/core/b4;
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method private volatile()Lfreemarker/core/b4;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    invoke-virtual {v0}, Lfreemarker/core/b4;->e()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lfreemarker/core/x1;

    if-nez v1, :cond_0

    instance-of v1, v0, Lfreemarker/core/final;

    if-nez v1, :cond_0

    .line 2
    invoke-direct {v0}, Lfreemarker/core/b4;->strictfp()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lfreemarker/core/b4;->g()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final continue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/core/b4;->switch(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final default(I)Lfreemarker/core/b4;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public extends(I)Ljavax/swing/tree/TreeNode;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lfreemarker/core/b4;->this:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Template element has no children"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract f()Z
.end method

.method public final finally()[Lfreemarker/core/b4;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    return-object v0
.end method

.method public final for()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/core/b4;->switch(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChildNodes()Lfreemarker/template/TemplateSequenceModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lfreemarker/template/return;

    iget v2, p0, Lfreemarker/core/b4;->this:I

    invoke-direct {v0, v2}, Lfreemarker/template/return;-><init>(I)V

    .line 3
    :goto_0
    iget v2, p0, Lfreemarker/core/b4;->this:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lfreemarker/template/return;

    invoke-direct {v0, v1}, Lfreemarker/template/return;-><init>(I)V

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()Ljava/lang/String;
    .locals 1

    const-string v0, "element"

    return-object v0
.end method

.method public getParentNode()Lfreemarker/template/TemplateNodeModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lfreemarker/core/b4;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, p0, Lfreemarker/core/b4;->break:I

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lfreemarker/core/b4;->this:I

    if-ge v3, v4, :cond_1

    iget-object v0, v0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v0, v2

    :cond_1
    return-object v1
.end method

.method public instanceof()Ljavax/swing/tree/TreeNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    return-object v0
.end method

.method final interface()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->break:I

    return v0
.end method

.method public j()Lfreemarker/core/b4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->i()Lfreemarker/core/b4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Lfreemarker/core/b4;->volatile()Lfreemarker/core/b4;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lfreemarker/core/b4;->j()Lfreemarker/core/b4;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Z)Lfreemarker/core/b4;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object v3, v3, v2

    .line 3
    invoke-virtual {v3, p1}, Lfreemarker/core/b4;->k(Z)Lfreemarker/core/b4;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aput-object v3, v4, v2

    .line 5
    iput-object p0, v3, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    .line 6
    iput v2, v3, Lfreemarker/core/b4;->break:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    .line 7
    iget-object v4, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object v4, v4, v2

    .line 8
    invoke-virtual {v4, p1}, Lfreemarker/core/b4;->d(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_1

    .line 9
    iget-object v5, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    add-int/lit8 v6, v4, 0x1

    aget-object v7, v5, v6

    .line 10
    aput-object v7, v5, v4

    .line 11
    iput v4, v7, Lfreemarker/core/b4;->break:I

    move v4, v6

    goto :goto_2

    .line 12
    :cond_1
    iget-object v4, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aput-object v3, v4, v0

    .line 13
    iput v0, p0, Lfreemarker/core/b4;->this:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 14
    iput-object v3, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    goto :goto_4

    .line 15
    :cond_4
    iget-object p1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    array-length v2, p1

    if-ge v0, v2, :cond_6

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    if-gt v0, p1, :cond_6

    .line 16
    new-array p1, v0, [Lfreemarker/core/b4;

    :goto_3
    if-ge v1, v0, :cond_5

    .line 17
    iget-object v2, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 18
    :cond_5
    iput-object p1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    :cond_6
    :goto_4
    return-object p0
.end method

.method public l()Lfreemarker/core/b4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->m()Lfreemarker/core/b4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Lfreemarker/core/b4;->implements()Lfreemarker/core/b4;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lfreemarker/core/b4;->l()Lfreemarker/core/b4;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lfreemarker/core/b4;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, p0, Lfreemarker/core/b4;->break:I

    if-lez v2, :cond_1

    iget-object v0, v0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    :cond_1
    return-object v1
.end method

.method public n(ILfreemarker/core/b4;)V
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aput-object p2, v0, p1

    .line 3
    iput p1, p2, Lfreemarker/core/b4;->break:I

    .line 4
    iput-object p0, p2, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lfreemarker/core/b4;->this:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public abstract native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final o(I)V
    .locals 3

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    .line 2
    new-array p1, p1, [Lfreemarker/core/b4;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    return-void
.end method

.method public final p(Lfreemarker/core/c4;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/c4;->for()[Lfreemarker/core/b4;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/c4;->new()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    aget-object v2, v0, v1

    .line 4
    iput v1, v2, Lfreemarker/core/b4;->break:I

    .line 5
    iput-object p0, v2, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    .line 7
    iput p1, p0, Lfreemarker/core/b4;->this:I

    return-void
.end method

.method public package()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    return v0
.end method

.method public final private()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    invoke-static {v0}, Lfreemarker/core/b4;->abstract([Lfreemarker/core/b4;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public protected(Ljavax/swing/tree/TreeNode;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lfreemarker/core/b4;->this:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final public(ILfreemarker/core/b4;)V
    .locals 5

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    .line 2
    iget-object v1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [Lfreemarker/core/b4;

    .line 3
    iput-object v1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    goto :goto_1

    .line 4
    :cond_0
    array-length v3, v1

    if-ne v0, v3, :cond_2

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 5
    :goto_0
    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->o(I)V

    .line 6
    iget-object v1, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    :cond_2
    :goto_1
    move v3, v0

    :goto_2
    if-le v3, p1, :cond_3

    add-int/lit8 v4, v3, -0x1

    .line 7
    aget-object v4, v1, v4

    .line 8
    iput v3, v4, Lfreemarker/core/b4;->break:I

    .line 9
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 10
    :cond_3
    iput p1, p2, Lfreemarker/core/b4;->break:I

    .line 11
    iput-object p0, p2, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    .line 12
    aput-object p2, v1, p1

    add-int/2addr v0, v2

    .line 13
    iput v0, p0, Lfreemarker/core/b4;->this:I

    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lfreemarker/core/b4;->break:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    return-void
.end method

.method public final return(Lfreemarker/core/b4;)V
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/b4;->this:I

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/b4;->public(ILfreemarker/core/b4;)V

    return-void
.end method

.method public static()Ljava/util/Enumeration;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->goto:[Lfreemarker/core/b4;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/tk2;

    iget v2, p0, Lfreemarker/core/b4;->this:I

    invoke-direct {v1, v0, v2}, Landroid/support/v4/tk2;-><init>([Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public abstract switch(Z)Ljava/lang/String;
.end method

.method public final synchronized()Lfreemarker/core/b4;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/b4;->else:Lfreemarker/core/b4;

    return-object v0
.end method

.method public throws()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
