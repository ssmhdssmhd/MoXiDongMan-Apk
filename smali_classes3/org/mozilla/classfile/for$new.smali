.class final Lorg/mozilla/classfile/for$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/classfile/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "new"
.end annotation


# static fields
.field public static final const:Z


# instance fields
.field private break:I

.field private case:I

.field private catch:Z

.field public final synthetic class:Lorg/mozilla/classfile/for;

.field private do:[I

.field private else:[Lorg/mozilla/classfile/goto;

.field private for:[I

.field private goto:[Lorg/mozilla/classfile/goto;

.field private if:I

.field private new:I

.field private this:[B

.field private try:[Lorg/mozilla/classfile/goto;


# direct methods
.method public constructor <init>(Lorg/mozilla/classfile/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    .line 3
    iput-object p1, p0, Lorg/mozilla/classfile/for$new;->for:[I

    iput-object p1, p0, Lorg/mozilla/classfile/for$new;->do:[I

    .line 4
    iput-object p1, p0, Lorg/mozilla/classfile/for$new;->try:[Lorg/mozilla/classfile/goto;

    .line 5
    iput-object p1, p0, Lorg/mozilla/classfile/for$new;->this:[B

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lorg/mozilla/classfile/for$new;->if:I

    .line 7
    iput p1, p0, Lorg/mozilla/classfile/for$new;->new:I

    .line 8
    iput p1, p0, Lorg/mozilla/classfile/for$new;->case:I

    .line 9
    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    .line 10
    iput-boolean p1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    return-void
.end method

.method private abstract()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v0}, Lorg/mozilla/classfile/for;->if(Lorg/mozilla/classfile/for;)[I

    move-result-object v2

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    const/4 v7, 0x0

    aget-object v1, v0, v7

    array-length v3, v2

    new-array v4, v7, [I

    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 3
    invoke-static {v0}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v6

    const/4 v5, 0x0

    .line 4
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/classfile/goto;->this([II[IILorg/mozilla/classfile/try;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/mozilla/classfile/goto;

    .line 5
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    aget-object v2, v2, v7

    aput-object v2, v1, v7

    iput-object v1, p0, Lorg/mozilla/classfile/for$new;->try:[Lorg/mozilla/classfile/goto;

    .line 6
    iput v0, p0, Lorg/mozilla/classfile/for$new;->case:I

    .line 7
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->break()V

    .line 8
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    array-length v1, v0

    if-ge v7, v1, :cond_1

    .line 9
    aget-object v0, v0, v7

    .line 10
    invoke-virtual {v0}, Lorg/mozilla/classfile/goto;->goto()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for$new;->throws(Lorg/mozilla/classfile/goto;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->break()V

    return-void
.end method

.method private break()V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Lorg/mozilla/classfile/for$new;->case:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->try:[Lorg/mozilla/classfile/goto;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/classfile/for$new;->case:I

    aget-object v0, v1, v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/goto;->catch(Z)V

    .line 4
    invoke-virtual {v0}, Lorg/mozilla/classfile/goto;->for()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/for$new;->do:[I

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/classfile/goto;->new()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/for$new;->for:[I

    .line 6
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->do:[I

    array-length v2, v2

    iput v2, p0, Lorg/mozilla/classfile/for$new;->if:I

    .line 7
    array-length v1, v1

    iput v1, p0, Lorg/mozilla/classfile/for$new;->new:I

    .line 8
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for$new;->goto(Lorg/mozilla/classfile/goto;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private case(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->final(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Lorg/mozilla/classfile/this;->goto(I)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad local variable type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at index: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for$new;->finally(I)V

    return-void
.end method

.method private catch(Lorg/mozilla/classfile/goto;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->do:[I

    iget v2, p0, Lorg/mozilla/classfile/for$new;->if:I

    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->for:[I

    iget v4, p0, Lorg/mozilla/classfile/for$new;->new:I

    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v0}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/classfile/goto;->this([II[IILorg/mozilla/classfile/try;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->do(Lorg/mozilla/classfile/goto;)V

    :cond_0
    return-void
.end method

.method private const(I)Lorg/mozilla/classfile/goto;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v0}, Lorg/mozilla/classfile/for;->super(Lorg/mozilla/classfile/for;)[B

    move-result-object v0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, v0, v1}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, v0, v1}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v0

    int-to-short v0, v0

    :goto_0
    add-int/2addr p1, v0

    .line 4
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object p1

    return-object p1
.end method

.method private default()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->for:[I

    iget v1, p0, Lorg/mozilla/classfile/for$new;->new:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/classfile/for$new;->new:I

    aget v0, v0, v1

    return v0
.end method

.method private do(Lorg/mozilla/classfile/goto;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->else()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/goto;->catch(Z)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/goto;->class(Z)V

    .line 4
    iget v0, p0, Lorg/mozilla/classfile/for$new;->case:I

    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->try:[Lorg/mozilla/classfile/goto;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 5
    new-array v2, v2, [Lorg/mozilla/classfile/goto;

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v2, p0, Lorg/mozilla/classfile/for$new;->try:[Lorg/mozilla/classfile/goto;

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->try:[Lorg/mozilla/classfile/goto;

    iget v1, p0, Lorg/mozilla/classfile/for$new;->case:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->case:I

    aput-object p1, v0, v1

    :cond_1
    return-void
.end method

.method private else(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/for$new;->private(II)V

    return-void
.end method

.method private extends()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result v0

    int-to-long v0, v0

    long-to-int v2, v0

    .line 2
    invoke-static {v2}, Lorg/mozilla/classfile/this;->this(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 3
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for$new;->if:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->do:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private finally(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for$new;->new:I

    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->for:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->for:[I

    iget v2, p0, Lorg/mozilla/classfile/for$new;->new:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v0, p0, Lorg/mozilla/classfile/for$new;->for:[I

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->for:[I

    iget v1, p0, Lorg/mozilla/classfile/for$new;->new:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->new:I

    aput p1, v0, v1

    return-void
.end method

.method private for()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2
    invoke-virtual {v0}, Lorg/mozilla/classfile/goto;->case()[I

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 3
    :goto_0
    iget-object v5, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    array-length v6, v5

    if-ge v4, v6, :cond_9

    .line 4
    aget-object v5, v5, v4

    .line 5
    invoke-virtual {v5}, Lorg/mozilla/classfile/goto;->case()[I

    move-result-object v6

    .line 6
    invoke-virtual {v5}, Lorg/mozilla/classfile/goto;->new()[I

    move-result-object v7

    .line 7
    invoke-virtual {v5}, Lorg/mozilla/classfile/goto;->try()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v2

    .line 8
    array-length v3, v7

    if-nez v3, :cond_6

    .line 9
    array-length v3, v0

    array-length v9, v6

    if-le v3, v9, :cond_0

    array-length v3, v6

    goto :goto_1

    :cond_0
    array-length v3, v0

    .line 10
    :goto_1
    array-length v9, v0

    array-length v10, v6

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v3, :cond_2

    .line 11
    aget v11, v0, v10

    aget v12, v6, v10

    if-eq v11, v12, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 12
    :cond_2
    :goto_3
    array-length v3, v6

    if-ne v10, v3, :cond_3

    if-nez v9, :cond_3

    .line 13
    invoke-direct {p0, v8}, Lorg/mozilla/classfile/for$new;->protected(I)V

    goto :goto_4

    .line 14
    :cond_3
    array-length v3, v6

    const/4 v11, 0x3

    if-ne v10, v3, :cond_4

    if-gt v9, v11, :cond_4

    .line 15
    invoke-direct {p0, v9, v8}, Lorg/mozilla/classfile/for$new;->volatile(II)V

    goto :goto_4

    .line 16
    :cond_4
    array-length v0, v0

    if-ne v10, v0, :cond_5

    if-gt v9, v11, :cond_5

    .line 17
    invoke-direct {p0, v6, v9, v8}, Lorg/mozilla/classfile/for$new;->strictfp([III)V

    goto :goto_4

    .line 18
    :cond_5
    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/classfile/for$new;->interface([I[II)V

    goto :goto_4

    .line 19
    :cond_6
    array-length v3, v7

    if-ne v3, v2, :cond_8

    .line 20
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-direct {p0, v7, v8}, Lorg/mozilla/classfile/for$new;->transient([II)V

    goto :goto_4

    .line 22
    :cond_7
    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/classfile/for$new;->interface([I[II)V

    goto :goto_4

    .line 23
    :cond_8
    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/classfile/for$new;->interface([I[II)V

    .line 24
    :goto_4
    invoke-virtual {v5}, Lorg/mozilla/classfile/goto;->try()I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    move-object v0, v6

    goto :goto_0

    :cond_9
    return-void
.end method

.method private goto(Lorg/mozilla/classfile/goto;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->try()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->do()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_6

    .line 2
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v2}, Lorg/mozilla/classfile/for;->super(Lorg/mozilla/classfile/for;)[B

    move-result-object v2

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 3
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for$new;->try(I)I

    move-result v3

    .line 4
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/for$new;->static(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for$new;->const(I)Lorg/mozilla/classfile/goto;

    move-result-object v5

    .line 6
    invoke-direct {p0, v5}, Lorg/mozilla/classfile/for$new;->catch(Lorg/mozilla/classfile/goto;)V

    goto :goto_2

    :cond_0
    const/16 v5, 0xaa

    if-ne v2, v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    xor-int/lit8 v6, v0, -0x1

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    const/4 v6, 0x4

    .line 7
    invoke-direct {p0, v5, v6}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v7

    add-int/2addr v7, v0

    .line 8
    invoke-direct {p0, v7}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v7

    .line 9
    invoke-direct {p0, v7}, Lorg/mozilla/classfile/for$new;->catch(Lorg/mozilla/classfile/goto;)V

    add-int/lit8 v7, v5, 0x4

    .line 10
    invoke-direct {p0, v7, v6}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v7

    add-int/lit8 v8, v5, 0x8

    .line 11
    invoke-direct {p0, v8, v6}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v8

    sub-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/lit8 v5, v5, 0xc

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    mul-int/lit8 v9, v7, 0x4

    add-int/2addr v9, v5

    .line 12
    invoke-direct {p0, v9, v6}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v9

    add-int/2addr v9, v0

    .line 13
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v9

    .line 14
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/for$new;->catch(Lorg/mozilla/classfile/goto;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v5, 0x0

    .line 15
    :goto_3
    iget-object v6, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v6}, Lorg/mozilla/classfile/for;->catch(Lorg/mozilla/classfile/for;)I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 16
    iget-object v6, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v6}, Lorg/mozilla/classfile/for;->const(Lorg/mozilla/classfile/for;)[Lorg/mozilla/classfile/case;

    move-result-object v6

    aget-object v6, v6, v5

    .line 17
    iget-object v7, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v8, v6, Lorg/mozilla/classfile/case;->do:I

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v7

    int-to-short v7, v7

    .line 18
    iget-object v8, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v9, v6, Lorg/mozilla/classfile/case;->if:I

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v8

    int-to-short v8, v8

    if-lt v0, v7, :cond_4

    if-lt v0, v8, :cond_2

    goto :goto_5

    .line 19
    :cond_2
    iget-object v7, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v8, v6, Lorg/mozilla/classfile/case;->for:I

    .line 20
    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v7

    int-to-short v7, v7

    .line 21
    invoke-direct {p0, v7}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v7

    .line 22
    iget-short v6, v6, Lorg/mozilla/classfile/case;->new:S

    if-nez v6, :cond_3

    .line 23
    iget-object v6, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 24
    invoke-static {v6}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v6

    const-string v8, "java/lang/Throwable"

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result v6

    .line 25
    invoke-static {v6}, Lorg/mozilla/classfile/this;->do(I)I

    move-result v6

    goto :goto_4

    .line 26
    :cond_3
    invoke-static {v6}, Lorg/mozilla/classfile/this;->do(I)I

    move-result v6

    .line 27
    :goto_4
    iget-object v9, p0, Lorg/mozilla/classfile/for$new;->do:[I

    iget v10, p0, Lorg/mozilla/classfile/for$new;->if:I

    new-array v11, v4, [I

    aput v6, v11, v1

    const/4 v12, 0x1

    iget-object v6, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 28
    invoke-static {v6}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v13

    move-object v8, v7

    .line 29
    invoke-virtual/range {v8 .. v13}, Lorg/mozilla/classfile/goto;->this([II[IILorg/mozilla/classfile/try;)Z

    .line 30
    invoke-direct {p0, v7}, Lorg/mozilla/classfile/for$new;->do(Lorg/mozilla/classfile/goto;)V

    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 31
    :cond_6
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/for$new;->switch(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 32
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->if()I

    move-result p1

    add-int/2addr p1, v4

    .line 33
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    array-length v1, v0

    if-ge p1, v1, :cond_7

    .line 34
    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->catch(Lorg/mozilla/classfile/goto;)V

    :cond_7
    return-void
.end method

.method private if()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/mozilla/classfile/for$new;->new:I

    return-void
.end method

.method private implements(I)I
    .locals 5

    and-int/lit16 v0, p1, 0xff

    .line 1
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/for$new;->break:I

    int-to-byte v4, v0

    aput-byte v4, v1, v2

    const/16 v2, 0x8

    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    ushr-int/2addr p1, v2

    .line 2
    invoke-static {p1, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    .line 3
    :cond_1
    iget p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    return p1
.end method

.method private import(I)Lorg/mozilla/classfile/goto;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lorg/mozilla/classfile/goto;->try()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/classfile/goto;->do()I

    move-result v2

    if-ge p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private instanceof([I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/for$new;->synchronized([II)I

    move-result p1

    return p1
.end method

.method private interface([I[II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v1, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 2
    invoke-static {p3, v0, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/for$new;->break:I

    .line 3
    array-length v0, p1

    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->this:[B

    invoke-static {v0, v1, p3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p3

    iput p3, p0, Lorg/mozilla/classfile/for$new;->break:I

    .line 4
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->instanceof([I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    .line 5
    array-length p3, p2

    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    invoke-static {p3, v0, p1}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    .line 6
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for$new;->instanceof([I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    return-void
.end method

.method private native()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->else(Lorg/mozilla/classfile/for;)S

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 2
    invoke-static {v2}, Lorg/mozilla/classfile/for;->goto(Lorg/mozilla/classfile/for;)S

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0
.end method

.method private package(J)V
    .locals 5

    const-wide/32 v0, 0xffffff

    and-long v2, p1, v0

    long-to-int v3, v2

    .line 1
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/for$new;->finally(I)V

    const/16 v2, 0x20

    ushr-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    and-long/2addr p1, v0

    long-to-int p2, p1

    .line 2
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for$new;->finally(I)V

    :cond_0
    return-void
.end method

.method private private(II)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for$new;->if:I

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 2
    new-array v2, v1, [I

    .line 3
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->do:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v2, p0, Lorg/mozilla/classfile/for$new;->do:[I

    .line 5
    iput v1, p0, Lorg/mozilla/classfile/for$new;->if:I

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->do:[I

    aput p2, v0, p1

    return-void
.end method

.method private protected(I)V
    .locals 4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v1, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v1, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    const/4 v3, -0x5

    aput-byte v3, v0, v1

    .line 3
    invoke-static {p1, v0, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    :goto_0
    return-void
.end method

.method private public(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->do:[I

    iget v1, p0, Lorg/mozilla/classfile/for$new;->if:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/for$new;->return(II[II)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->for:[I

    iget v1, p0, Lorg/mozilla/classfile/for$new;->new:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/for$new;->return(II[II)V

    return-void
.end method

.method private return(II[II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    .line 1
    aget v1, p3, v0

    if-ne v1, p1, :cond_0

    .line 2
    aput p2, p3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private strictfp([III)V
    .locals 4

    .line 1
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit16 p2, p2, 0xfb

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    .line 3
    invoke-static {p3, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    iput p2, p0, Lorg/mozilla/classfile/for$new;->break:I

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/for$new;->synchronized([II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    return-void
.end method

.method private super(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    return p1
.end method

.method private switch(I)Z
    .locals 1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xaa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synchronized([II)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 2
    aget v0, p1, p2

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for$new;->implements(I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    return p1
.end method

.method private this(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/classfile/for$new;->private(II)V

    return-void
.end method

.method private throw(II)I
    .locals 4

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 1
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v2}, Lorg/mozilla/classfile/for;->super(Lorg/mozilla/classfile/for;)[B

    move-result-object v2

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad operand size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private throws(Lorg/mozilla/classfile/goto;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 1
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 2
    invoke-static {v3}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v3

    const-string v4, "java/lang/Throwable"

    .line 3
    invoke-static {v4, v3}, Lorg/mozilla/classfile/this;->if(Ljava/lang/String;Lorg/mozilla/classfile/try;)I

    move-result v3

    aput v3, v6, v0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v4}, Lorg/mozilla/classfile/for;->catch(Lorg/mozilla/classfile/for;)I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5
    iget-object v4, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v4}, Lorg/mozilla/classfile/for;->const(Lorg/mozilla/classfile/for;)[Lorg/mozilla/classfile/case;

    move-result-object v4

    aget-object v4, v4, v3

    .line 6
    iget-object v5, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v7, v4, Lorg/mozilla/classfile/case;->do:I

    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v5

    .line 7
    iget-object v7, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v8, v4, Lorg/mozilla/classfile/case;->if:I

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v7

    .line 8
    iget-object v8, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v4, v4, Lorg/mozilla/classfile/case;->for:I

    invoke-virtual {v8, v4}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v4

    .line 9
    invoke-direct {p0, v4}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->try()I

    move-result v8

    if-le v8, v5, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->try()I

    move-result v8

    if-lt v8, v7, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->try()I

    move-result v7

    if-le v5, v7, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->do()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 12
    invoke-virtual {v4}, Lorg/mozilla/classfile/goto;->goto()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    :cond_1
    invoke-virtual {v4}, Lorg/mozilla/classfile/goto;->for()[I

    move-result-object v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v4, v1

    const/4 v1, 0x0

    .line 14
    :goto_2
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->catch(Lorg/mozilla/classfile/for;)I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 15
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->const(Lorg/mozilla/classfile/for;)[Lorg/mozilla/classfile/case;

    move-result-object v3

    aget-object v3, v3, v1

    .line 16
    iget-object v5, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v3, v3, Lorg/mozilla/classfile/case;->do:I

    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v3

    .line 17
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->try()I

    move-result v5

    if-ne v3, v5, :cond_5

    add-int/lit8 v3, v1, 0x1

    .line 18
    :goto_3
    iget-object v5, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v5}, Lorg/mozilla/classfile/for;->catch(Lorg/mozilla/classfile/for;)I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 19
    iget-object v5, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v5}, Lorg/mozilla/classfile/for;->const(Lorg/mozilla/classfile/for;)[Lorg/mozilla/classfile/case;

    move-result-object v5

    add-int/lit8 v7, v3, -0x1

    iget-object v8, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v8}, Lorg/mozilla/classfile/for;->const(Lorg/mozilla/classfile/for;)[Lorg/mozilla/classfile/case;

    move-result-object v8

    aget-object v8, v8, v3

    aput-object v8, v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 20
    :cond_4
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->class(Lorg/mozilla/classfile/for;)I

    add-int/lit8 v1, v1, -0x1

    :cond_5
    add-int/2addr v1, v2

    goto :goto_2

    .line 21
    :cond_6
    array-length v5, v4

    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 22
    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v8

    const/4 v7, 0x1

    move-object v3, p1

    .line 23
    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/classfile/goto;->this([II[IILorg/mozilla/classfile/try;)Z

    .line 24
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->do()I

    move-result v1

    sub-int/2addr v1, v2

    .line 25
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v2}, Lorg/mozilla/classfile/for;->super(Lorg/mozilla/classfile/for;)[B

    move-result-object v2

    const/16 v3, -0x41

    aput-byte v3, v2, v1

    .line 26
    invoke-virtual {p1}, Lorg/mozilla/classfile/goto;->try()I

    move-result p1

    :goto_4
    if-ge p1, v1, :cond_7

    .line 27
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v2}, Lorg/mozilla/classfile/for;->super(Lorg/mozilla/classfile/for;)[B

    move-result-object v2

    aput-byte v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method private transient([II)V
    .locals 4

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v1, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 p2, p2, 0x40

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v1, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    const/16 v3, -0x9

    aput-byte v3, v0, v1

    .line 3
    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    iput p2, p0, Lorg/mozilla/classfile/for$new;->break:I

    :goto_0
    const/4 p2, 0x0

    .line 4
    aget p1, p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->implements(I)I

    return-void
.end method

.method private try(I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v0}, Lorg/mozilla/classfile/for;->super(Lorg/mozilla/classfile/for;)[B

    move-result-object v0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const-string v1, "V"

    const/16 v2, 0x29

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    iput-boolean v10, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    goto/16 :goto_d

    .line 4
    :pswitch_2
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    add-int/2addr p1, v10

    .line 5
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/classfile/this;->do(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 6
    :pswitch_3
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result p1

    .line 7
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->if()V

    .line 8
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    :pswitch_4
    add-int/2addr p1, v10

    .line 9
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    .line 10
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/try;->throw(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 13
    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    .line 14
    invoke-static {p1, v1}, Lorg/mozilla/classfile/this;->if(Ljava/lang/String;Lorg/mozilla/classfile/try;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 15
    :pswitch_5
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 16
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 17
    invoke-static {v1}, Lorg/mozilla/classfile/for;->super(Lorg/mozilla/classfile/for;)[B

    move-result-object v1

    add-int/2addr p1, v10

    aget-byte p1, v1, p1

    invoke-static {p1}, Lorg/mozilla/classfile/for;->while(I)C

    move-result p1

    .line 18
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p1

    int-to-short p1, p1

    .line 19
    invoke-static {p1}, Lorg/mozilla/classfile/this;->do(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 20
    :pswitch_6
    invoke-static {p1}, Lorg/mozilla/classfile/this;->for(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    :pswitch_7
    add-int/2addr p1, v10

    .line 21
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    .line 22
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/try;->throw(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lorg/mozilla/classfile/for;->for(Ljava/lang/String;)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x10

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 24
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v10

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lorg/mozilla/classfile/for;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 29
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/this;->new(Ljava/lang/String;Lorg/mozilla/classfile/try;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    :pswitch_8
    add-int/2addr p1, v10

    .line 30
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    .line 31
    iget-object v4, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 32
    invoke-static {v4}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/mozilla/classfile/try;->throw(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/classfile/else;

    .line 33
    invoke-virtual {p1}, Lorg/mozilla/classfile/else;->for()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {p1}, Lorg/mozilla/classfile/else;->if()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {v4}, Lorg/mozilla/classfile/for;->for(Ljava/lang/String;)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 36
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0xb8

    if-eq v0, v5, :cond_4

    .line 37
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result v5

    .line 38
    invoke-static {v5}, Lorg/mozilla/classfile/this;->goto(I)I

    move-result v6

    .line 39
    invoke-static {v7}, Lorg/mozilla/classfile/this;->for(I)I

    move-result v8

    if-eq v6, v8, :cond_2

    if-ne v6, v3, :cond_4

    :cond_2
    const-string v3, "<init>"

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 42
    invoke-static {p1}, Lorg/mozilla/classfile/for;->new(Lorg/mozilla/classfile/for;)S

    move-result p1

    invoke-static {p1}, Lorg/mozilla/classfile/this;->do(I)I

    move-result p1

    .line 43
    invoke-direct {p0, v5, p1}, Lorg/mozilla/classfile/for$new;->public(II)V

    goto :goto_2

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_4
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/2addr p1, v10

    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lorg/mozilla/classfile/for;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 49
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/this;->new(Ljava/lang/String;Lorg/mozilla/classfile/try;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 50
    :pswitch_9
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    :pswitch_a
    add-int/2addr p1, v10

    .line 51
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    .line 52
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 53
    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/try;->throw(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/classfile/else;

    .line 54
    invoke-virtual {p1}, Lorg/mozilla/classfile/else;->for()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/classfile/for;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/classfile/this;->new(Ljava/lang/String;Lorg/mozilla/classfile/try;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 56
    :pswitch_b
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->if()V

    goto/16 :goto_d

    :pswitch_c
    add-int/lit8 v1, p1, 0x1

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v6

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x4

    .line 57
    invoke-direct {p0, v2, v8}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v2

    add-int/lit8 v3, v1, 0x8

    .line 58
    invoke-direct {p0, v3, v8}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    sub-int/2addr v3, p1

    .line 59
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    goto/16 :goto_e

    .line 60
    :pswitch_d
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result p1

    .line 61
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result v1

    .line 62
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    .line 63
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 64
    :pswitch_e
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->extends()J

    move-result-wide v1

    .line 65
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->extends()J

    move-result-wide v3

    .line 66
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/for$new;->package(J)V

    .line 67
    invoke-direct {p0, v3, v4}, Lorg/mozilla/classfile/for$new;->package(J)V

    .line 68
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/for$new;->package(J)V

    goto/16 :goto_d

    .line 69
    :pswitch_f
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->extends()J

    move-result-wide v1

    .line 70
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result p1

    .line 71
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/for$new;->package(J)V

    .line 72
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    .line 73
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/for$new;->package(J)V

    goto/16 :goto_d

    .line 74
    :pswitch_10
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->extends()J

    move-result-wide v1

    .line 75
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/for$new;->package(J)V

    .line 76
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/for$new;->package(J)V

    goto/16 :goto_d

    .line 77
    :pswitch_11
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result p1

    .line 78
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->extends()J

    move-result-wide v1

    .line 79
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    .line 80
    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/for$new;->package(J)V

    .line 81
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 82
    :pswitch_12
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result p1

    .line 83
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result v1

    .line 84
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    .line 85
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    .line 86
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 87
    :pswitch_13
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result p1

    .line 88
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    .line 89
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 90
    :pswitch_14
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->extends()J

    goto/16 :goto_d

    .line 91
    :pswitch_15
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 92
    :pswitch_16
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 93
    :pswitch_17
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    goto/16 :goto_d

    :pswitch_18
    add-int/lit8 p1, v0, -0x4b

    .line 94
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->else(I)V

    goto/16 :goto_d

    :pswitch_19
    add-int/lit8 p1, v0, -0x47

    .line 95
    invoke-direct {p0, p1, v6}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    :pswitch_1a
    add-int/lit8 p1, v0, -0x43

    .line 96
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    :pswitch_1b
    add-int/lit8 p1, v0, -0x3f

    .line 97
    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    :pswitch_1c
    add-int/lit8 p1, v0, -0x3b

    .line 98
    invoke-direct {p0, p1, v10}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    :pswitch_1d
    add-int/2addr p1, v10

    .line 99
    iget-boolean v1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x1

    :goto_3
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->else(I)V

    goto/16 :goto_d

    :pswitch_1e
    add-int/2addr p1, v10

    .line 100
    iget-boolean v1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v9, 0x1

    :goto_4
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    invoke-direct {p0, p1, v6}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    :pswitch_1f
    add-int/2addr p1, v10

    .line 101
    iget-boolean v1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    if-eqz v1, :cond_7

    const/4 v10, 0x2

    :cond_7
    invoke-direct {p0, p1, v10}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    :pswitch_20
    add-int/2addr p1, v10

    .line 102
    iget-boolean v1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v9, 0x1

    :goto_5
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    invoke-direct {p0, p1, v8}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    :pswitch_21
    add-int/2addr p1, v10

    .line 103
    iget-boolean v1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v9, 0x1

    :goto_6
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    invoke-direct {p0, p1, v10}, Lorg/mozilla/classfile/for$new;->this(II)V

    goto/16 :goto_d

    .line 104
    :pswitch_22
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 105
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    move-result p1

    ushr-int/2addr p1, v5

    .line 106
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 107
    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/try;->throw(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_a

    .line 109
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lorg/mozilla/classfile/for;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p1

    .line 112
    invoke-static {p1}, Lorg/mozilla/classfile/this;->do(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto/16 :goto_d

    .line 113
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad array type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :pswitch_23
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 115
    :pswitch_24
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    goto/16 :goto_9

    .line 116
    :pswitch_25
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 117
    :pswitch_26
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    goto/16 :goto_a

    .line 118
    :pswitch_27
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 119
    :pswitch_28
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    goto/16 :goto_b

    .line 120
    :pswitch_29
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    .line 121
    :pswitch_2a
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->default()I

    goto/16 :goto_c

    :pswitch_2b
    add-int/lit8 p1, v0, -0x2a

    .line 122
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->case(I)V

    goto/16 :goto_d

    :pswitch_2c
    add-int/2addr p1, v10

    .line 123
    iget-boolean v1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v9, 0x1

    :goto_7
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->case(I)V

    goto/16 :goto_d

    :pswitch_2d
    const/16 v1, 0x12

    if-ne v0, v1, :cond_c

    add-int/2addr p1, v10

    .line 124
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->super(I)I

    move-result p1

    goto :goto_8

    :cond_c
    add-int/2addr p1, v10

    .line 125
    invoke-direct {p0, p1, v9}, Lorg/mozilla/classfile/for$new;->throw(II)I

    move-result p1

    .line 126
    :goto_8
    iget-object v1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/try;->while(I)B

    move-result p1

    if-eq p1, v6, :cond_11

    if-eq p1, v8, :cond_10

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_e

    if-ne p1, v5, :cond_d

    .line 127
    iget-object p1, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    .line 128
    invoke-static {p1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object p1

    const-string v1, "java/lang/String"

    .line 129
    invoke-static {v1, p1}, Lorg/mozilla/classfile/this;->if(Ljava/lang/String;Lorg/mozilla/classfile/try;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 130
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad const type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_e
    invoke-direct {p0, v6}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 132
    :cond_f
    invoke-direct {p0, v8}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 133
    :cond_10
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 134
    :cond_11
    invoke-direct {p0, v10}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 135
    :goto_9
    :pswitch_2e
    invoke-direct {p0, v6}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 136
    :goto_a
    :pswitch_2f
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 137
    :goto_b
    :pswitch_30
    invoke-direct {p0, v8}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 138
    :goto_c
    :pswitch_31
    invoke-direct {p0, v10}, Lorg/mozilla/classfile/for$new;->finally(I)V

    goto :goto_d

    .line 139
    :pswitch_32
    invoke-direct {p0, v4}, Lorg/mozilla/classfile/for$new;->finally(I)V

    :cond_12
    :goto_d
    :pswitch_33
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_13

    .line 140
    iget-boolean p1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    invoke-static {v0, p1}, Lorg/mozilla/classfile/for;->case(IZ)I

    move-result v3

    .line 141
    :cond_13
    iget-boolean p1, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    if-eqz p1, :cond_14

    const/16 p1, 0xc4

    if-eq v0, p1, :cond_14

    .line 142
    iput-boolean v7, p0, Lorg/mozilla/classfile/for$new;->catch:Z

    :cond_14
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_31
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2c
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_22
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_27
        :pswitch_33
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_2a
        :pswitch_26
        :pswitch_24
        :pswitch_2a
        :pswitch_28
        :pswitch_24
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_17
        :pswitch_9
        :pswitch_16
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2a
        :pswitch_3
        :pswitch_2
        :pswitch_2a
        :pswitch_17
        :pswitch_17
        :pswitch_1
        :pswitch_0
        :pswitch_17
        :pswitch_17
        :pswitch_33
    .end packed-switch
.end method

.method private volatile(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v1, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for$new;->break:I

    rsub-int p1, p1, 0xfb

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 2
    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p1

    iput p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    return-void
.end method

.method private while()[Lorg/mozilla/classfile/goto;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    array-length v0, v0

    new-array v0, v0, [Lorg/mozilla/classfile/goto;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->catch(Lorg/mozilla/classfile/for;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->const(Lorg/mozilla/classfile/for;)[Lorg/mozilla/classfile/case;

    move-result-object v3

    aget-object v3, v3, v2

    .line 4
    iget-object v4, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v5, v3, Lorg/mozilla/classfile/case;->do:I

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v4

    int-to-short v4, v4

    .line 5
    iget-object v5, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    iget v3, v3, Lorg/mozilla/classfile/case;->for:I

    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v3

    int-to-short v3, v3

    .line 6
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v3

    .line 7
    invoke-direct {p0, v4}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Lorg/mozilla/classfile/goto;->if()I

    move-result v3

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v2}, Lorg/mozilla/classfile/for;->final(Lorg/mozilla/classfile/for;)Lorg/mozilla/javascript/UintMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/UintMap;->getKeys()[I

    move-result-object v2

    .line 10
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 11
    aget v3, v2, v1

    .line 12
    iget-object v4, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v4}, Lorg/mozilla/classfile/for;->final(Lorg/mozilla/classfile/for;)Lorg/mozilla/javascript/UintMap;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v4

    .line 13
    invoke-direct {p0, v4}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v4

    .line 14
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/for$new;->import(I)Lorg/mozilla/classfile/goto;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lorg/mozilla/classfile/goto;->if()I

    move-result v3

    aput-object v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public class()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v0}, Lorg/mozilla/classfile/for;->do(Lorg/mozilla/classfile/for;)I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/classfile/goto;

    iput-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v0}, Lorg/mozilla/classfile/for;->if(Lorg/mozilla/classfile/for;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v2}, Lorg/mozilla/classfile/for;->do(Lorg/mozilla/classfile/for;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v2}, Lorg/mozilla/classfile/for;->this(Lorg/mozilla/classfile/for;)[I

    move-result-object v2

    aget v2, v2, v1

    .line 5
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->do(Lorg/mozilla/classfile/for;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 6
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->break(Lorg/mozilla/classfile/for;)I

    move-result v3

    goto :goto_1

    .line 7
    :cond_0
    iget-object v3, p0, Lorg/mozilla/classfile/for$new;->class:Lorg/mozilla/classfile/for;

    invoke-static {v3}, Lorg/mozilla/classfile/for;->this(Lorg/mozilla/classfile/for;)[I

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 8
    :goto_1
    iget-object v4, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    new-instance v5, Lorg/mozilla/classfile/goto;

    invoke-direct {v5, v1, v2, v3, v0}, Lorg/mozilla/classfile/goto;-><init>(III[I)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->while()[Lorg/mozilla/classfile/goto;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/classfile/for$new;->goto:[Lorg/mozilla/classfile/goto;

    .line 10
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->abstract()V

    return-void
.end method

.method public continue([BI)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result p2

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->else:[Lorg/mozilla/classfile/goto;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result p2

    .line 3
    iget-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    iget v1, p0, Lorg/mozilla/classfile/for$new;->break:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/2addr p2, p1

    return p2
.end method

.method public new()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->native()I

    move-result v0

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/for$new;->this:[B

    .line 3
    invoke-direct {p0}, Lorg/mozilla/classfile/for$new;->for()V

    .line 4
    iget v0, p0, Lorg/mozilla/classfile/for$new;->break:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
