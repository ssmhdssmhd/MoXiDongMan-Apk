.class public Landroid/support/v4/zt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/antlr/v4/runtime/dfa/do;

.field private final if:Lorg/antlr/v4/runtime/Vocabulary;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/do;Lorg/antlr/v4/runtime/Vocabulary;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/zt;->do:Lorg/antlr/v4/runtime/dfa/do;

    .line 4
    iput-object p2, p0, Landroid/support/v4/zt;->if:Lorg/antlr/v4/runtime/Vocabulary;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/do;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/support/v4/cf2;->do([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/zt;-><init>(Lorg/antlr/v4/runtime/dfa/do;Lorg/antlr/v4/runtime/Vocabulary;)V

    return-void
.end method


# virtual methods
.method public do(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zt;->if:Lorg/antlr/v4/runtime/Vocabulary;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if(Landroid/support/v4/au;)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p1, Landroid/support/v4/au;->do:I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Landroid/support/v4/au;->new:Z

    const-string v3, ""

    if-eqz v2, :cond_0

    const-string v2, ":"

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Landroid/support/v4/au;->else:Z

    if-eqz v0, :cond_1

    const-string v3, "^"

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v1, p1, Landroid/support/v4/au;->new:Z

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p1, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    const-string v2, "=>"

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/support/v4/au;->try:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/zt;->do:Lorg/antlr/v4/runtime/dfa/do;

    iget-object v0, v0, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v2, p0, Landroid/support/v4/zt;->do:Lorg/antlr/v4/runtime/dfa/do;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/dfa/do;->if()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/au;

    .line 5
    iget-object v4, v3, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    array-length v4, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 6
    iget-object v6, v3, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    .line 7
    iget v7, v6, Landroid/support/v4/au;->do:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_3

    .line 8
    invoke-virtual {p0, v3}, Landroid/support/v4/zt;->if(Landroid/support/v4/au;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, v5}, Landroid/support/v4/zt;->do(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    .line 10
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Landroid/support/v4/zt;->if(Landroid/support/v4/au;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method
