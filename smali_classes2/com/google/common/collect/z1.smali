.class public final Lcom/google/common/collect/z1;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/z1$try;,
        Lcom/google/common/collect/z1$for;,
        Lcom/google/common/collect/z1$new;,
        Lcom/google/common/collect/z1$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final else:I = 0x55555555

.field private static final goto:I = -0x55555556

.field private static final this:I = 0xb


# instance fields
.field private case:I

.field private final do:Lcom/google/common/collect/z1$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z1<",
            "TE;>.for;"
        }
    .end annotation
.end field

.field public final for:I
    .annotation build Landroid/support/v4/af2;
    .end annotation
.end field

.field private final if:Lcom/google/common/collect/z1$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z1<",
            "TE;>.for;"
        }
    .end annotation
.end field

.field private new:[Ljava/lang/Object;

.field private try:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/z1$if;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z1$if<",
            "-TE;>;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/z1$if;->do(Lcom/google/common/collect/z1$if;)Lcom/google/common/collect/k2;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/common/collect/z1$for;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/z1$for;-><init>(Lcom/google/common/collect/z1;Lcom/google/common/collect/k2;)V

    iput-object v1, p0, Lcom/google/common/collect/z1;->do:Lcom/google/common/collect/z1$for;

    .line 5
    new-instance v2, Lcom/google/common/collect/z1$for;

    invoke-virtual {v0}, Lcom/google/common/collect/k2;->reverse()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/z1$for;-><init>(Lcom/google/common/collect/z1;Lcom/google/common/collect/k2;)V

    iput-object v2, p0, Lcom/google/common/collect/z1;->if:Lcom/google/common/collect/z1$for;

    .line 6
    iput-object v2, v1, Lcom/google/common/collect/z1$for;->if:Lcom/google/common/collect/z1$for;

    .line 7
    iput-object v1, v2, Lcom/google/common/collect/z1$for;->if:Lcom/google/common/collect/z1$for;

    .line 8
    invoke-static {p1}, Lcom/google/common/collect/z1$if;->if(Lcom/google/common/collect/z1$if;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/z1;->for:I

    .line 9
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/z1$if;ILcom/google/common/collect/z1$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/z1;-><init>(Lcom/google/common/collect/z1$if;I)V

    return-void
.end method

.method public static break(I)Lcom/google/common/collect/z1$if;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/z1$if<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/z1$if;

    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/z1$if;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/z1$do;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/z1$if;->try(I)Lcom/google/common/collect/z1$if;

    move-result-object p0

    return-object p0
.end method

.method private catch(ILjava/lang/Object;)Lcom/google/common/collect/z1$new;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lcom/google/common/collect/z1$new<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/z1;->final(I)Lcom/google/common/collect/z1$for;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/common/collect/z1$for;->else(I)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/z1$for;->for(ILjava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 4
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/z1$for;->throw(IILjava/lang/Object;)Lcom/google/common/collect/z1$new;

    move-result-object p1

    return-object p1

    :cond_0
    if-ge v2, p1, :cond_1

    .line 5
    new-instance v0, Lcom/google/common/collect/z1$new;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/z1$new;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private class()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z1;->if:Lcom/google/common/collect/z1$for;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/z1$for;->new(II)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private const()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    iget-object v1, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/z1;->new()I

    move-result v0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object v0, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic do(Lcom/google/common/collect/z1;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    return-object p0
.end method

.method public static else()Lcom/google/common/collect/z1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "TE;>;>()",
            "Lcom/google/common/collect/z1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/z1$if;

    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/z1$if;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/z1$do;)V

    invoke-virtual {v0}, Lcom/google/common/collect/z1$if;->for()Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0
.end method

.method private final(I)Lcom/google/common/collect/z1$for;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/z1<",
            "TE;>.for;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/z1;->throw(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/z1;->do:Lcom/google/common/collect/z1$for;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/z1;->if:Lcom/google/common/collect/z1$for;

    :goto_0
    return-object p1
.end method

.method public static synthetic for(Lcom/google/common/collect/z1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/z1;->case:I

    return p0
.end method

.method public static goto(Ljava/lang/Iterable;)Lcom/google/common/collect/z1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/z1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/z1$if;

    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/z1$if;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/z1$do;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/z1$if;->new(Ljava/lang/Iterable;)Lcom/google/common/collect/z1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lcom/google/common/collect/z1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/z1;->try:I

    return p0
.end method

.method public static import(I)Lcom/google/common/collect/z1$if;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/z1$if<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/z1$if;

    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/z1$if;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/z1$do;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/z1$if;->case(I)Lcom/google/common/collect/z1$if;

    move-result-object p0

    return-object p0
.end method

.method public static native(Ljava/util/Comparator;)Lcom/google/common/collect/z1$if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TB;>;)",
            "Lcom/google/common/collect/z1$if<",
            "TB;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/z1$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/z1$if;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/z1$do;)V

    return-object v0
.end method

.method private new()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2
    :cond_0
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/math/new;->new(II)I

    move-result v0

    .line 4
    :goto_0
    iget v1, p0, Lcom/google/common/collect/z1;->for:I

    invoke-static {v0, v1}, Lcom/google/common/collect/z1;->try(II)I

    move-result v0

    return v0
.end method

.method private public(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z1;->return(I)Lcom/google/common/collect/z1$new;

    return-object v0
.end method

.method public static super(IILjava/lang/Iterable;)I
    .locals 1
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xb

    .line 1
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 2
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/z1;->try(II)I

    move-result p0

    return p0
.end method

.method public static throw(I)Z
    .locals 4
    .annotation build Landroid/support/v4/af2;
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p0, v0

    xor-int/lit8 p0, p0, -0x1

    xor-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "negative index"

    .line 1
    invoke-static {v2, v3}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    const v2, 0x55555555

    and-int/2addr v2, p0

    const v3, -0x55555556

    and-int/2addr p0, v3

    if-le v2, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static try(II)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z1;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
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

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/z1;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public case()I
    .locals 1
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/google/common/collect/z1;->try:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Lcom/google/common/collect/z1;->try:I

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1;->do:Lcom/google/common/collect/z1$for;

    iget-object v0, v0, Lcom/google/common/collect/z1$for;->do:Lcom/google/common/collect/k2;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/z1$try;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/z1$try;-><init>(Lcom/google/common/collect/z1;Lcom/google/common/collect/z1$do;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/common/collect/z1;->case:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/z1;->case:I

    .line 3
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/common/collect/z1;->try:I

    .line 4
    invoke-direct {p0}, Lcom/google/common/collect/z1;->const()V

    .line 5
    invoke-direct {p0, v0}, Lcom/google/common/collect/z1;->final(I)Lcom/google/common/collect/z1$for;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/z1$for;->if(ILjava/lang/Object;)V

    .line 6
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    iget v2, p0, Lcom/google/common/collect/z1;->for:I

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/z1;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z1;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/z1;->class()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/z1;->public(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z1;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/z1;->class()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/z1;->public(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/z1;->class()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/z1;->public(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public return(I)Lcom/google/common/collect/z1$new;
    .locals 6
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/z1$new<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    invoke-static {p1, v0}, Landroid/support/v4/af1;->q(II)I

    .line 2
    iget v0, p0, Lcom/google/common/collect/z1;->case:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/z1;->case:I

    .line 3
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/z1;->try:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget v2, p0, Lcom/google/common/collect/z1;->try:I

    invoke-direct {p0, v2}, Lcom/google/common/collect/z1;->final(I)Lcom/google/common/collect/z1$for;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/collect/z1$for;->super(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    aput-object v1, p1, v0

    return-object v1

    .line 8
    :cond_1
    iget v3, p0, Lcom/google/common/collect/z1;->try:I

    invoke-virtual {p0, v3}, Lcom/google/common/collect/z1;->this(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/z1;->try:I

    aput-object v1, v4, v5

    .line 10
    invoke-direct {p0, p1, v3}, Lcom/google/common/collect/z1;->catch(ILjava/lang/Object;)Lcom/google/common/collect/z1$new;

    move-result-object v1

    if-ge v2, p1, :cond_3

    if-nez v1, :cond_2

    .line 11
    new-instance p1, Lcom/google/common/collect/z1$new;

    invoke-direct {p1, v0, v3}, Lcom/google/common/collect/z1$new;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 12
    :cond_2
    new-instance p1, Lcom/google/common/collect/z1$new;

    iget-object v1, v1, Lcom/google/common/collect/z1$new;->if:Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lcom/google/common/collect/z1$new;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    return v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/collect/z1;->try:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/z1;->new:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public while()Z
    .locals 3
    .annotation build Landroid/support/v4/af2;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_0
    iget v2, p0, Lcom/google/common/collect/z1;->try:I

    if-ge v1, v2, :cond_1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/common/collect/z1;->final(I)Lcom/google/common/collect/z1$for;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/collect/z1$for;->do(Lcom/google/common/collect/z1$for;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
