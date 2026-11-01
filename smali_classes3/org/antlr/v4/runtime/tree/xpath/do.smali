.class public Lorg/antlr/v4/runtime/tree/xpath/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final new:Ljava/lang/String; = "*"

.field public static final try:Ljava/lang/String; = "!"


# instance fields
.field public do:Ljava/lang/String;

.field public for:Lorg/antlr/v4/runtime/goto;

.field public if:[Landroid/support/v4/qi2;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/goto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/xpath/do;->for:Lorg/antlr/v4/runtime/goto;

    .line 3
    iput-object p2, p0, Lorg/antlr/v4/runtime/tree/xpath/do;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/tree/xpath/do;->new(Ljava/lang/String;)[Landroid/support/v4/qi2;

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/xpath/do;->if:[Landroid/support/v4/qi2;

    return-void
.end method

.method public static if(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;Lorg/antlr/v4/runtime/goto;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/goto;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/tree/xpath/do;

    invoke-direct {v0, p2, p1}, Lorg/antlr/v4/runtime/tree/xpath/do;-><init>(Lorg/antlr/v4/runtime/goto;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/tree/xpath/do;->do(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public do(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/qc1;

    invoke-direct {v0}, Landroid/support/v4/qc1;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/xpath/do;->if:[Landroid/support/v4/qi2;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 7
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 8
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/xpath/do;->if:[Landroid/support/v4/qi2;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/support/v4/qi2;->do(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public for(Lorg/antlr/v4/runtime/Token;Z)Landroid/support/v4/qi2;
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 2
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/xpath/do;->for:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/this;->while(Ljava/lang/String;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lorg/antlr/v4/runtime/tree/xpath/do;->for:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/goto;->o(Ljava/lang/String;)I

    move-result v3

    .line 5
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v4

    const/4 v5, 0x1

    const-string v6, " at index "

    if-eq v4, v5, :cond_4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    if-eq v3, v1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    new-instance p1, Landroid/support/v4/ti2;

    invoke-direct {p1, v0, v3}, Landroid/support/v4/ti2;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/ui2;

    invoke-direct {p1, v0, v3}, Landroid/support/v4/ui2;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object p1

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a valid rule name"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    new-instance p1, Landroid/support/v4/xi2;

    invoke-direct {p1}, Landroid/support/v4/xi2;-><init>()V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/support/v4/yi2;

    invoke-direct {p1}, Landroid/support/v4/yi2;-><init>()V

    :goto_1
    return-object p1

    :cond_4
    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    .line 9
    new-instance p1, Landroid/support/v4/vi2;

    invoke-direct {p1, v0, v2}, Landroid/support/v4/vi2;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/support/v4/wi2;

    invoke-direct {p1, v0, v2}, Landroid/support/v4/wi2;-><init>(Ljava/lang/String;I)V

    :goto_2
    return-object p1

    .line 10
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a valid token name"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing path element at end of path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new(Ljava/lang/String;)[Landroid/support/v4/qi2;
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lorg/antlr/v4/runtime/if;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/if;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    new-instance v1, Lorg/antlr/v4/runtime/tree/xpath/do$do;

    invoke-direct {v1, p0, v0}, Lorg/antlr/v4/runtime/tree/xpath/do$do;-><init>(Lorg/antlr/v4/runtime/tree/xpath/do;Lorg/antlr/v4/runtime/CharStream;)V

    .line 3
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/this;->static()V

    .line 4
    new-instance v0, Landroid/support/v4/si2;

    invoke-direct {v0}, Landroid/support/v4/si2;-><init>()V

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/this;->if(Lorg/antlr/v4/runtime/ANTLRErrorListener;)V

    .line 5
    new-instance v0, Landroid/support/v4/hp;

    invoke-direct {v0, v1}, Landroid/support/v4/hp;-><init>(Lorg/antlr/v4/runtime/TokenSource;)V

    .line 6
    :try_start_1
    invoke-virtual {v0}, Landroid/support/v4/kc;->new()V
    :try_end_1
    .catch Landroid/support/v4/ss0; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/kc;->catch()Ljava/util/List;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/Token;

    .line 11
    invoke-interface {v4}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_1

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    goto :goto_3

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknowth path element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    invoke-interface {v4}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 14
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/Token;

    .line 15
    invoke-interface {v5}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/Token;

    .line 17
    :cond_4
    invoke-virtual {p0, v5, v4}, Lorg/antlr/v4/runtime/tree/xpath/do;->for(Lorg/antlr/v4/runtime/Token;Z)Landroid/support/v4/qi2;

    move-result-object v4

    .line 18
    iput-boolean v7, v4, Landroid/support/v4/qi2;->if:Z

    .line 19
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v6

    goto :goto_0

    .line 20
    :cond_5
    :goto_3
    invoke-virtual {p0, v4, v2}, Lorg/antlr/v4/runtime/tree/xpath/do;->for(Lorg/antlr/v4/runtime/Token;Z)Landroid/support/v4/qi2;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-array p1, v2, [Landroid/support/v4/qi2;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/v4/qi2;

    return-object p1

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v1}, Landroid/support/v4/ri2;->getCharPositionInLine()I

    move-result v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tokens or characters at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in path \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
