.class public Landroid/support/v4/pc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/pc0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final else:I = 0x10

.field public static final goto:I = 0x8

.field public static final this:D = 0.75


# instance fields
.field public case:I

.field public final do:Landroid/support/v4/interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/interface<",
            "-TK;>;"
        }
    .end annotation
.end field

.field public for:I

.field public if:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/16 v2, 0x8

    .line 1
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/pc0;-><init>(Landroid/support/v4/interface;II)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/interface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/interface<",
            "-TK;>;)V"
        }
    .end annotation

    const/16 v0, 0x10

    const/16 v1, 0x8

    .line 2
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/pc0;-><init>(Landroid/support/v4/interface;II)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/interface;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/interface<",
            "-TK;>;II)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Landroid/support/v4/pc0;->for:I

    const/16 p2, 0xc

    .line 5
    iput p2, p0, Landroid/support/v4/pc0;->new:I

    const/4 p2, 0x1

    .line 6
    iput p2, p0, Landroid/support/v4/pc0;->try:I

    const/16 p2, 0x8

    .line 7
    iput p2, p0, Landroid/support/v4/pc0;->case:I

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Landroid/support/v4/r51;->do:Landroid/support/v4/r51;

    .line 9
    :cond_0
    iput-object p1, p0, Landroid/support/v4/pc0;->do:Landroid/support/v4/interface;

    .line 10
    invoke-static {p3}, Landroid/support/v4/pc0;->do(I)[Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    .line 11
    iput p3, p0, Landroid/support/v4/pc0;->case:I

    return-void
.end method

.method private static do(I)[Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/LinkedList<",
            "Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-array p0, p0, [Ljava/util/LinkedList;

    return-object p0
.end method

.method public static new([Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance p0, Landroid/support/v4/pc0;

    invoke-direct {p0}, Landroid/support/v4/pc0;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hi"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "mom"

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "foo"

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "ach"

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "cbba"

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "d"

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "edf"

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Landroid/support/v4/pc0;->try()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Landroid/support/v4/pc0;->do(I)[Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/pc0;->for:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/pc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public for(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc0;->do:Landroid/support/v4/interface;

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/pc0;->for(Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget-object v2, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    aget-object v1, v2, v1

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/pc0$do;

    .line 4
    iget-object v3, p0, Landroid/support/v4/pc0;->do:Landroid/support/v4/interface;

    iget-object v4, v2, Landroid/support/v4/pc0$do;->do:Ljava/lang/Object;

    invoke-interface {v3, v4, p1}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget-object p1, v2, Landroid/support/v4/pc0$do;->if:Ljava/lang/Object;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/pc0$do;

    if-nez v5, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v6, p0, Landroid/support/v4/pc0;->do:Landroid/support/v4/interface;

    iget-object v5, v5, Landroid/support/v4/pc0$do;->do:Ljava/lang/Object;

    invoke-interface {v6, v5}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v0, v5}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/pc0;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public if()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    .line 2
    iget v1, p0, Landroid/support/v4/pc0;->try:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/support/v4/pc0;->try:I

    .line 3
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 4
    invoke-static {v1}, Landroid/support/v4/pc0;->do(I)[Ljava/util/LinkedList;

    move-result-object v2

    .line 5
    iput-object v2, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/support/v4/pc0;->new:I

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/pc0;->size()I

    move-result v1

    .line 8
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/pc0$do;

    if-nez v5, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget-object v6, v5, Landroid/support/v4/pc0$do;->do:Ljava/lang/Object;

    iget-object v5, v5, Landroid/support/v4/pc0$do;->if:Ljava/lang/Object;

    invoke-virtual {p0, v6, v5}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iput v1, p0, Landroid/support/v4/pc0;->for:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pc0;->for:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget v1, p0, Landroid/support/v4/pc0;->for:I

    iget v2, p0, Landroid/support/v4/pc0;->new:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/pc0;->if()V

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/pc0;->for(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    .line 4
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 5
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/pc0$do;

    .line 6
    iget-object v4, p0, Landroid/support/v4/pc0;->do:Landroid/support/v4/interface;

    iget-object v5, v2, Landroid/support/v4/pc0$do;->do:Ljava/lang/Object;

    invoke-interface {v4, v5, p1}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    iget-object p1, v2, Landroid/support/v4/pc0$do;->if:Ljava/lang/Object;

    .line 8
    iput-object p2, v2, Landroid/support/v4/pc0$do;->if:Ljava/lang/Object;

    .line 9
    iget p2, p0, Landroid/support/v4/pc0;->for:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/support/v4/pc0;->for:I

    return-object p1

    .line 10
    :cond_4
    new-instance v1, Landroid/support/v4/pc0$do;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/pc0$do;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    iget p1, p0, Landroid/support/v4/pc0;->for:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v4/pc0;->for:I

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pc0;->for:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/pc0;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    aget-object v6, v1, v5

    if-nez v6, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/pc0$do;

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const-string v8, ", "

    .line 6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_2
    invoke-virtual {v7}, Landroid/support/v4/pc0$do;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x7d

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    const-string v5, "null\n"

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/16 v6, 0x5b

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/pc0$do;

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    const-string v8, " "

    .line 6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-nez v7, :cond_2

    const-string v7, "_"

    .line 7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v7}, Landroid/support/v4/pc0$do;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v5, "]\n"

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/pc0;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/pc0;->if:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/pc0$do;

    .line 4
    iget-object v5, v5, Landroid/support/v4/pc0$do;->if:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
