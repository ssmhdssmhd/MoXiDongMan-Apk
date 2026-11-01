.class public final Lfreemarker/core/k4;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private class:[C

.field private final const:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/k4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lfreemarker/core/k4;-><init>([CZ)V

    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 4
    iput-object p1, p0, Lfreemarker/core/k4;->class:[C

    .line 5
    iput-boolean p2, p0, Lfreemarker/core/k4;->const:Z

    return-void
.end method

.method private static A([CI)[C
    .locals 1

    .line 1
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lfreemarker/core/k4;->B([CII)[C

    move-result-object p0

    return-object p0
.end method

.method private static B([CII)[C
    .locals 2

    sub-int/2addr p2, p1

    .line 1
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private C()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lfreemarker/core/k4;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget v3, p0, Lfreemarker/core/h4;->if:I

    if-eq v3, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v3, p0, Lfreemarker/core/k4;->class:[C

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Lfreemarker/template/utility/super;->protected([CI)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/b4;->j()Lfreemarker/core/b4;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget v3, v1, Lfreemarker/core/h4;->for:I

    iget v4, p0, Lfreemarker/core/h4;->try:I

    if-ne v3, v4, :cond_3

    .line 6
    invoke-virtual {v1}, Lfreemarker/core/b4;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lfreemarker/core/b4;->j()Lfreemarker/core/b4;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Lfreemarker/core/k4;->class:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private static r([C[C)[C
    .locals 3

    .line 1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private s()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->j()Lfreemarker/core/b4;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    iget v3, v0, Lfreemarker/core/h4;->for:I

    iget v4, p0, Lfreemarker/core/h4;->try:I

    if-ne v3, v4, :cond_6

    .line 3
    instance-of v3, v0, Lfreemarker/core/o4;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 4
    move-object v3, v0

    check-cast v3, Lfreemarker/core/o4;

    .line 5
    iget-boolean v5, v3, Lfreemarker/core/o4;->class:Z

    if-nez v5, :cond_0

    iget-boolean v3, v3, Lfreemarker/core/o4;->const:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v5, :cond_5

    .line 6
    invoke-direct {p0}, Lfreemarker/core/k4;->w()I

    move-result v2

    if-gez v2, :cond_1

    .line 7
    iget v3, p0, Lfreemarker/core/h4;->if:I

    if-ne v3, v4, :cond_4

    .line 8
    :cond_1
    iget-object v3, p0, Lfreemarker/core/k4;->class:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v1, v2}, Lfreemarker/core/k4;->B([CII)[C

    move-result-object v3

    .line 9
    iget-object v5, p0, Lfreemarker/core/k4;->class:[C

    invoke-static {v5, v2}, Lfreemarker/core/k4;->A([CI)[C

    move-result-object v2

    .line 10
    invoke-static {v2}, Lfreemarker/template/utility/super;->interface([C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    iput-object v3, p0, Lfreemarker/core/k4;->class:[C

    .line 12
    iput v1, p0, Lfreemarker/core/h4;->new:I

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 13
    :goto_1
    aget-char v6, v2, v5

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {v2, v5}, Lfreemarker/core/k4;->A([CI)[C

    move-result-object v2

    .line 15
    invoke-static {v3, v2}, Lfreemarker/core/k4;->r([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lfreemarker/core/k4;->class:[C

    :cond_4
    :goto_2
    const/4 v2, 0x1

    .line 16
    :cond_5
    invoke-virtual {v0}, Lfreemarker/core/b4;->j()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    :cond_6
    return v2
.end method

.method private t()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->l()Lfreemarker/core/b4;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 2
    iget v3, v0, Lfreemarker/core/h4;->try:I

    iget v4, p0, Lfreemarker/core/h4;->for:I

    if-ne v3, v4, :cond_a

    .line 3
    instance-of v3, v0, Lfreemarker/core/o4;

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    .line 4
    move-object v3, v0

    check-cast v3, Lfreemarker/core/o4;

    .line 5
    iget-boolean v5, v3, Lfreemarker/core/o4;->class:Z

    if-nez v5, :cond_0

    iget-boolean v5, v3, Lfreemarker/core/o4;->const:Z

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 6
    :cond_0
    iget-boolean v3, v3, Lfreemarker/core/o4;->const:Z

    if-eqz v3, :cond_9

    .line 7
    invoke-direct {p0}, Lfreemarker/core/k4;->u()I

    move-result v2

    add-int/2addr v2, v4

    if-nez v2, :cond_1

    return v1

    .line 8
    :cond_1
    iget-object v3, p0, Lfreemarker/core/k4;->class:[C

    array-length v5, v3

    if-le v5, v2, :cond_2

    add-int/lit8 v5, v2, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    aget-char v5, v3, v2

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 9
    :cond_2
    invoke-static {v3, v2}, Lfreemarker/core/k4;->A([CI)[C

    move-result-object v3

    .line 10
    iget-object v5, p0, Lfreemarker/core/k4;->class:[C

    invoke-static {v5, v1, v2}, Lfreemarker/core/k4;->B([CII)[C

    move-result-object v2

    .line 11
    invoke-static {v2}, Lfreemarker/template/utility/super;->interface([C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iput-object v3, p0, Lfreemarker/core/k4;->class:[C

    .line 13
    iget v2, p0, Lfreemarker/core/h4;->for:I

    add-int/2addr v2, v4

    iput v2, p0, Lfreemarker/core/h4;->for:I

    .line 14
    iput v4, p0, Lfreemarker/core/h4;->if:I

    goto :goto_4

    .line 15
    :cond_3
    array-length v2, v2

    sub-int/2addr v2, v4

    .line 16
    :goto_1
    iget-object v5, p0, Lfreemarker/core/k4;->class:[C

    aget-char v5, v5, v2

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 17
    :cond_4
    iget-object v5, p0, Lfreemarker/core/k4;->class:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v5, v1, v2}, Lfreemarker/core/k4;->B([CII)[C

    move-result-object v2

    .line 18
    invoke-static {v3}, Lfreemarker/template/utility/super;->interface([C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 19
    invoke-virtual {p0}, Lfreemarker/core/b4;->j()Lfreemarker/core/b4;

    move-result-object v5

    const/4 v6, 0x1

    :goto_2
    if-eqz v5, :cond_7

    .line 20
    iget v7, v5, Lfreemarker/core/h4;->for:I

    iget v8, p0, Lfreemarker/core/h4;->try:I

    if-ne v7, v8, :cond_7

    .line 21
    invoke-virtual {v5}, Lfreemarker/core/b4;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x0

    .line 22
    :cond_5
    instance-of v7, v5, Lfreemarker/core/o4;

    if-eqz v7, :cond_6

    move-object v7, v5

    check-cast v7, Lfreemarker/core/o4;

    iget-boolean v7, v7, Lfreemarker/core/o4;->class:Z

    if-eqz v7, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {v5}, Lfreemarker/core/b4;->j()Lfreemarker/core/b4;

    move-result-object v5

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 24
    sget-object v3, Landroid/support/v4/vm;->for:[C

    .line 25
    :cond_8
    invoke-static {v2, v3}, Lfreemarker/core/k4;->r([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lfreemarker/core/k4;->class:[C

    :goto_4
    const/4 v2, 0x1

    .line 26
    :cond_9
    invoke-virtual {v0}, Lfreemarker/core/b4;->l()Lfreemarker/core/b4;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    return v2
.end method

.method private u()I
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/k4;->class:[C

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 3
    aget-char v2, v0, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private v(Lfreemarker/core/b4;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lfreemarker/core/c2;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private w()I
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/k4;->class:[C

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 3
    aget-char v2, v0, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private x(Lfreemarker/core/b4;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lfreemarker/core/x1;

    if-nez v0, :cond_1

    instance-of v0, p1, Lfreemarker/core/this;

    if-nez v0, :cond_1

    instance-of v0, p1, Lfreemarker/core/break;

    if-nez v0, :cond_1

    instance-of v0, p1, Lfreemarker/core/i3;

    if-nez v0, :cond_1

    instance-of v0, p1, Lfreemarker/core/r1;

    if-nez v0, :cond_1

    instance-of p1, p1, Lfreemarker/core/o;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private y()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lfreemarker/core/k4;->u()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget v3, p0, Lfreemarker/core/h4;->if:I

    if-eq v3, v2, :cond_0

    return v1

    :cond_0
    add-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Lfreemarker/core/k4;->class:[C

    array-length v3, v2

    if-le v3, v0, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 4
    aget-char v3, v2, v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_1
    invoke-static {v2, v1, v0}, Lfreemarker/template/utility/super;->transient([CII)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/b4;->l()Lfreemarker/core/b4;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    .line 7
    iget v3, v2, Lfreemarker/core/h4;->try:I

    iget v4, p0, Lfreemarker/core/h4;->for:I

    if-ne v3, v4, :cond_4

    .line 8
    invoke-virtual {v2}, Lfreemarker/core/b4;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lfreemarker/core/b4;->l()Lfreemarker/core/b4;

    move-result-object v2

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/core/k4;->d(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v1, p0, Lfreemarker/core/k4;->class:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 3
    iget-object v3, p0, Lfreemarker/core/k4;->class:[C

    aget-char v3, v3, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    return v0
.end method

.method public b()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/core/k4;->d(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lfreemarker/core/k4;->class:[C

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 3
    aget-char v3, v3, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method public d(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/k4;->class:[C

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 2
    invoke-static {v0}, Lfreemarker/template/utility/super;->interface([C)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lfreemarker/core/k4;->v(Lfreemarker/core/b4;)Z

    move-result p1

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/b4;->m()Lfreemarker/core/b4;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/b4;->i()Lfreemarker/core/b4;

    move-result-object v3

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Lfreemarker/core/k4;->x(Lfreemarker/core/b4;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-nez v3, :cond_4

    if-nez p1, :cond_6

    .line 8
    :cond_4
    invoke-direct {p0, v3}, Lfreemarker/core/k4;->x(Lfreemarker/core/b4;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_0
    return v1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v1
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->continue:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public k(Z)Lfreemarker/core/b4;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/k4;->class:[C

    array-length v0, v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/k4;->s()Z

    move-result v0

    .line 3
    invoke-direct {p0}, Lfreemarker/core/k4;->t()Z

    move-result v1

    if-eqz p1, :cond_7

    .line 4
    iget-object p1, p0, Lfreemarker/core/k4;->class:[C

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lfreemarker/core/k4;->v(Lfreemarker/core/b4;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/b4;->m()Lfreemarker/core/b4;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p1, 0x0

    if-nez v0, :cond_3

    .line 7
    invoke-direct {p0}, Lfreemarker/core/k4;->C()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 8
    invoke-direct {p0}, Lfreemarker/core/k4;->y()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    return-object p0

    .line 9
    :cond_5
    iget-object v2, p0, Lfreemarker/core/k4;->class:[C

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v1, v3}, Lfreemarker/core/k4;->B([CII)[C

    move-result-object v2

    iput-object v2, p0, Lfreemarker/core/k4;->class:[C

    if-lez v1, :cond_6

    .line 10
    iget v1, p0, Lfreemarker/core/h4;->for:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lfreemarker/core/h4;->for:I

    .line 11
    iput v2, p0, Lfreemarker/core/h4;->if:I

    :cond_6
    if-lez v0, :cond_7

    .line 12
    iput p1, p0, Lfreemarker/core/h4;->new:I

    :cond_7
    :goto_2
    return-object p0
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/d0;->c2()Ljava/io/Writer;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/core/k4;->class:[C

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write([C)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lfreemarker/core/k4;->class:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/k4;->const:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<#noparse>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</#noparse>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "text "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/k4;->class:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lfreemarker/core/k4;->class:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/k4;->class:[C

    return-void
.end method
