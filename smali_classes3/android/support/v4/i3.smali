.class public Landroid/support/v4/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/i3$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic break:Z = false

.field public static final else:I = 0x10

.field public static final goto:I = 0x8

.field public static final this:D = 0.75


# instance fields
.field public case:I

.field public final do:Landroid/support/v4/interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/interface<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public for:I

.field public if:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field public new:I

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/i3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/16 v2, 0x8

    .line 1
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/i3;-><init>(Landroid/support/v4/interface;II)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/interface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/interface<",
            "-TT;>;)V"
        }
    .end annotation

    const/16 v0, 0x10

    const/16 v1, 0x8

    .line 2
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/i3;-><init>(Landroid/support/v4/interface;II)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/interface;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/interface<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/support/v4/i3;->for:I

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/support/v4/i3;->new:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Landroid/support/v4/i3;->try:I

    const/16 v0, 0x8

    .line 7
    iput v0, p0, Landroid/support/v4/i3;->case:I

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Landroid/support/v4/r51;->do:Landroid/support/v4/r51;

    .line 9
    :cond_0
    iput-object p1, p0, Landroid/support/v4/i3;->do:Landroid/support/v4/interface;

    .line 10
    invoke-virtual {p0, p2}, Landroid/support/v4/i3;->new(I)[[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    .line 11
    iput p3, p0, Landroid/support/v4/i3;->case:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->goto(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Landroid/support/v4/i3;->goto(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public break(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->else(Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget-object v2, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    aget-object v1, v2, v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 4
    aget-object v3, v1, v2

    if-nez v3, :cond_2

    return v0

    .line 5
    :cond_2
    iget-object v4, p0, Landroid/support/v4/i3;->do:Landroid/support/v4/interface;

    invoke-interface {v4, v3, p1}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 6
    array-length v0, v1

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length p1, v1

    sub-int/2addr p1, v3

    const/4 v0, 0x0

    aput-object v0, v1, p1

    .line 8
    iget p1, p0, Landroid/support/v4/i3;->for:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/support/v4/i3;->for:I

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public case(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->else(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v5, p0, Landroid/support/v4/i3;->do:Landroid/support/v4/interface;

    invoke-interface {v5, v4, p1}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public catch()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

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

    goto :goto_4

    :cond_0
    const/16 v6, 0x5b

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    array-length v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_3

    aget-object v9, v5, v8

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    const-string v10, " "

    .line 6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-nez v9, :cond_2

    const-string v9, "_"

    .line 7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "]\n"

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/i3;->new(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/i3;->for:I

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/support/v4/i3;->new:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->if(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/support/v4/i3;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Landroid/support/v4/i3;

    .line 3
    iget-object p1, p1, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-nez v6, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v4/i3;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/support/v4/i3;->if(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/support/v4/i3;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/i3;->if(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public do(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final else(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/i3;->do:Landroid/support/v4/interface;

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/support/v4/i3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/i3;

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/i3;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/i3;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public for(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public final goto(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/i3;->for:I

    iget v1, p0, Landroid/support/v4/i3;->new:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/i3;->try()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->this(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 10

    .line 1
    invoke-static {}, Landroid/support/v4/y01;->for()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    if-nez v8, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v9, p0, Landroid/support/v4/i3;->do:Landroid/support/v4/interface;

    invoke-interface {v9, v8}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v0, v8}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/i3;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public if(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->case(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/i3;->for:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/i3$do;

    invoke-virtual {p0}, Landroid/support/v4/i3;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/i3$do;-><init>(Landroid/support/v4/i3;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public new(I)[[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[TT;"
        }
    .end annotation

    .line 1
    new-array p1, p1, [[Ljava/lang/Object;

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->break(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Landroid/support/v4/i3;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/i3;->break(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v5, v0, v3

    if-nez v5, :cond_0

    goto :goto_5

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_4

    .line 3
    aget-object v8, v5, v6

    if-nez v8, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    aget-object v8, v5, v6

    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    if-eq v6, v7, :cond_3

    .line 5
    aget-object v8, v5, v6

    aput-object v8, v5, v7

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/2addr v4, v7

    :goto_4
    if-ge v7, v6, :cond_5

    const/4 v8, 0x0

    .line 6
    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_6
    iget p1, p0, Landroid/support/v4/i3;->for:I

    if-eq v4, p1, :cond_7

    const/4 v2, 0x1

    .line 8
    :cond_7
    iput v4, p0, Landroid/support/v4/i3;->for:I

    return v2
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/i3;->for:I

    return v0
.end method

.method public this(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/i3;->else(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Landroid/support/v4/i3;->case:I

    invoke-virtual {p0, v1}, Landroid/support/v4/i3;->for(I)[Ljava/lang/Object;

    move-result-object v1

    .line 4
    aput-object p1, v1, v2

    .line 5
    iget-object v2, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 6
    iget v0, p0, Landroid/support/v4/i3;->for:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/i3;->for:I

    return-object p1

    .line 7
    :cond_0
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 8
    aget-object v3, v1, v2

    if-nez v3, :cond_1

    .line 9
    aput-object p1, v1, v2

    .line 10
    iget v0, p0, Landroid/support/v4/i3;->for:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/i3;->for:I

    return-object p1

    .line 11
    :cond_1
    iget-object v4, p0, Landroid/support/v4/i3;->do:Landroid/support/v4/interface;

    invoke-interface {v4, v3, p1}, Lorg/antlr/v4/runtime/misc/EqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    array-length v2, v1

    .line 13
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget-object v3, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 15
    aput-object p1, v1, v2

    .line 16
    iget v0, p0, Landroid/support/v4/i3;->for:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/i3;->for:I

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/i3;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/i3;->for(I)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    if-nez v6, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v5, 0x1

    .line 4
    aput-object v9, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    .line 5
    array-length v0, p1

    invoke-virtual {p0}, Landroid/support/v4/i3;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/i3;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    if-nez v5, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v4, 0x1

    .line 9
    aput-object v8, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/i3;->size()I

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
    iget-object v1, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

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
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const-string v10, ", "

    .line 6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

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

.method public try()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    .line 2
    iget v1, p0, Landroid/support/v4/i3;->try:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/support/v4/i3;->try:I

    .line 3
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Landroid/support/v4/i3;->new(I)[[Ljava/lang/Object;

    move-result-object v2

    .line 5
    array-length v3, v2

    new-array v3, v3, [I

    .line 6
    iput-object v2, p0, Landroid/support/v4/i3;->if:[[Ljava/lang/Object;

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v1, v4

    iput v1, p0, Landroid/support/v4/i3;->new:I

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/i3;->size()I

    .line 9
    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    if-nez v9, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    invoke-virtual {p0, v9}, Landroid/support/v4/i3;->else(Ljava/lang/Object;)I

    move-result v10

    .line 12
    aget v11, v3, v10

    if-nez v11, :cond_2

    .line 13
    iget v12, p0, Landroid/support/v4/i3;->case:I

    invoke-virtual {p0, v12}, Landroid/support/v4/i3;->for(I)[Ljava/lang/Object;

    move-result-object v12

    .line 14
    aput-object v12, v2, v10

    goto :goto_2

    .line 15
    :cond_2
    aget-object v12, v2, v10

    .line 16
    array-length v13, v12

    if-ne v11, v13, :cond_3

    .line 17
    array-length v13, v12

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    .line 18
    aput-object v12, v2, v10

    .line 19
    :cond_3
    :goto_2
    aput-object v9, v12, v11

    .line 20
    aget v9, v3, v10

    add-int/lit8 v9, v9, 0x1

    aput v9, v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
